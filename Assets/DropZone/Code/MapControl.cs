using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class MapControl : MonoBehaviour {

  public Transform lowerLeftMarker;
  public Transform upperRightMarker;
  Vector2 mapSize;
  public MapData mapData;

  public static MapControl Instance { get; set; }

  void Awake() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this.gameObject);
    }
  }

  void Start() {
  }

  public Vector2 GetMapSize() {
    Vector3 lowerLeftPos = lowerLeftMarker.transform.position;
    lowerLeftPos.x = Mathf.Round(lowerLeftPos.x);
    lowerLeftPos.z = Mathf.Round(lowerLeftPos.z);
    lowerLeftMarker.transform.position = lowerLeftPos;

    Vector3 upperRightPos = upperRightMarker.transform.position;
    upperRightPos.x = Mathf.Round(upperRightPos.x);
    upperRightPos.z = Mathf.Round(upperRightPos.z);
    upperRightMarker.transform.position = upperRightPos;

    mapSize.x = Mathf.Ceil(Mathf.Abs(lowerLeftMarker.transform.position.x - upperRightMarker.transform.position.x));
    mapSize.y = Mathf.Ceil(Mathf.Abs(lowerLeftMarker.transform.position.z - upperRightMarker.transform.position.z));
    return mapSize;
  }

  public Vector3 GetMapOrigin() {
    return lowerLeftMarker.transform.position;
  }

  public bool IsPositionVisible(Vector3 origin, Vector3 destination, bool usePeeking = false) {
    MapData.MapCell originCell = mapData.GetMapCell(origin);
    MapData.MapCell destinationCell = mapData.GetMapCell(destination);
    bool visible = Array.Exists(originCell.cellsVisible, element => element.Equals(destinationCell.id));
    if (!visible && usePeeking) visible = IsPositionPeekable(originCell, destinationCell);
    return visible;
  }
  public bool IsPositionPeekable(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = mapData.GetMapCell(origin);
    MapData.MapCell destinationCell = mapData.GetMapCell(destination);
    return IsPositionPeekable(originCell, destinationCell);
  }

  bool IsPositionPeekable(MapData.MapCell originCell, MapData.MapCell destinationCell) {
    if (!originCell.CanPeek) return false;
    bool visible = false;
    for (int i = 0; i < 4; i++) {
      if (originCell.peekDirection[i]) {
        MapData.MapCell coverPos = mapData.GetMapCell(originCell.mapPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward));
        if (Array.Exists(coverPos.cellsVisible, element => element.Equals(destinationCell.id))) {
          visible = true;
        }
      }
    }
    return visible;
  }

  public bool IsPositionPeekableLeft(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = mapData.GetMapCell(origin);
    MapData.MapCell destinationCell = mapData.GetMapCell(destination);
    if (!originCell.CanPeekLeft) return false;
    return IsPositionPeekable(originCell, destinationCell, -1);
  }

  public bool IsPositionPeekableRight(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = mapData.GetMapCell(origin);
    MapData.MapCell destinationCell = mapData.GetMapCell(destination);
    if (!originCell.CanPeekRight) return false;
    return IsPositionPeekable(originCell, destinationCell, 1);
  }

  bool IsPositionPeekable(MapData.MapCell originCell, MapData.MapCell destinationCell, int side) {
    bool visible = false;
    MapData.MapCell coverPos = mapData.GetMapCell((side < 0) ? originCell.GetPeekLeftPos : originCell.GetPeekRightPos);

    Color lineColor = (side < 0) ? Color.magenta : Color.red;
    Debug.DrawLine(coverPos.mapPos, coverPos.mapPos + (Vector3.up * 4), lineColor);

    if (Array.Exists(coverPos.cellsVisible, element => element.Equals(destinationCell.id))) {
      visible = true;
    }
    return visible;
  }

    public bool FindSafePos(Vector3 searchPos, float searchRange, UnitControl searcher, float visualRange, out Vector3 safePos) {

    List<GameObject> possibleTargets = new List<GameObject>();

    foreach (var enemyType in searcher.Enemies) {
      possibleTargets.AddRange(GameObject.FindGameObjectsWithTag(enemyType));
    }

    if (possibleTargets.Count < 1) {
      safePos = searchPos;
      return false;
    }

    float sqrVisualRange = visualRange * visualRange;

    List<MapData.MapCell> cellsInRange = mapData.GetMapArea(searchPos, Mathf.RoundToInt(searchRange));

    Dictionary<MapData.MapCell, float> scoredCells = new Dictionary<MapData.MapCell, float>();

    foreach (MapData.MapCell cell in cellsInRange) {
      bool isVisible = false;
      float cellScore = Mathf.Infinity;

      foreach (GameObject target in possibleTargets) {
        if (IsPositionVisible(target.transform.position, cell.mapPos, true)) {
          isVisible = true;
        }
        float distanceFromSearch = (cell.mapPos - searchPos).sqrMagnitude + UnityEngine.Random.Range(0, sqrVisualRange);
        float distanceFromTarget = Mathf.Max(sqrVisualRange - (cell.mapPos - target.transform.position).sqrMagnitude, 0);
        cellScore = Mathf.Min(cellScore, distanceFromSearch + distanceFromTarget);
      }
      scoredCells.Add(cell, (isVisible || cell.isCollision) ? Mathf.Infinity : cellScore);
    }

    if (scoredCells.Count < 1) {
      safePos = searchPos;
      return false;
    }

    safePos = scoredCells.OrderBy(element => element.Value).First().Key.mapPos;

    return true;
  }

  public float GetCoverHeading(MapData.MapCell mapCell) {
    float heading = 0;
    if (mapCell.coverDirection[0]) heading = 0;
    if (mapCell.coverDirection[1]) heading = 90;
    if (mapCell.coverDirection[2]) heading = 180;
    if (mapCell.coverDirection[3]) heading = -90;
    return heading;
  }

  public Quaternion GetCoverOrientation(MapData.MapCell mapCell) {
    return Quaternion.AngleAxis(GetCoverHeading(mapCell), Vector3.up);
  }

  public Vector3 GetCellPos(Vector3 position) {

    return mapData.GetMapCell(position).mapPos;
  }
}
