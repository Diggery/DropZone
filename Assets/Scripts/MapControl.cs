using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;


public class MapControl : MonoBehaviour {
	
	public Vector2 mapSize;
	public float gridSize = 2.0f;
	public float localCheckDistance;
	public float showCoverRange;
	
	public GameObject coverPointPrefab;
	GameControl gameControl;

	List<CoverPoint> allCoverPoints = new List<CoverPoint>();
	
	public class MapDataPoint {	
		public Vector3 mapPos;
		public CoverPoint coverPoint;
		public bool isClaimed;
		public bool isOccupied;
		public bool isCollision;
		public Vector2[] cellsVisible;
		
		public MapDataPoint(Vector3 mapPos, CoverPoint coverPoint, bool isClaimed,  bool isOccupied, bool isCollision, Vector2[] cellsVisible) {
			this.mapPos = mapPos;
			this.coverPoint = coverPoint;
			this.isClaimed = isClaimed;
			this.isOccupied = isOccupied;
			this.isCollision = isCollision;
			this.cellsVisible = cellsVisible;
		}
	}

	MapDataPoint[] mapData;
		

	void Start () {
		localCheckDistance *= localCheckDistance;
		showCoverRange *= showCoverRange;
				
		Vector2 MapStartPosition = new Vector2(-1, -1);
		Vector2 MapEndPosition = new Vector2(mapSize.x + 1, mapSize.y + 1);
			
		Pathfinder.Instance.SetUp(MapStartPosition, MapEndPosition);
		
		//create all the cover points
		mapData = new MapDataPoint[Mathf.FloorToInt(mapSize.x) * Mathf.FloorToInt(mapSize.y)];
		FillOutMapData();

		//now that they are created, set up any data on them
		foreach (CoverPoint cover in allCoverPoints) {
			cover.SetCornerFlags(); 
		}

		gameControl = GetComponent<GameControl>();
		if (!gameControl) Debug.Log ("Map can't find gameControl");
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

	
	public Vector2 MapPosToCoor(Vector3 mapPos) {
		Vector2 coor = new Vector2(Mathf.FloorToInt(mapPos.x/gridSize), Mathf.FloorToInt(mapPos.z/gridSize));
		return coor;
	}
	
	public Vector2 MapPosToNearestCell(Vector3 mapPos) {
		Vector3 pos = new Vector3(Mathf.FloorToInt(mapPos.x/gridSize), 0, Mathf.FloorToInt(mapPos.z/gridSize));
		return pos;
	}
	
	
	public Vector3 CoorToMapPos(Vector2 coor) {
		Vector3 mapPos = new Vector3(coor.x * gridSize, transform.position.y, coor.y * gridSize);
		return mapPos;
	}	
	
	void SetMapData(Vector2 coor, MapDataPoint mapDataPoint) {
		int xPos = Mathf.FloorToInt(coor.x);
		int yPos = Mathf.FloorToInt(coor.y);
		
		mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos] = mapDataPoint;
	}
	
	public MapDataPoint GetMapData(Vector3 mapPos) {
		float x = mapPos.x/gridSize;
		float y = mapPos.z/gridSize;
		return GetMapData(new Vector2(x, y));
	}
	
