﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MapControl : MonoBehaviour {

  GameManager gameManager;
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
    gameManager = GameManager.Instance;
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

  public MapData.MapCell GetMapCell(Vector3 position) {
    return mapData.GetMapCell(position);
  }

  public bool LeftIsOpen(Vector3 coverPos) {
    MapData.MapCell mapCell = GetMapCell(coverPos);
    return mapCell.HasCover && mapCell.CanPeekLeft;
  }
  public bool RightIsOpen(Vector3 coverPos) {
    MapData.MapCell mapCell = GetMapCell(coverPos);
    return mapCell.HasCover && mapCell.CanPeekRight;
  }

  public bool PositionIsVisible(
    Vector3 origin,
    Vector3 destination,
    bool usePeekingAtOrigin = false,
    bool usePeekingAtDestination = false) {

    MapData.MapCell originCell = GetMapCell(origin);
    MapData.MapCell destinationCell = GetMapCell(destination);
    bool visible = Array.Exists(originCell.cellsVisible, element => element.Equals(destinationCell.id));
    if (!visible && usePeekingAtOrigin) visible = IsPositionPeekable(originCell, destinationCell);
    return visible;
  }
  public bool IsPositionPeekable(Vector3 origin, Vector3 destination, bool bothWays = false) {
    MapData.MapCell originCell = GetMapCell(origin);
    MapData.MapCell destinationCell = GetMapCell(destination);
    return IsPositionPeekable(originCell, destinationCell);
  }

  bool IsPositionPeekable(MapData.MapCell originCell, MapData.MapCell destinationCell) {
    if (!originCell.CanPeek) return false;
    bool visible = false;
    for (int i = 0; i < 4; i++) {
      if (originCell.peekDirection[i]) {
        MapData.MapCell coverPos = GetMapCell(originCell.mapPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward));
        if (Array.Exists(coverPos.cellsVisible, element => element.Equals(destinationCell.id))) {
          visible = true;
        }
      }
    }
    return visible;
  }

  public bool IsPositionPeekableEitherWay(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = GetMapCell(origin);
    MapData.MapCell destinationCell = GetMapCell(destination);
    for (int originIndex = 0; originIndex < 4; originIndex++) {
      if (originCell.peekDirection[originIndex]) {
        MapData.MapCell originPos = GetMapCell(originCell.mapPos + (Quaternion.AngleAxis(90 * originIndex, Vector3.up) * Vector3.forward));
        for (int destIndex = 0; destIndex < 4; destIndex++) {
          if (destinationCell.peekDirection[destIndex]) {
            MapData.MapCell destPos = GetMapCell(destinationCell.mapPos + (Quaternion.AngleAxis(90 * destIndex, Vector3.up) * Vector3.forward));
            if (Array.Exists(originPos.cellsVisible, element => element.Equals(destPos.id))) return true;
          }
        }
      }
    }
    return false;
  }

  public bool IsPositionPeekableLeft(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = GetMapCell(origin);
    MapData.MapCell destinationCell = GetMapCell(destination);
    if (!originCell.CanPeekLeft) return false;
    return IsPositionPeekable(originCell, destinationCell, -1);
  }

  public bool IsPositionPeekableRight(Vector3 origin, Vector3 destination) {
    MapData.MapCell originCell = GetMapCell(origin);
    MapData.MapCell destinationCell = GetMapCell(destination);
    if (!originCell.CanPeekRight) return false;
    return IsPositionPeekable(originCell, destinationCell, 1);
  }

  bool IsPositionPeekable(MapData.MapCell originCell, MapData.MapCell destinationCell, int side) {
    bool visible = false;
    MapData.MapCell coverPos = GetMapCell((side < 0) ? originCell.GetPeekLeftPos : originCell.GetPeekRightPos);

    if (Array.Exists(coverPos.cellsVisible, element => element.Equals(destinationCell.id))) {
      visible = true;
    }

    Color lineColor = (side < 0) ? Color.green : Color.blue;

    //Debug.DrawLine(coverPos.mapPos + Vector3.up, destinationCell.mapPos + Vector3.up, (visible ? lineColor : Color.red));
    return visible;
  }

  public bool FindCover(Vector3 searchPos, float searchRange, UnitControl searcher, float visualRange, out Vector3 safePos) {

    List<GameObject> possibleTargets = GetTargets(searcher);

    if (possibleTargets.Count < 1) {
      safePos = searchPos;
      return false;
    }
    float sqrVisualRange = visualRange * visualRange;
    List<MapData.MapCell> cellsInRange = mapData.GetMapArea(searchPos, Mathf.RoundToInt(searchRange));
    Dictionary<MapData.MapCell, float> scoredCells = new Dictionary<MapData.MapCell, float>();

    foreach (MapData.MapCell cell in cellsInRange) {

      if (!cell.HasCover) continue;
      if (cell.isCollision) continue;
      if (CellIsOccupied(cell)) continue;

      bool isVisible = false;
      float cellScore = Mathf.Infinity;

      foreach (GameObject target in possibleTargets) {
        if (PositionIsVisible(target.transform.position, cell.mapPos, true)) {
          isVisible = true;
        }
        float distanceFromSearch = (cell.mapPos - searchPos).sqrMagnitude;
        float distanceFromTarget = Mathf.Max(sqrVisualRange - (cell.mapPos - target.transform.position).sqrMagnitude, 0);
        bool goodFiringPosition = IsPositionPeekable(cell.mapPos, target.transform.position);

        cellScore = Mathf.Min(cellScore, distanceFromSearch);
        if (!goodFiringPosition) cellScore -= 1000;
      }

      scoredCells.Add(cell, (isVisible) ? Mathf.Infinity : cellScore);
    }

    if (scoredCells.Count < 1) {
      safePos = searchPos;
      return false;
    }

    var sortedCells = scoredCells.ToList();
    sortedCells.Sort((pair1, pair2) => pair1.Value.CompareTo(pair2.Value));
    safePos = sortedCells[0].Key.mapPos;

    if (Vector3.Distance(safePos, searcher.transform.position) < 1.0f) {
      safePos = searchPos;
      return false;
    }
    return true;
  }

  public bool FindSafePos(Vector3 searchPos, float searchRange, UnitControl searcher, float visualRange, out Vector3 safePos) {

    List<GameObject> possibleTargets = GetTargets(searcher);

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
      if (cell.isCollision) continue;
      if (CellIsOccupied(cell)) continue;

      foreach (GameObject target in possibleTargets) {
        if (PositionIsVisible(target.transform.position, cell.mapPos, true)) isVisible = true;

        float distanceFromSearch = (cell.mapPos - searchPos).sqrMagnitude + UnityEngine.Random.Range(0, sqrVisualRange);
        float distanceFromTarget = Mathf.Max(sqrVisualRange - (cell.mapPos - target.transform.position).sqrMagnitude, 0);

        cellScore = Mathf.Min(cellScore, (distanceFromSearch + distanceFromTarget) - (cell.HasCover ? 100 : 0));
      }
      scoredCells.Add(cell, (isVisible) ? Mathf.Infinity : cellScore);
    }

    if (scoredCells.Count < 1) {
      safePos = searchPos;
      return false;
    }

    safePos = scoredCells.OrderBy(element => element.Value).First().Key.mapPos;
    if (Vector3.Distance(safePos, searcher.transform.position) < 1.0f) {
      safePos = searchPos;
      return false;
    }
    return true;
  }

  public bool FindFiringPosition(Vector3 searchPos, float searchRange, UnitControl searcher, Vector3 targetPosition, bool requireCover, out Vector3 safePos) {

    List<MapData.MapCell> cellsInRange = mapData.GetMapArea(searchPos, Mathf.RoundToInt(searchRange));
    float sqrVisualRange = searchRange * searchRange;
    Dictionary<MapData.MapCell, float> scoredCells = new Dictionary<MapData.MapCell, float>();

    foreach (MapData.MapCell cell in cellsInRange) {
      float cellScore = Mathf.Infinity;
      if (cell.isCollision) continue;
      if (!IsPositionPeekable(cell.mapPos, targetPosition)) continue;
      if (PositionIsVisible(targetPosition, cell.mapPos, true)) continue;
      if (CellIsOccupied(cell)) continue;

      float distanceFromSearch = (cell.mapPos - searchPos).sqrMagnitude;

      cellScore = Mathf.Min(cellScore, distanceFromSearch);
      scoredCells.Add(cell, cellScore);
    }
    if (scoredCells.Count < 1) {
      safePos = searchPos;
      return false;
    }

    safePos = scoredCells.OrderBy(element => element.Value).First().Key.mapPos;
    if (Vector3.Distance(safePos, searcher.transform.position) < 1.0f) {
      safePos = searchPos;
      return false;
    }
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
    return GetMapCell(position).mapPos;
  }

  List<GameObject> GetTargets(UnitControl searcher) {
    List<GameObject> possibleTargets = new List<GameObject>();
    foreach (var enemyType in searcher.Enemies) possibleTargets.AddRange(GameObject.FindGameObjectsWithTag(enemyType));
    return possibleTargets;
  }

  bool CellIsOccupied(MapData.MapCell cell) {
    List<GameObject> allUnits = new List<GameObject>();
    foreach (var type in gameManager.UnitTypes) allUnits.AddRange(GameObject.FindGameObjectsWithTag(type));
    bool isOccupied = false;
    foreach (var unitObj in allUnits) {
      UnitControl unit = unitObj.GetComponent<UnitControl>();
      if (unit.IsDead) continue;
      if (Vector3.Distance(cell.mapPos, unit.OccupyingPosition) < 0.75) {
        isOccupied = true;
      }
    }
    return isOccupied;
  }
}