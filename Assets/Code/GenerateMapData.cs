using UnityEngine;
using UnityEngine.SceneManagement;

using UnityEditor;
using UnityEditor.SceneManagement;
using System.Collections.Generic;


public class GenerateMapData {

  [MenuItem("CyberTeam/Generate Map Data")]
  public static void BuildMapData() {

    GameObject map = GameObject.Find("Map");
    MapControl mapControl = map.GetComponent<MapControl>();
    if (!mapControl) {
      Debug.Log("Can't find the gameobject call 'Map' with a mapControl on it.");
    }

    MapData mapData = mapControl.mapData;
    mapData.CreateMap(mapControl.GetMapSize());
    mapData.Origin = mapControl.GetMapOrigin();

    FillOutMapData(mapData);
    CalculateVisibility(mapData);

    EditorSceneManager.MarkSceneDirty(SceneManager.GetActiveScene());
    EditorUtility.SetDirty(mapData);
  }

  static void FillOutMapData(MapData mapData) {
    for (int x = 0; x < mapData.Size.x; x++) {
      for (int y = 0; y < mapData.Size.y; y++) {

        Vector3 mapPos = new Vector3(x + 0.5f, 0.0f, y + 0.5f) + mapData.Origin;
        MapData.MapCell mapCell = new MapData.MapCell(x, y, mapPos);

        Ray ray = new Ray(new Vector3(mapPos.x, 5.0f, mapPos.z), Vector3.down);
        LayerMask terrainMask = LayerMask.GetMask("Terrain");

        if (Physics.Raycast(ray, out RaycastHit hit, Mathf.Infinity, terrainMask)) {
          mapPos = hit.point;
          mapCell.coverDirection = GetCover(mapPos);
          mapCell.isCollision = hit.transform.tag.Equals("Wall");

        } else {
          mapCell.isCollision = true;
        }


        mapCell.mapPos = mapPos;
        mapCell.id = y * Mathf.FloorToInt(mapData.Size.x) + x;
        mapCell.peekDirection = GetPeekingDirections(mapCell);

        mapData.mapCells[mapCell.id] = mapCell;
      }
    }
  }

  static void CalculateVisibility(MapData mapData) {
    foreach (var mapCell in mapData.mapCells) {
      mapCell.cellsVisible = GetVisibleCells(mapCell, mapData).ToArray();
    }
  }

  static List<int> GetVisibleCells(MapData.MapCell mapCell, MapData mapData) {
    List<int> visibleCells = new List<int>();

    List<MapData.MapCell> searchArea = mapData.GetMapArea(mapCell.mapPos, mapData.maxVisualRange);
    foreach (MapData.MapCell cell in searchArea) {
      if (CheckLOS(mapCell.mapPos, cell.mapPos, mapData.SqrRange)) visibleCells.Add(cell.id);
    }

    return visibleCells;
  }

  static void DrawVisibleCells(Vector3 firingPosition, MapData mapData) {
    MapData.MapCell firingCell = mapData.GetMapCell(firingPosition);
    foreach (var cellId in firingCell.cellsVisible) {
      Debug.DrawLine(mapData.mapCells[cellId].mapPos + Vector3.up, mapData.mapCells[cellId].mapPos, Color.green, 10);
    }
  }

  static void DrawCells(MapData mapData) {
    foreach (var mapCell in mapData.mapCells) {
      Color lineColor = Color.white;
      if (mapCell.isCollision) lineColor = Color.red;
      if (mapCell.HasCover) lineColor = Color.green;

      Debug.DrawLine(mapCell.mapPos + Vector3.up, mapCell.mapPos, lineColor, 10);
    }
  }

  static void DrawArea(Vector3 mapPos, MapData mapData) {
    List<MapData.MapCell> searchArea = mapData.GetMapArea(mapPos, 5);
    foreach (var mapCell in searchArea) {
      Debug.DrawLine(mapCell.mapPos + Vector3.up, mapCell.mapPos, Color.red, 10);
    }
  }

  static bool[] GetCover(Vector3 mapPoint) {

    mapPoint.y += (1.25f);
    LayerMask terrainMask = LayerMask.GetMask("Terrain");

    bool north = Physics.Raycast(mapPoint, Vector3.forward, 1.0f, terrainMask);
    bool east = Physics.Raycast(mapPoint, Vector3.right, 1.0f, terrainMask);
    bool south = Physics.Raycast(mapPoint, Vector3.back, 1.0f, terrainMask);
    bool west = Physics.Raycast(mapPoint, Vector3.left, 1.0f, terrainMask);

    bool[] cover = new bool[4];

    cover[0] = north;
    cover[1] = east;
    cover[2] = south;
    cover[3] = west;

    return cover;
  }

  static bool CheckLOS(Vector3 start, Vector3 end, float range) {
    if ((start - end).sqrMagnitude < 0.001f) return true;
    if ((start - end).sqrMagnitude > range) return false;

    Vector3 origin = new Vector3(start.x, start.y + 1.25f, start.z);
    Vector3 destination = new Vector3(end.x, start.y + 1.25f, end.z);

    LayerMask terrainMask = LayerMask.GetMask("Terrain");

    return !Physics.Linecast(origin, destination, terrainMask);
  }

  static bool[] GetPeekingDirections(MapData.MapCell mapCell) {
    bool[] peekingPositions = new bool[4];
    LayerMask terrainMask = LayerMask.GetMask("Terrain");
    Vector3 testPos = mapCell.mapPos + (Vector3.up * 1.25f);

    for (int i = 0; i < 4; i++) {
      Vector3 testDir = (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);

      Vector3 leftStep1 = testPos + (Quaternion.AngleAxis(-90, Vector3.up) * testDir);
      Vector3 leftStep2 = leftStep1 + testDir;

      Vector3 centerStep = testPos + testDir;

      Vector3 rightStep1 = testPos + (Quaternion.AngleAxis(90, Vector3.up) * testDir);
      Vector3 rightStep2 = rightStep1 + testDir;

      bool leftStep1Open = !Physics.Linecast(testPos, leftStep1, terrainMask);
      bool leftStep2Open = !Physics.Linecast(leftStep1, leftStep2, terrainMask);

      bool centerStepOpen = !Physics.Linecast(testPos, centerStep, terrainMask);

      bool rightStep1Open = !Physics.Linecast(testPos, rightStep1, terrainMask);
      bool rightStep2Open = !Physics.Linecast(rightStep1, rightStep2, terrainMask);

      if (!centerStepOpen && leftStep1Open && leftStep2Open) {
        peekingPositions[(i + 3) % 4] = true;
      }

      if (!centerStepOpen && rightStep1Open && rightStep2Open) {
        peekingPositions[(i + 5) % 4] = true;
      }
    }
    return peekingPositions;
  }
}