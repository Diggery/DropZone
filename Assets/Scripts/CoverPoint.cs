using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CoverPoint : MonoBehaviour {


	MapControl mapControl;
	public int[] cover;
	public bool highCover = false;

	Vector2 mapSize;
	float gridSize;

	List<Vector2> visibleCells = new List<Vector2>();
	List<Vector2> visibleCellsFromNorth = new List<Vector2>();
	List<Vector2> visibleCellsFromEast = new List<Vector2>();
	List<Vector2> visibleCellsFromSouth = new List<Vector2>();
	List<Vector2> visibleCellsFromWest = new List<Vector2>();

	bool isRightSideClear;
	bool isLeftSideClear;
	
	bool isOccupied;
	bool isClaimed;
	
	public void SetCover(int[] newCover, Vector3 worldPos, float newGridSize, Vector2 newMapSize, MapControl newMapControl) {
		cover = newCover;
		gridSize = newGridSize;
		mapSize = newMapSize;
		mapControl = newMapControl;
		
		if (cover[0] == 0) {
			DestroyImmediate(transform.Find("NorthLow").gameObject);
			DestroyImmediate(transform.Find("NorthHigh").gameObject);
		}
		
		if (cover[0] == 1) {
			DestroyImmediate(transform.Find("NorthHigh").gameObject);
		}
		
		if (cover[0] == 2) {
			DestroyImmediate(transform.Find("NorthLow").gameObject);
			highCover = true;
		}	
		
		if (cover[1] == 0) {
			DestroyImmediate(transform.Find("EastLow").gameObject);
			DestroyImmediate(transform.Find("EastHigh").gameObject);
		}
		if (cover[1] == 1) {
			DestroyImmediate(transform.Find("EastHigh").gameObject);
		}
		
		if (cover[1] == 2) {
			DestroyImmediate(transform.Find("EastLow").gameObject);
			highCover = true;
		}	
		
		if (cover[2] == 0) {
			DestroyImmediate(transform.Find("SouthLow").gameObject);
			DestroyImmediate(transform.Find("SouthHigh").gameObject);
		}
		if (cover[2] == 1) {
			DestroyImmediate(transform.Find("SouthHigh").gameObject);
		}
		
		if (cover[2] == 2) {
			DestroyImmediate(transform.Find("SouthLow").gameObject);
			highCover = true;
		}	
		
		if (cover[3] == 0) {
			DestroyImmediate(transform.Find("WestLow").gameObject);
			DestroyImmediate(transform.Find("WestHigh").gameObject);
		}
		
		if (cover[3] == 1) {
			DestroyImmediate(transform.Find("WestHigh").gameObject);
		}
		
		if (cover[3] == 2) {
			DestroyImmediate(transform.Find("WestLow").gameObject);
			highCover = true;
		}	

        MeshFilter[] meshFilters = GetComponentsInChildren<MeshFilter>();
        CombineInstance[] combine = new CombineInstance[meshFilters.Length];
        for (int i = 0; i < meshFilters.Length; i++) {
            combine[i].mesh = meshFilters[i].sharedMesh;
            combine[i].transform = meshFilters[i].transform.localToWorldMatrix;
        }
        transform.GetComponent<MeshFilter>().mesh = new Mesh();
        transform.GetComponent<MeshFilter>().mesh.CombineMeshes(combine);
		transform.position = worldPos;
		transform.localScale = new Vector3(gridSize, gridSize, gridSize);

		foreach(Transform child in transform) Destroy(child.gameObject);
	}

	public int[] GetCover() {
		return cover;
	}
	
	public int GetEdgeDirection() {
		int direction = 0;

		//set for low cover
		if (cover[0] > 0) direction = 0;
		if (cover[1] > 0) direction = 1;
		if (cover[2] > 0) direction = 2;
		if (cover[3] > 0) direction = 3;

		//override for high cover
		if (cover[0] > 1) direction = 0;
		if (cover[1] > 1) direction = 1;
		if (cover[2] > 1) direction = 2;
		if (cover[3] > 1) direction = 3;
		
		return direction;
	}	

	public Quaternion GetCoverHeading() {
		return Quaternion.AngleAxis (GetEdgeDirection () * 90, Vector3.up);
	}
	

	public void SetFade(float newFade) {
		if (newFade <= 0) {
			renderer.enabled = false;
		} else {
			renderer.enabled = true;
		}
		
		renderer.material.SetFloat("_Fade", newFade);
	}

	Vector2 MapPosToCoor(Vector3 mapPos) {
		Vector2 coor = new Vector2(Mathf.FloorToInt(mapPos.x/gridSize), Mathf.FloorToInt(mapPos.z/gridSize));
		return coor;
	}
	
	Vector3 CoorToMapPos(Vector2 coor) {
		Vector3 mapPos = new Vector3(coor.x * gridSize, transform.position.y, coor.y * gridSize);
		return mapPos;
	}
	

	public bool IsTargetVisible(Transform target) {
		return IsPositionVisible(target.position);
	}
	
	public bool IsTargetVisibleFromCover(Transform target) {
	
		if (IsCorner()) {
			int direction = GetEdgeDirection();
			if (direction == 0 || direction == 2 ) {
				if (visibleCellsFromEast.Contains(MapPosToCoor(target.transform.position)) ||
				    visibleCellsFromWest.Contains(MapPosToCoor(target.transform.position))) {
				    return true;
			 	}
			}
			if (direction == 1 || direction == 3) {
				if (visibleCellsFromNorth.Contains(MapPosToCoor(target.transform.position)) || visibleCellsFromSouth.Contains(MapPosToCoor(target.transform.position))) {
					return true;
				}
			}	
		}
		return false;
	}
	
	public bool IsPositionVisible(Vector3 mapPos) {
		return visibleCells.Contains(MapPosToCoor(mapPos));
	}

	public void SetVisibleCells() {

		//build list of visible cells from center
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y; y++) {

				if (Vector3.Distance(transform.position, CoorToMapPos(new Vector2(x,y))) < mapControl.localCheckDistance) {
					if (CheckLOS(transform.position, new Vector2(x, y))) visibleCells.Add(new Vector2(x,y));

					Vector3 northPos = transform.position + (Vector3.forward * gridSize);
					if (cover[0] == 0 && CheckLOS(northPos, new Vector2(x, y))) {
						visibleCellsFromNorth.Add(new Vector2(x,y));
					}

					Vector3 eastPos = transform.position + (Vector3.right * gridSize);
					if (cover[1] == 0 && CheckLOS(eastPos, new Vector2(x, y))) {
						visibleCellsFromEast.Add(new Vector2(x,y));
					} 

					Vector3 southPos = transform.position + (Vector3.forward * -gridSize);
					if (cover[2] == 0 && CheckLOS(southPos, new Vector2(x, y))) {
						visibleCellsFromSouth.Add(new Vector2(x,y));
					}

					Vector3 westPos = transform.position + (Vector3.right * -gridSize);
					if (cover[3] == 0 && CheckLOS(westPos, new Vector2(x, y))) {
						visibleCellsFromWest.Add(new Vector2(x,y));
					}
				}
			}
		}
	}

	bool CheckLOS(Vector3 start, Vector2 coor) {
		Vector3 origin = new Vector3(start.x, 0.75f, start.z);
		Vector3 destination = new Vector3((coor.x + 0.5f) * gridSize, 0.75f, (coor.y + 0.5f) * gridSize);
		
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		return !Physics.Linecast(origin, destination, terrainMask);
	}

	public void MarkCells(List<Vector2> cells) {
		if (cells.Count < 1) print ("Cells list is empty");
		foreach (Vector2 targetCell in cells) {
			GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
			marker.transform.position = new Vector3((targetCell.x + 0.5f) * gridSize, 1.0f, (targetCell.y + 0.5f) * gridSize);
			marker.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
			BoxCollider coll = marker.GetComponent<BoxCollider>();
			DestroyImmediate(coll);
		}
		return;
	}

	public void SetCornerFlags() {


		int edgeDirection = GetEdgeDirection();	

		Vector3 rightStartPos = Vector3.zero;
		Vector3 rightEndPos = Vector3.zero;
		Vector3 leftStartPos = Vector3.zero;
		Vector3 leftEndPos = Vector3.zero;


		if (edgeDirection == 0) {
			rightStartPos = transform.position + (Vector3.right * gridSize);
			rightEndPos = rightStartPos + (Vector3.forward * gridSize);

			leftStartPos = transform.position + (Vector3.right * -gridSize);
			leftEndPos = leftStartPos + (Vector3.forward * gridSize);
		}

		if (edgeDirection == 1) {
			rightStartPos = transform.position + (Vector3.forward * -gridSize);
			rightEndPos = rightStartPos + (Vector3.right * gridSize);
			
			leftStartPos = transform.position + (Vector3.forward * gridSize);
			leftEndPos = leftStartPos + (Vector3.right * gridSize);
		}

		if (edgeDirection == 2) {
			rightStartPos = transform.position + (Vector3.right * -gridSize);
			rightEndPos = rightStartPos + (Vector3.forward * -gridSize);
			
			leftStartPos = transform.position + (Vector3.right * gridSize);
			leftEndPos = leftStartPos + (Vector3.forward * -gridSize);
		}

		if (edgeDirection == 3) {
			rightStartPos = transform.position + (Vector3.forward * gridSize);
			rightEndPos = rightStartPos + (Vector3.right * -gridSize);
			
			leftStartPos = transform.position + (Vector3.forward * -gridSize);
			leftEndPos = leftStartPos + (Vector3.right * -gridSize);
		}
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

		isRightSideClear = !Physics.Linecast (rightStartPos, rightEndPos, terrainMask);
		isLeftSideClear = !Physics.Linecast (leftStartPos, leftEndPos, terrainMask);


	}

	public bool IsRightSideClear() {

		return isRightSideClear;
	}

	public bool IsLeftSideClear() {
		return isLeftSideClear;
	}

	public bool IsCorner() {
		return IsRightSideClear() || IsLeftSideClear();
	}
	
	public void Occupy() {
		isOccupied = true;
	}
	
	public void Leave() {
		isOccupied = false;
	}
	
	public bool IsOccupied() {
		return isOccupied;
	}	

	public int GetCoverRating(GameObject[] targets) {
		int score = 0;

		foreach (GameObject target in targets) {
			//deduct points for enemies that can see this point
			if (IsTargetVisible(target.transform)) 
				score -= 1;
			
			// add points if you can hit a target from behind cover
			if (IsTargetVisibleFromCover(target.transform))
				score += 2;
				
			//remove points if its too close to a target
			float closeDistance = gridSize * 2;
			if ((target.transform.position - transform.position).sqrMagnitude < (closeDistance * closeDistance)) {
				score -= 3;
			}
			
		}


		return score;
	}

}
