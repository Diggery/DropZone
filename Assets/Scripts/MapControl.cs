using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class MapControl : MonoBehaviour {
	
	public Vector2 mapSize;
	public float gridSize = 2.0f;
	public float localCheckDistance;
	
	public GameObject coverPointPrefab;

	List<CoverPoint> coverPoints = new List<CoverPoint>();

	void Start () {
		AddCoverPoints();

		foreach (CoverPoint cover in coverPoints) {
			cover.SetVisibleCells();
		}

		localCheckDistance *= localCheckDistance;


	}
	
	void Update () {

	
	}

	public float GetGridSize() {

		return gridSize;
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
			
	public void AddCoverPoints() {
		GameObject coverContainer = new GameObject("CoverPoints");
		for (int x = 0; x < mapSize.x; x++) {
			for (int y = 0; y < mapSize.y;y++) {
				RaycastHit hit;
				Ray ray = new Ray(new Vector3((x + 0.5f) * gridSize, 10.0f, (y + 0.5f) * gridSize) , Vector3.down);
				Vector3 mapPoint = new Vector3(0,-100,0);

				LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
				if (Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
					if (hit.transform.tag.Equals("Enemy")) print ("Hit an enemy");
					mapPoint = hit.point;
					int[] cover = GetCover(mapPoint);

					if (cover[0] != 0 || cover[1] != 0 || cover[2] != 0 || cover[3] != 0) {
						GameObject newPoint = Instantiate(coverPointPrefab, Vector3.zero, Quaternion.identity) as GameObject;	
						CoverPoint coverPoint = newPoint.GetComponent<CoverPoint>();
						coverPoint.SetCover(cover, mapPoint, gridSize, mapSize);
						coverPoints.Add(coverPoint);
						newPoint.name = "CoverPoint " + (x * gridSize) + ", " + (y * gridSize);
						newPoint.transform.tag = "CoverPoint";
						newPoint.transform.parent = coverContainer.transform;
						//newPoint.renderer.enabled = false;
					}
				} else {
					print ("Missed Point");						

				}
			}
		}
	}
}
