using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

public class MapControl : MonoBehaviour {

  public Transform lowerLeftMarker;
  public Transform upperRightMarker;
  Vector2 mapSize;
  public MapData mapData;

  public static MapControl Instance { get; private set; }
  private void CreateInstance() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this.gameObject);
    }
  }

  void Awake() {
    CreateInstance();
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

  public bool IsPositionVisible(Vector3 pos1, Vector3 pos2) {
    MapData.MapCell cell1 = mapData.GetMapCell(pos1);
    MapData.MapCell cell2 = mapData.GetMapCell(pos2);
    return Array.Exists(cell1.cellsVisible, element => element.Equals(cell2.id));
  }

}
