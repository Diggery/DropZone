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

    public bool CanPeekLeft {
      get {
        int direction = PeekLeftDirection;
        if (!HasCover || direction < 0) return false;
        return peekDirection[direction];
      }
    }
    public bool CanPeekRight {
      get {
        int direction = PeekRightDirection;
        if (!HasCover || direction < 0) return false;
        return peekDirection[direction];
      }
    }

    int PeekLeftDirection {
      get {
        if (coverDirection[0]) return 3;
        if (coverDirection[1]) return 0;
        if (coverDirection[2]) return 1;
        if (coverDirection[3]) return 2;
        return -1;
      }
    }
    int PeekRightDirection {
      get {
        if (coverDirection[0]) return 1;
        if (coverDirection[1]) return 2;
        if (coverDirection[2]) return 3;
        if (coverDirection[3]) return 0;
        return -1;
      }
    }

    public Vector3 GetPeekLeftPos {
      get {
        return mapPos + (Quaternion.AngleAxis(90 * PeekLeftDirection, Vector3.up) * Vector3.forward);
      }
    }

    public Vector3 GetPeekRightPos {
      get {
        return mapPos + (Quaternion.AngleAxis(90 * PeekRightDirection, Vector3.up) * Vector3.forward);
      }
    }
  }

  [SerializeField]
  private Vector3 size;
  public Vector3 Size { get => size; set => size = value; }

  [SerializeField]
  private Vector3 origin;
  public Vector3 Origin { get => origin; set => origin = value; }

  public int maxVisualRange = 25;
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
