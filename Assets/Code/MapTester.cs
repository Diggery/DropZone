using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapTester : MonoBehaviour {

  public MapControl mapControl;

  void Start() {

  }

  void Update() {
    DrawVisibleCells(transform.position, mapControl.mapData);
  }

  static void DrawVisibleCells(Vector3 firingPosition, MapData mapData) {
    MapData.MapCell firingCell = mapData.GetMapCell(firingPosition);

    if (firingCell.HasCover) {
      for (int i = 0; i < 4; i++) {
        if (firingCell.peekDirection[i]) {
          MapData.MapCell coverPos = mapData.GetMapCell(firingCell.mapPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward));
          Debug.DrawLine(coverPos.mapPos + (Vector3.up * 2), coverPos.mapPos, Color.blue);

          foreach (var cellId in coverPos.cellsVisible) {
            Debug.DrawLine(mapData.mapCells[cellId].mapPos + Vector3.up, mapData.mapCells[cellId].mapPos, Color.red);
          }
        }
      }
    }

    foreach (var cellId in firingCell.cellsVisible) {
      Debug.DrawLine(mapData.mapCells[cellId].mapPos + Vector3.up, mapData.mapCells[cellId].mapPos, Color.green);
    }
  }
}
