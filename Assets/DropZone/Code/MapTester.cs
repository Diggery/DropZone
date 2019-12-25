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

  public static void DrawVisibleCells(Vector3 firingPosition, MapData mapData) {
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

  public static void DrawAllCells(MapData mapData) {
    foreach (var cell in mapData.mapCells) {
      Color lineColor = new Color(1,1,1,0.1f);
      if (cell.isCollision)lineColor = Color.red;
      if (cell.HasCover)lineColor = Color.green;
      Debug.DrawLine(cell.mapPos + Vector3.up, cell.mapPos, lineColor, 10);
    }
  }
}