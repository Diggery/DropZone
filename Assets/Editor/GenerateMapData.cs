using UnityEngine;
using UnityEngine.SceneManagement;

using UnityEditor;
using UnityEditor.SceneManagement;
using System.Collections;
using System.Collections.Generic;
using System.IO;


public class GenerateMapData {
		
    [MenuItem("DropZone/Generate Map Data")]
    public static void BuildMapData() {
        
        GameObject map = GameObject.Find("Map");
        MapControl mapControl = map.GetComponent<MapControl>();
		
        if (!mapControl) {
            Debug.Log("Can't find the gameobject call 'Map' with a mapControl on it.");
        } 


        mapControl.mapData = new MapDataPoint[Mathf.FloorToInt(mapControl.mapSize.x) * Mathf.FloorToInt(mapControl.mapSize.y)];
        FillOutMapData(mapControl);

        EditorSceneManager.MarkSceneDirty(SceneManager.GetActiveScene());
    }

	

    static void FillOutMapData(MapControl mapControl) {
		
        Debug.Log("Creating mapdata point");
        for (int x = 0; x < mapControl.mapSize.x; x++) {
            for (int y = 0; y < mapControl.mapSize.y; y++) {
                MapDataPoint mapDataPoint = new MapDataPoint(
                                                new Vector3((x + 0.5f) * mapControl.gridSize, 0.0f, (y + 0.5f) * mapControl.gridSize), false, mapControl.gridSize);
				
                RaycastHit hit;
                Ray ray = new Ray(new Vector3((x + 0.5f) * mapControl.gridSize, 10.0f, (y + 0.5f) * mapControl.gridSize), Vector3.down);
                Vector3 mapPos = new Vector3(0, -100, 0);
				
                LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
                if (Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
                    mapPos = hit.point;
                    int[] cover = GetCover(mapPos, mapControl.gridSize);
					
                    if (cover[0] != 0 || cover[1] != 0 || cover[2] != 0 || cover[3] != 0) {
                        mapDataPoint.SetCover(cover);
                    }

                    if (hit.transform.tag.Equals("Wall") || hit.transform.tag.Equals("LowWall")) {
                        mapDataPoint.SetCollision(true);
                    }
                } else {
                    Debug.DrawLine(ray.origin, ray.origin + (ray.direction * 10), Color.red, 10);
                }
				
                if (mapDataPoint.IsCoverPoint()) {
                    Vector3[] firingpositions = mapDataPoint.GetFiringPositions();
                    mapDataPoint.cellsVisible = GetVisibleCells(firingpositions, mapControl.mapSize, mapControl.gridSize);
                } else {
                    mapDataPoint.cellsVisible = GetVisibleCells(mapDataPoint.mapPos, mapControl.mapSize, mapControl.gridSize);
                }
								
                int xPos = Mathf.FloorToInt(x);
                int yPos = Mathf.FloorToInt(y);
				
                mapControl.mapData[yPos * Mathf.FloorToInt(mapControl.mapSize.x) + xPos] = mapDataPoint;
				
            }
        }
    }


	
	
    static int[] GetCover(Vector3 mapPoint, float gridSize) {
        int north = 0, east = 0, south = 0, west = 0;
        mapPoint.y += (0.25f * gridSize);
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
        RaycastHit hit;
		
        if (Physics.Raycast(mapPoint, Vector3.forward, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "LowWall") north = 1;
            if (hit.transform.tag == "Wall") north = 2;
        }
		
        if (Physics.Raycast(mapPoint, Vector3.right, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "LowWall") east = 1;
            if (hit.transform.tag == "Wall") east = 2;
        }
		
        if (Physics.Raycast(mapPoint, Vector3.back, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "LowWall") south = 1;
            if (hit.transform.tag == "Wall") south = 2;
        }
		
        if (Physics.Raycast(mapPoint, Vector3.left, out hit, 1.0f * gridSize, terrainMask)) {
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

    static Vector2[] GetVisibleCells(Vector3 firingPosition, Vector2 mapSize, float gridSize) {
        Vector3[] firingPositions = new Vector3[1];
        firingPositions[0] = firingPosition;
        return GetVisibleCells(firingPositions, mapSize, gridSize); 
    }

    static Vector2[] GetVisibleCells(Vector3[] firingPositions, Vector2 mapSize, float gridSize) {
        List<Vector2> visibleCells = new List<Vector2>();
		
        foreach (Vector3 firingPosition in firingPositions) {
            for (int x = 0; x < mapSize.x; x++) {
                for (int y = 0; y < mapSize.y; y++) {
                    if ((firingPosition - CoorToMapPos(new Vector2(x, y), gridSize)).sqrMagnitude < 500) {
                        if (CheckLOS(firingPosition, new Vector2(x, y), gridSize)) visibleCells.Add(new Vector2(x, y));
                    }
                }
            }
        }
        return visibleCells.ToArray();
    }

    static Vector3 CoorToMapPos(Vector2 coor, float gridSize) {
        Vector3 mapPos = new Vector3(coor.x * gridSize, 0, coor.y * gridSize);
        return mapPos;
    }

    static bool CheckLOS(Vector3 start, Vector2 coor, float gridSize) {
        Vector3 origin = new Vector3(start.x, 0.75f, start.z);
        Vector3 destination = new Vector3((coor.x + 0.5f) * gridSize, 0.75f, (coor.y + 0.5f) * gridSize);
		
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
        return !Physics.Linecast(origin, destination, terrainMask);
    }
}