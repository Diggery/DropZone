using UnityEngine;
using System.Collections;

public class MapTileSet : ScriptableObject {

    [System.Serializable]
    public class TilePiece {
        public string name;
        public GameObject tilePiece;
    }

    public TilePiece[] tiles;
    public TilePiece[] wallTiles;
    public TilePiece[] buildingTiles;
    public TilePiece groundTile;

    public GameObject GetTile(string name) {
        foreach (TilePiece tile in tiles) {
            if (tile.name.Equals(name)) {
                return tile.tilePiece;
            }
        }
        return null;
    }

    public GameObject GetWallTile(int length) {
        Debug.Log("getting a " + length + " long wall");
        return wallTiles[length - 1].tilePiece;
    }

    public GameObject GetBuilding(string size, out bool rotate) {
        char[] charArray = size.ToCharArray();
        System.Array.Reverse(charArray);
        string reversed_size = new string(charArray);
        rotate = false;

        foreach (TilePiece building in buildingTiles) {
            if (building.name.Equals(size)) {
                return building.tilePiece;
                
            } 
            if (building.name.Equals(reversed_size)) {
                rotate = true;
                return building.tilePiece;
            }
        }
        return null;
    }

    public GameObject GetGround() {
        return groundTile.tilePiece;
    }
}
