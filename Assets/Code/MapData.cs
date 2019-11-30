using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "MapData", menuName = "MapData")]
public class MapData : ScriptableObject {

  [System.Serializable]
  public class MapCell {
    public MapCell(int x, int y, Vector3 mapPos) {
      this.coord = new Vector2(x, y);
      this.mapPos = mapPos;
    }
    public Vector3 mapPos;
    public int id;
    public Vector2 coord;
    public bool isCollision;
    public bool[] coverDirection;
    public bool[] peekDirection;
    public int[] cellsVisible;

    public bool HasCover {
      get { return coverDirection[0] || coverDirection[1] || coverDirection[2] || coverDirection[3]; }
    }

    public bool CanPeek {
      get { return peekDirection[0] || peekDirection[1] || peekDirection[2] || peekDirection[3]; }
    }
  }

  [SerializeField]
  private Vector3 size;
  public Vector3 Size { get => size; set => size = value; }

  [SerializeField]
  private Vector3 origin;
  public Vector3 Origin { get => origin; set => origin = value; }
  public int maxVisualRange = 5;
  public float SqrRange {
    get {
      return maxVisualRange * maxVisualRange;
    }
  }
  public MapCell[] mapCells;

  public void CreateMap(Vector2 size) {
    mapCells = new MapCell[Mathf.FloorToInt(size.x) * Mathf.FloorToInt(size.y)];
    Size = size;
  }

  public List<MapCell> GetMapArea(Vector3 centerPos, int range) {
    int xCoord = Mathf.FloorToInt(centerPos.x - Origin.x);
    int yCoord = Mathf.FloorToInt(centerPos.z - Origin.z);

    int startX = Mathf.Max(xCoord - range, 0);
    int startY = Mathf.Max(yCoord - range, 0);
    int endX = Mathf.Min(xCoord + range, Mathf.FloorToInt(Size.x) - 1);
    int endY = Mathf.Min(yCoord + range, Mathf.FloorToInt(Size.y) - 1);

    List<MapCell> mapDataInRange = new List<MapCell>();

    for (int y = startY; y <= endY; ++y) {
      for (int x = startX; x <= endX; ++x) {
        mapDataInRange.Add(mapCells[y * Mathf.FloorToInt(Size.x) + x]);
      }
    }
    return mapDataInRange;
  }

  public MapCell GetMapCell(Vector3 mapPos) {
    int xPos = Mathf.FloorToInt(mapPos.x - Origin.x);
    int yPos = Mathf.FloorToInt(mapPos.z - Origin.z);
    int index = yPos * Mathf.FloorToInt(Size.x) + xPos;
    if (index < 0 || index > mapCells.Length - 1) {
      Debug.Log("Map Position: " + mapPos + " is off the map");
    }
    return mapCells[yPos * Mathf.FloorToInt(Size.x) + xPos];
  }
}
