using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class MapControl : MonoBehaviour {

  public Transform lowerLeftMarker;
  public Transform upperRightMarker;
  Vector2 mapSize;
  public MapData mapData;

  MapSelector mapSelector;

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
    if (!visible && usePeeking && originCell.CanPeek) {
      for (int i = 0; i < 4; i++) {
        if (originCell.peekDirection[i]) {
          MapData.MapCell coverPos = mapData.GetMapCell(originCell.mapPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward));
          if (Array.Exists(originCell.cellsVisible, element => element.Equals(destinationCell.id))) {
            visible = true;
          }
        }
      }
    }

    return visible;
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
