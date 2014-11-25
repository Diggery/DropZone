using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class MapControl : MonoBehaviour {
	
	public Vector2 mapSize;
	public float gridSize = 2.0f;
	public float localCheckDistance;
	public float showCoverRange;
	
	public GameObject coverPointPrefab;
	Transform mapSelector;

	List<CoverPoint> allCoverPoints = new List<CoverPoint>();
	
	public class MapDataPoint {	
		public Vector2 mapPos;
		public CoverPoint coverPoint;
		public bool isClaimed;
		public bool isCollision;
		
		public MapDataPoint(Vector2 mapPos, CoverPoint coverPoint, bool isClaimed, bool isCollision) {
			this.mapPos = mapPos;
			this.coverPoint = coverPoint;
			this.isClaimed = isClaimed;
			this.isCollision = isCollision;
		}
	}

	MapDataPoint[] mapData;
		

	void Start () {
		
		Vector2 MapStartPosition = new Vector2(-1, -1);
		Vector2 MapEndPosition = new Vector2(mapSize.x + 1, mapSize.y + 1);
			
		Pathfinder.Instance.SetUp(MapStartPosition, MapEndPosition);
		
		//create all the cover points
		mapData = new MapDataPoint[Mathf.FloorToInt(mapSize.x) * Mathf.FloorToInt(mapSize.y)];
		AddCoverPoints();

		
		//now that they are created, set up any data on them
		foreach (CoverPoint cover in allCoverPoints) {
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
	
		float x = (mapPos.x - 0.5f)/gridSize;
		float y = (mapPos.z - 0.5f)/gridSize;
		
		MapDataPoint mapDataPoint = GetMapData(new Vector2(x, y));
	
		return mapDataPoint.coverPoint;
	}
	
	public List<CoverPoint> GetCoverPointsInRange(Vector3 mapPos, float searchRange) {
		
		float x = (mapPos.x - 0.5f)/gridSize;
		float y = (mapPos.z - 0.5f)/gridSize;
		List<MapDataPoint> mapArea = GetMapArea(new Vector2(x, y), Mathf.CeilToInt(searchRange));
		
		List<CoverPoint> coverPointsInRange = new List<CoverPoint>();
		
		foreach (MapDataPoint cell in mapArea) 
			if (cell.coverPoint) coverPointsInRange.Add(cell.coverPoint);
			
		return coverPointsInRange;
	}
		
			
	public void AddCoverPoints() {
		GameObject coverContainer = new GameObject("CoverPoints");
				
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y;y++) {
			
				MapDataPoint mapDataPoint = new MapDataPoint(new Vector2((x + 0.5f) * gridSize, (y + 0.5f) * gridSize), null, false, false);
				
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
						allCoverPoints.Add(coverPoint);
						newPoint.name = "CoverPoint " + (x * gridSize) + ", " + (y * gridSize);
						newPoint.transform.tag = "CoverPoint";
						newPoint.transform.parent = coverContainer.transform;
						newPoint.renderer.enabled = false;
						mapDataPoint.coverPoint = coverPoint;
					} 
					if (hit.transform.tag.Equals("Wall") || hit.transform.tag.Equals("LowWall")) {
						mapDataPoint.isCollision = true;
					}
				} else {
					print ("Missed Point");	
					Debug.DrawLine(ray.origin, ray.origin + (ray.direction * 10), Color.red, 10);
				}
				SetMapData(new Vector2(x, y), mapDataPoint);
			}
		}
	}
	
	
	void SetMapData(Vector2 coor, MapDataPoint mapDataPoint) {
		int xPos = Mathf.FloorToInt(coor.x);
		int yPos = Mathf.FloorToInt(coor.y);
		
		mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos] = mapDataPoint;
	}
	
	public MapDataPoint GetMapData(Vector3 mapPos) {
		float x = (mapPos.x - 0.5f)/gridSize;
		float y = (mapPos.z - 0.5f)/gridSize;
		return GetMapData(new Vector2(x, y));
	}
	
	MapDataPoint GetMapData(Vector2 coor) {
		
		int xPos = Mathf.FloorToInt(coor.x);
		int yPos = Mathf.FloorToInt(coor.y);
		
		return mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos];
	}
	
	List<MapDataPoint> GetMapArea(Vector2 coor, int range) {
		int xPos = Mathf.FloorToInt(coor.x);
		int yPos = Mathf.FloorToInt(coor.y);
		
		int startX = Mathf.Max(xPos - range, 0);
		int startY = Mathf.Max(yPos - range, 0);
		int endX = Mathf.Min(xPos + range, Mathf.FloorToInt(mapSize.x) - 1);
		int endY = Mathf.Min(yPos + range, Mathf.FloorToInt(mapSize.y) - 1);

		List<MapDataPoint> mapDataInRange = new List<MapDataPoint>();
		
		for( int y = startY; y <= endY; ++y )
			for( int x = startX; x <= endX; ++x )
				mapDataInRange.Add ( mapData[ y * Mathf.FloorToInt(mapSize.x) + x ] );
				
		return mapDataInRange;
	}
	
	public void ShowCoverPoints() {

		List<CoverPoint> coverPoints = GetCoverPointsInRange(mapSelector.position, showCoverRange + gridSize);
		
		foreach (CoverPoint coverPoint in coverPoints) {
			float distanceToCover = (coverPoint.transform.position - mapSelector.position).sqrMagnitude;
			coverPoint.SetFade(1 - distanceToCover/(showCoverRange - 1));
		}		
	}
	
	public void HideCoverPoints() {
		foreach (CoverPoint coverPoint in allCoverPoints) {
			coverPoint.SetFade(0);
		}		
	}
		
	public void MarkMapArea(Vector2 mapPos, int range) {
	
		List<MapDataPoint> mapCellsInRange = GetMapArea(mapPos, range);
		
		foreach (MapDataPoint mapcell in mapCellsInRange) {
			GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
			marker.transform.position = new Vector3(mapcell.mapPos.x, 1.25f, mapcell.mapPos.y);
			marker.transform.localScale = new Vector3(0.25f, 2f, 0.25f);
			BoxCollider coll = marker.GetComponent<BoxCollider>();
			
			if (mapcell.isCollision) {
				marker.renderer.material.color = Color.red;
			}
			
			if (mapcell.coverPoint) {
				marker.renderer.material.color = Color.green;
			}
			
			Destroy(coll);
		}
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
