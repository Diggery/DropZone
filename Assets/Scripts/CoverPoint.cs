using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CoverPoint : MonoBehaviour {


	MapControl mapControl;
	public int[] cover;
	public bool highCover = false;

	float gridSize;

	List<Vector3> firingPositions = new List<Vector3>();
	
	public List<Vector2> visibleCells = new List<Vector2>();
	public List<Vector2> visibleCellsFromNorth = new List<Vector2>();
	public List<Vector2> visibleCellsFromEast = new List<Vector2>();
	public List<Vector2> visibleCellsFromSouth = new List<Vector2>();
	public List<Vector2> visibleCellsFromWest = new List<Vector2>();

	bool isRightSideClear;
	bool isLeftSideClear;

	
	public void SetCover(int[] newCover, Vector3 worldPos, float newGridSize, Vector2 newMapSize, MapControl newMapControl) {
		cover = newCover;
		gridSize = newGridSize;
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
		
		AddFiringPosition(transform.position);
		
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
	
	void AddFiringPosition(Vector3 newPosition) {
		firingPositions.Add(newPosition);
	}
	
	public Vector3[] GetFiringPositions() {	
		return firingPositions.ToArray();
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

		if (!Physics.Linecast (rightStartPos, rightEndPos, terrainMask)) {
			isRightSideClear = true;
			AddFiringPosition(rightStartPos);
		}
		if (!Physics.Linecast (leftStartPos, leftEndPos, terrainMask)) {
			isLeftSideClear = true;
			AddFiringPosition(leftStartPos);
		}
	}

	public bool IsRightSideClear() { return isRightSideClear; }

	public bool IsLeftSideClear() { return isLeftSideClear; }

	public bool IsCorner() { return IsRightSideClear() || IsLeftSideClear(); }

	public int GetCoverRating(GameObject[] targets) {
		int score = 0;

		foreach (GameObject target in targets) {
			//deduct points for enemies that can see this point
			if (mapControl.IsPositionVisible(target.transform.position, transform.position)) 
				score -= 1;
			
			// add points if you can hit a target from behind cover
			if (IsCorner()) {
				for(int i = 1; i < firingPositions.Count; i++) 
					if (mapControl.IsPositionVisible(target.transform.position, firingPositions[i])) 
						score += 2;
			} 

			//remove points if its too close to a target
			float closeDistance = gridSize * 2;
			if ((target.transform.position - transform.position).sqrMagnitude < (closeDistance * closeDistance)) {
				score -= 3;
			}
			
		}
		return score;
	}

}
