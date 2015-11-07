using UnityEngine;
using System.Collections;

public class MapDataObject : ScriptableObject {

	public class MapDataPoint {	
		public string name;
		public Vector3 mapPos;
		public bool isCoverpoint;
		public bool isClaimed;
		public bool isOccupied;
		public bool isCollision;
		public Vector2[] cellsVisible;
		
		public MapDataPoint(Vector3 mapPos, bool isCoverpoint, bool isClaimed,  bool isOccupied, bool isCollision, Vector2[] cellsVisible) {
			this.name = "MapPos " + Mathf.FloorToInt(mapPos.x) + ", " + Mathf.FloorToInt(mapPos.z);
			this.mapPos = mapPos;
			this.isCoverpoint = isCoverpoint;
			this.isClaimed = isClaimed;
			this.isOccupied = isOccupied;
			this.isCollision = isCollision;
			this.cellsVisible = cellsVisible;
		}
	}
	public MapDataPoint[] mapData;
		
	public void InitMapData(int size) {
		mapData = new MapDataPoint[size];
	}
	
	public MapDataPoint GetDataPoint(int index) {
		return mapData[index];
	}
	public void SetDataPoint(int index, MapDataPoint data) {
		mapData[index] = data;
	}
}