	MapDataPoint GetMapData(Vector2 coor) {
		int xPos = Mathf.FloorToInt(coor.x);
		int yPos = Mathf.FloorToInt(coor.y);
		//print ("getting " + xPos + ", " + yPos);
		return mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos];
	}


	public CoverPoint GetCoverPoint(Vector3 mapPos) {
		float x = mapPos.x/gridSize;
		float y = mapPos.z/gridSize;
		return GetMapData(new Vector2(x, y)).coverPoint;
	}
	
	List<CoverPoint> GetCoverPointsInRange(Vector3 mapPos, float searchRange) {
		List<CoverPoint> coverPointsInRange = new List<CoverPoint>();
		
		List<MapDataPoint> cellsInRange = GetMapCellsInRange(mapPos, searchRange); 
		
		for ( int i = 0; i < cellsInRange.Count; i++) {
			if (cellsInRange[i].coverPoint) 
				coverPointsInRange.Add(cellsInRange[i].coverPoint);
		}

		return coverPointsInRange;
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
		
	public List<MapDataPoint> GetMapCellsInRange(Vector3 mapPos, float searchRange) {
		
		float x = (mapPos.x - 0.5f)/gridSize;
		float y = (mapPos.z - 0.5f)/gridSize;
		List<MapDataPoint> mapArea = GetMapArea(new Vector2(x, y), Mathf.CeilToInt(searchRange));
		return mapArea;
	}	
				
	public void FillOutMapData() {
		GameObject coverContainer = new GameObject("CoverPoints");
				
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y;y++) {
			
				MapDataPoint mapDataPoint = new MapDataPoint(
					new Vector3((x + 0.5f) * gridSize, 0.0f, (y + 0.5f) * gridSize), 
					null, 
					false, 
					false, 
					false, 
					new Vector2[0]
					);
				
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
						newPoint.GetComponent<Renderer>().enabled = false;
						mapDataPoint.coverPoint = coverPoint;
					} 
					if (hit.transform.tag.Equals("Wall") || hit.transform.tag.Equals("LowWall")) {
						mapDataPoint.isCollision = true;
					}
				} else {
					print ("Missed Point");	
					Debug.DrawLine(ray.origin, ray.origin + (ray.direction * 10), Color.red, 10);
				}
				mapDataPoint.cellsVisible = SetVisibleCells(mapDataPoint.mapPos);
				SetMapData(new Vector2(x, y), mapDataPoint);
			}
		}
	}

	public void ShowCoverPoints(Vector3 mapPos) {

		List<CoverPoint> coverPoints = GetCoverPointsInRange(mapPos, showCoverRange + gridSize);
		
		for(int i = 0; i < coverPoints.Count; i++) {
			float distanceToCover = (coverPoints[i].transform.position - mapPos).sqrMagnitude;
			coverPoints[i].SetFade(1 - distanceToCover/(showCoverRange - 1));
		}		
	}
	
	public void HideCoverPoints() {
		foreach (CoverPoint coverPoint in allCoverPoints) {
			coverPoint.SetFade(0);
		}		
	}
	public void MarkMapCell(Vector3 mapPos) {
		MapDataPoint mapCell = GetMapData(mapPos);
		GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
		marker.transform.position = new Vector3(mapCell.mapPos.x, 1.25f, mapCell.mapPos.z);
		marker.transform.localScale = new Vector3(0.25f, 2f, 0.25f);
		BoxCollider coll = marker.GetComponent<BoxCollider>();
		
		if (mapCell.isCollision) {
			marker.GetComponent<Renderer>().material.color = Color.red;
		}
		
		if (mapCell.coverPoint) {
			marker.GetComponent<Renderer>().material.color = Color.green;
		}
		
		Destroy(coll);
	}		
	
	public void MarkMapArea(Vector2 mapPos, int range) {
	
		List<MapDataPoint> mapCellsInRange = GetMapArea(mapPos, range);
		
		foreach (MapDataPoint mapcell in mapCellsInRange) {
			GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
			marker.transform.position = new Vector3(mapcell.mapPos.x, 1.25f, mapcell.mapPos.y);
			marker.transform.localScale = new Vector3(0.25f, 2f, 0.25f);
			BoxCollider coll = marker.GetComponent<BoxCollider>();
			
			if (mapcell.isCollision) {
				marker.GetComponent<Renderer>().material.color = Color.red;
			}
			
			if (mapcell.coverPoint) {
				marker.GetComponent<Renderer>().material.color = Color.green;
			}
			
			Destroy(coll);
		}
	}

	public bool IsPositionVisible(Vector3 pos1, Vector3 pos2) {
		MapDataPoint mapData1 = GetMapData(pos1);
		MapDataPoint mapData2 = GetMapData(pos2);
		
		bool exists = Array.Exists(
			mapData1.cellsVisible,
			delegate(Vector2 coor) { return coor.Equals(MapPosToCoor(mapData2.mapPos)); }
		);	
		
		return exists;
	}
	
	public Vector3 FindBestCover(Vector3 currentPos, float searchRange, string tag) {
		CoverPoint bestCover = null;
		float bestScore = Mathf.NegativeInfinity;
		
		GameObject[] targets;
		
		if (tag.Equals("Player")) {
			targets = GameObject.FindGameObjectsWithTag ("Enemy");
		} else if (tag.Equals("Enemy")) {
			targets = GameObject.FindGameObjectsWithTag ("Player");
		} else {
			return currentPos;
		}
		
		MapDataPoint[] cellsInRange = GetMapCellsInRange(currentPos, searchRange).ToArray(); 
		if (cellsInRange.Length < 1) return currentPos;
		
		for ( int i = 0; i < cellsInRange.Length; i++) {
			if (cellsInRange[i].isOccupied) continue;
			if (!cellsInRange[i].coverPoint) continue;
			
			float coverRating = (float)cellsInRange[i].coverPoint.GetCoverRating(targets);
			float coverDistance = (cellsInRange[i].mapPos - currentPos).sqrMagnitude/(searchRange * searchRange);
			
			if (coverRating - coverDistance > bestScore) {
				bestCover = cellsInRange[i].coverPoint;
				bestScore = coverRating - coverDistance;
			}
		}
		
		if (!bestCover) {
			print ("no cover found at " + currentPos);
			return currentPos;
		}	
		return bestCover.transform.position;
	}
	
	public Vector3 FindSafestCover(Vector3 currentPos, float searchRange, string tag) {
		GameObject[] targets;
		
		if (tag.Equals("Player")) {
			targets = GameObject.FindGameObjectsWithTag ("Enemy");
		} else if (tag.Equals("Enemy")) {
			targets = GameObject.FindGameObjectsWithTag ("Player");
		} else {
			return currentPos;
		}
		
		MapDataPoint[] cellsInRange = GetMapCellsInRange(currentPos, searchRange).ToArray(); 
		List<MapDataPoint> cellThatAreSafe = new List<MapDataPoint>();
		float closest = Mathf.Infinity;
		for ( int i = 0; i < cellsInRange.Length; i++) {
			if (!cellsInRange[i].coverPoint) continue;
			bool visible = false;
			foreach (GameObject target in targets) {
				if ((target.transform.position - currentPos).sqrMagnitude < localCheckDistance) {
					if (cellsInRange[i].coverPoint.IsCorner()) {
						Vector3[] firingPositions = cellsInRange[i].coverPoint.GetFiringPositions();
						for (int j = 0; j < firingPositions.Length; j++) {
							if (IsPositionVisible(cellsInRange[i].mapPos, firingPositions[j])) {
								visible = true;
							}						
						}
					}
					if (IsPositionVisible(cellsInRange[i].mapPos, target.transform.position)) {
						visible = true;
					}
				}
			}
			
			if (!visible) {
				float sqrDistance = (cellsInRange[i].mapPos - currentPos).sqrMagnitude;
				if (sqrDistance < closest) {
					closest = sqrDistance;
					cellThatAreSafe.Insert(0, cellsInRange[i]);
				}
			}
		}

		if (cellThatAreSafe.Count < 1) {
			return currentPos;
		}
		
		return cellThatAreSafe[0].mapPos;
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
	
	public Vector3 FindCorner(Vector3 currentPos, float searchRange) {
		MapDataPoint[] cellsInRange = GetMapCellsInRange(currentPos, searchRange).ToArray(); 
		
		CoverPoint bestCorner = null;
		float dist = Mathf.Infinity;
		for ( int i = 0; i < cellsInRange.Length; i++) {
			if (!cellsInRange[i].coverPoint) continue;
			if (!cellsInRange[i].coverPoint.IsCorner()) continue;
			float coverDist = (cellsInRange[i].mapPos - currentPos).sqrMagnitude;
			if (coverDist < dist) {
				dist = coverDist;
				bestCorner = cellsInRange[i].coverPoint;
			}
		}
			
		if (!bestCorner) {
			return FindOpenPosition(currentPos, searchRange);
		}
		
		return bestCorner.transform.position;
	}
	
	public Vector3 FindOpenPosition(Vector3 mapPos, float searchRange) {
	
		if (searchRange > 50) {
			Debug.Log ("Too large of range, or no possible spots");
			return mapPos;
		}
		List<MapDataPoint> mapCellsInRange = GetMapCellsInRange(mapPos, searchRange);
		Vector3 closestPos = mapPos;
		float dist = Mathf.Infinity;
		bool posFound = false;		
		foreach (MapDataPoint mapcell in mapCellsInRange) {
			if (!mapcell.isClaimed && !mapcell.isOccupied && !mapcell.isCollision) {
				Vector3 newPos = new Vector3(mapcell.mapPos.x, mapPos.y, mapcell.mapPos.y);
				float pointDist = (mapPos - newPos).sqrMagnitude;
				if (pointDist < dist) {
					dist = pointDist;
					closestPos = newPos;
					posFound = true;
				}
			}
		}
		if (!posFound) closestPos = FindOpenPosition(closestPos, searchRange + 5);
		return closestPos;
	}

	Vector2[] SetVisibleCells(Vector3 mapPos) {
		
		List<Vector2> visibleCells = new List<Vector2>();
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y; y++) {
				if ((mapPos - CoorToMapPos(new Vector2(x,y))).sqrMagnitude < localCheckDistance) {
					if (CheckLOS(mapPos, new Vector2(x, y))) visibleCells.Add(new Vector2(x,y));
				}
			}
		}
		return visibleCells.ToArray();
	}
	
	bool CheckLOS(Vector3 start, Vector2 coor) {
		Vector3 origin = new Vector3(start.x, 0.75f, start.z);
		Vector3 destination = new Vector3((coor.x + 0.5f) * gridSize, 0.75f, (coor.y + 0.5f) * gridSize);
		
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		return !Physics.Linecast(origin, destination, terrainMask);
	}
	
}
