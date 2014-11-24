using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class MapControl : MonoBehaviour {
	
	//GameControl gameControl;
	public Vector2 mapSize;
	public float gridSize = 2.0f;
	public float localCheckDistance;
	public float showCoverRange;
	
	public GameObject coverPointPrefab;
	Transform mapSelector;

	List<CoverPoint> coverPoints = new List<CoverPoint>();



	void Start () {
		//gameControl = GetComponent<GameControl>();
		
		Vector2 MapStartPosition = new Vector2(-1, -1);
		Vector2 MapEndPosition = new Vector2(mapSize.x + 1, mapSize.y + 1);
			
		Pathfinder.Instance.SetUp(MapStartPosition, MapEndPosition);
		
		//create all the cover points
		AddCoverPoints();

		//now that they are created, set up any data on them
		foreach (CoverPoint cover in coverPoints) {
			cover.SetVisibleCells();
			cover.SetCornerFlags(); 
		}

		localCheckDistance *= localCheckDistance;
		showCoverRange *= showCoverRange;
	}
	
	public void SetMapSelector (Transform _mapSelector) {
		mapSelector = _mapSelector;
	
	}

	public float GetGridSize() {
		return gridSize;
	}
	
	public Vector2 GetMapSize() {
		return mapSize;
	}

	public int[] GetCover(Vector3 mapPoint) {
		
		int north = 0, east = 0, south = 0, west = 0;
		
		mapPoint.y += (0.25f * gridSize);
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		RaycastHit hit;

		if (Physics.Raycast(mapPoint, Vector3.forward, out hit, 1.0f * gridSize,  terrainMask)) {
			if (hit.transform.tag == "LowWall") north = 1;
			if (hit.transform.tag == "Wall") north = 2;
		}

		if (Physics.Raycast(mapPoint, Vector3.right, out hit, 1.0f * gridSize,  terrainMask)) {
			if (hit.transform.tag == "LowWall") east = 1;
			if (hit.transform.tag == "Wall") east = 2;
		}

		if (Physics.Raycast(mapPoint, Vector3.back, out hit, 1.0f * gridSize,  terrainMask)) {
			if (hit.transform.tag == "LowWall") south = 1;
			if (hit.transform.tag == "Wall") south = 2;
		}

		if (Physics.Raycast(mapPoint, Vector3.left, out hit, 1.0f * gridSize,  terrainMask)) {
			if (hit.transform.tag == "LowWall") west = 1;
			if (hit.transform.tag == "Wall") west = 2;
		}
		
		int[] cover = new int[4];
		
		cover[0] = north;
		cover[1] = east;
		cover[2] = south;
		cover[3] = west;
		
		return cover;
	}

	public int GetCoverForTarget(Transform attacker, Transform target) {
		CoverPoint targetCover = GetCoverPoint(target.position);
		if (!targetCover) return 0;
		
		int[] cover = targetCover.GetCover();
		
		float xOffset = target.position.x - attacker.position.x;
		float zOffset =  target.position.z - attacker.position.z;
		
		if (Mathf.Abs(zOffset) > Mathf.Abs(xOffset)) {
			if (zOffset > 0) { //north
				return cover[0];
			} else { //south
				return cover[2];
			}
		} else {
			if (xOffset < 0) { //east
				return cover[1];
			} else { //west
				return cover[3];
			}
		}
	}
	
	public float GetHeadingFromCover(int[] cover) {
		
		
		//set for low cover
		if (cover[0] > 0) return 180.0f;
		if (cover[1] > 0) return 270.0f;
		if (cover[2] > 0) return 0.0f;
		if (cover[3] > 0) return 90.0f;
		
		//override if there is highcover
		if (cover[0] > 1) return 180.0f;
		if (cover[1] > 1) return 270.0f;
		if (cover[2] > 1) return 0.0f;
		if (cover[3] > 1) return 90.0f;	
		
		return 0.0f;
	}

	public CoverPoint GetCoverPoint(Vector3 mapPos) {
		int xCoor = Mathf.FloorToInt(mapPos.x/gridSize);
		int yCoor = Mathf.FloorToInt(mapPos.z/gridSize);
		string CoverPointName = "CoverPoint " + (xCoor * gridSize) + ", " + (yCoor * gridSize);
		CoverPoint foundCover = null;
		foreach (CoverPoint coverPoint in coverPoints) {
			if (coverPoint.gameObject.name.Equals(CoverPointName)) foundCover = coverPoint;
		}
		if (foundCover == null) {
			//print ("no cover at " + CoverPointName);
		}
		return foundCover;
	}
	
	public List<CoverPoint> GetCoverPointsInRange(Vector3 mapPos, float searchRange) {
		float sqrRange = searchRange * searchRange; 
		List<CoverPoint> coverPointsInRange = new List<CoverPoint>();
		foreach (CoverPoint coverPoint in coverPoints) {
			if ((coverPoint.transform.position - mapPos).sqrMagnitude < sqrRange)  {
				coverPointsInRange.Add(coverPoint);
			}
		}
			
		return coverPointsInRange;
	}
		
			
	public void AddCoverPoints() {
		GameObject coverContainer = new GameObject("CoverPoints");
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y;y++) {
				RaycastHit hit;
				Ray ray = new Ray(new Vector3((x + 0.5f) * gridSize, 10.0f, (y + 0.5f) * gridSize) , Vector3.down);
				Vector3 mapPoint = new Vector3(0,-100,0);

				LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
				if (Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
					mapPoint = hit.point;
					int[] cover = GetCover(mapPoint);

					if (cover[0] != 0 || cover[1] != 0 || cover[2] != 0 || cover[3] != 0) {
						GameObject newPoint = Instantiate(coverPointPrefab, Vector3.zero, Quaternion.identity) as GameObject;	
						CoverPoint coverPoint = newPoint.GetComponent<CoverPoint>();
						coverPoint.SetCover(cover, mapPoint, gridSize, mapSize, this);
						coverPoints.Add(coverPoint);
						newPoint.name = "CoverPoint " + (x * gridSize) + ", " + (y * gridSize);
						newPoint.transform.tag = "CoverPoint";
						newPoint.transform.parent = coverContainer.transform;
						newPoint.renderer.enabled = false;
					}
				} else {
					print ("Missed Point");	
					Debug.DrawLine(ray.origin, ray.origin + (ray.direction * 10), Color.red, 10);
				}
			}
		}
	}
	
	public void ShowCoverPoints() {
		foreach (CoverPoint coverPoint in coverPoints) {
			float distanceToCover = (coverPoint.transform.position - mapSelector.position).sqrMagnitude;
			coverPoint.SetFade(1 - distanceToCover/(showCoverRange - 1));
		}		
	}
	
	public void HideCoverPoints() {
		foreach (CoverPoint coverPoint in coverPoints) {
			coverPoint.SetFade(0);
		}		
	}
		
	public void MarkCoverPoint(CoverPoint coverPoint) {
		GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
		marker.transform.position = new Vector3(coverPoint.transform.position.x, 1.0f, coverPoint.transform.position.z);
		marker.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);
		BoxCollider coll = marker.GetComponent<BoxCollider>();
		Destroy(coll);
		return;
	}

		
	public Vector3 FindBestCover(Vector3 currentPos, float searchRange) {
		CoverPoint bestCover = null;
		float bestScore = Mathf.NegativeInfinity;
		
		GameObject[] targets;
		
		if (transform.tag.Equals("Player")) {
			targets = GameObject.FindGameObjectsWithTag ("Enemy");
		} else {
			targets = GameObject.FindGameObjectsWithTag ("Player");
		}
		
		List<CoverPoint> pointsInRange = GetCoverPointsInRange(currentPos, searchRange);
		if (pointsInRange.Count < 1) return currentPos;
		
		foreach (CoverPoint coverPoint in pointsInRange) {
			int coverRating = coverPoint.GetCoverRating(targets);
			if (!coverPoint.IsOccupied()) {
				if (coverRating > bestScore) {
					bestCover = coverPoint;
					bestScore = coverRating;
				}
			}
		}
		if (!bestCover) {
			print ("Cant find anything");
			return currentPos;
		}
		
		return bestCover.transform.position;
	}
	
	public Vector3 FindSafestCover(Vector3 currentPos, float searchRange) {
		
		GameObject[] targets;
		
		if (transform.tag.Equals("Player")) {
			targets = GameObject.FindGameObjectsWithTag ("Enemy");
		} else {
			targets = GameObject.FindGameObjectsWithTag ("Player");
		}	
		
		List<CoverPoint> pointsInRange = GetCoverPointsInRange(currentPos, searchRange); 
		Dictionary<CoverPoint, float> safePoints = new Dictionary<CoverPoint, float>();
		foreach (CoverPoint coverPoint in pointsInRange) {
			bool visible = false;
			foreach (GameObject target in targets) {
				if (coverPoint.IsTargetVisible(target.transform) || coverPoint.IsTargetVisibleFromCover(target.transform)) {
					visible = true;
				}
			}
			
			if (!visible) {
				if (!safePoints.ContainsKey(coverPoint) && GetCoverPoint(currentPos) != coverPoint && !coverPoint.IsOccupied()) {
					float sqrDistance = (coverPoint.transform.position - currentPos).sqrMagnitude;
					safePoints.Add(coverPoint, sqrDistance);
				}
			}
		}
		if (safePoints.Count < 1) 
			return currentPos;
		
		CoverPoint closestPoint = null;
		float closest = Mathf.Infinity;
		
 		foreach(KeyValuePair<CoverPoint, float> safePoint in safePoints) {

			if (safePoint.Value < closest) {
				closestPoint = safePoint.Key;
				closest = safePoint.Value;
			}
		}
		if (!closestPoint) {
			return currentPos;
		}
		
		return closestPoint.transform.position;
	}
	
	public bool IsDestinationClear(Vector3 location, Vector3 currentPos) {
		GameObject[] enemies = GameObject.FindGameObjectsWithTag ("Enemy");
		float distance1 = (location - currentPos).sqrMagnitude;
		bool isClosest = true;
		foreach (GameObject enemy in enemies) {
			Vector3 destination = enemy.GetComponent<UnitController>().currentDestination;
			
			if ((destination - location).sqrMagnitude < gridSize) { // is this guys destination matching ours?
				float distance2 = (enemy.transform.position - destination).sqrMagnitude;
				if (distance1 > distance2) isClosest = false;
			}
		}
		
		GameObject[] friends = GameObject.FindGameObjectsWithTag ("Player");
		foreach (GameObject friend in friends) {
			UnitController friendController = friend.GetComponent<UnitController>();
			Vector3 destination;
			if (!friendController) {
				print(friend.name + " has no controller");
				destination = Vector3.zero; //not sure why there is this here
			} else {
				destination = friendController.currentDestination;
			}
			
			if ((destination - location).sqrMagnitude < gridSize) { // is this guys destination matching ours?
				float distance2 = (friend.transform.position - destination).sqrMagnitude;
				if (distance1 > distance2) isClosest = false;
			}
		}
		
		return isClosest;	
	} 
	
	public bool IsDestinationClaimed(Vector3 location) {
		GameObject[] enemies = GameObject.FindGameObjectsWithTag ("Enemy");
		bool isClaimed = true;
		foreach (GameObject enemy in enemies) {
			
			UnitController enemyController = enemy.GetComponent<UnitController>();
			Vector3 destination;
			if (!enemyController) {
				print(enemy.name + " has no controller");
				destination = Vector3.zero; //not sure why there is this here
			} else {
				destination = enemyController.currentDestination;
			}			
			if ((destination - location).sqrMagnitude < gridSize)
				isClaimed = false;
		}
		
		GameObject[] friends = GameObject.FindGameObjectsWithTag ("Player");
		foreach (GameObject friend in friends) {
			Vector3 destination = friend.GetComponent<UnitController>().currentDestination;
			
			if ((destination - location).sqrMagnitude < gridSize) 
				isClaimed = false;
		}
		
		return isClaimed;	
	} 
		
}
