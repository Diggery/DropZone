using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

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

  public float GetHeadingFromCover(bool[] cover) {

    if (cover[0]) return 180.0f;
    if (cover[1]) return 270.0f;
    if (cover[2]) return 0.0f;
    if (cover[3]) return 90.0f;

    return 0.0f;
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



}
