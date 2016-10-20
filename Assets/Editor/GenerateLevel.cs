using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class GenerateLevel {

    public class LevelData {
        public Vector2 mapSize;
        public string tileSetName;
        private string[,] tileMap;

        public LevelData() {

        }

        public void CreateTileType(int xSize, int ySize) {
            tileMap = new string[xSize, ySize];
        }

        public string GetTileType(int xPos, int yPos) {
            if (xPos < 0 || xPos >= mapSize.x ||
                yPos < 0 || yPos >= mapSize.y) {
                return "X";
            }
            return tileMap[xPos, yPos];
        }

        public void SetTileType(int xPos, int yPos, string type) {
            if (xPos < 0 || xPos >= mapSize.x ||
                yPos < 0 || yPos >= mapSize.y) {
                return;
            }
            tileMap[xPos, yPos] = type;
        }
    }

    public static LevelData levelData;

    public static int gridSize = 1;

    [MenuItem("DropZone/Generate Level")]
    public static void BuildLevel() {
        
        string path = EditorUtility.OpenFilePanel(
                          "Open Level CSV File",
                          "",
                          "csv");
        if (path.Length != 0) {
            FillOutLevelData(path);

            AddBuildings();
            AddWallCorners();
            AddLowWallCorners();
            AddWallEnds();
            AddWallSections();

            AddGround();

            CreateTiles();
        } else {
            Debug.Log("Path is not valid");
        }

    }


    public static void FillOutLevelData(string path) {
        
        StreamReader fileStream = new StreamReader(path);
        string levelFile = fileStream.ReadToEnd();
        fileStream.Close();


        string[] levelInfo = levelFile.Split(',');

        levelData = new LevelData();

        levelData.mapSize = levelChunkToSize(levelInfo[0].Split('x'));
        levelData.tileSetName = levelInfo[2];
        levelData.CreateTileType((int)levelData.mapSize.x, (int)levelData.mapSize.y);

        string[] levelCellRows = levelFile.Split('\n');

        for (int row = 1; row <= levelData.mapSize.y; row++) {
            string[] levelCells = levelCellRows[row].Split(',');

            for (int cellIndex = 0; cellIndex < levelData.mapSize.x; cellIndex++) {
                
                string cellData = levelCells[cellIndex].Trim();
                cellData.Replace(".", "░");

                levelData.SetTileType(cellIndex, row - 1, cellData);

                //Debug.Log("celldata at " + cell + ", " + row + ": " + levelData.tileMap[cell, row - 1]);
            }
        }
        Debug.Log("levelData Completed");   
    }

    public static void LogMapOutput() {
        string testOutput = "test output: \n";
        for (int row = 0; row < levelData.mapSize.y; row++) {
            for (int column = 0; column < levelData.mapSize.x; column++) {
                testOutput += levelData.GetTileType(column, row);
            }
            testOutput += "\n";
        }
        Debug.Log(testOutput);       
    }

    public static void LogMapOutput(LevelData data) {
        string testOutput = "test output: \n";
        for (int row = 0; row < data.mapSize.y; row++) {
            for (int column = 0; column < data.mapSize.x; column++) {
                testOutput += data.GetTileType(column, row);
            }
            testOutput += "\n";
        }
        Debug.Log(testOutput);       
    }

    public static Vector2 levelChunkToSize(string[] chunk) { 
        int xSize = 0;
        int ySize = 0;
        if (!int.TryParse(chunk[0], out xSize)) {
            Debug.Log("Level File has no X size");   
        }
        if (!int.TryParse(chunk[1], out ySize)) {
            Debug.Log("Level File has no Y size");   
        }
        //Debug.Log("Level size is " + xSize + ", " + ySize);

        return new Vector2(xSize, ySize);
    }

    public static void CreateTiles() {
        LogMapOutput();
        string containerName = string.Format("Assets/TileSets/{0}/TileContainer.asset", levelData.tileSetName);
        MapTileSet tileSet = (MapTileSet)AssetDatabase.LoadAssetAtPath(containerName, typeof(MapTileSet));
        GameObject mapSection = PrefabUtility.InstantiatePrefab(tileSet.GetGround()) as GameObject;
        mapSection.transform.position = new Vector3(-levelData.mapSize.x * 0.5f, 0, levelData.mapSize.y);
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {
                
                if (levelData.GetTileType(column, row) == null) {
                    Debug.Log("No cell data at " + column + ", " + row);
                }

                GameObject prefab = null;
                int rotation = 0;
                Vector3 tilePos = new Vector3(column * gridSize, 0, -row * gridSize);
                string type = levelData.GetTileType(column, row);

                if (type.Length < 1) {
                    Debug.Log(column + "," + row + " is blank " + type);
                    continue;
                }
                switch (type[0]) {
                    
                    case '█':
                        prefab = tileSet.GetTile("Wall_1x1");

                        break;
                    case '▄': 
                        prefab = tileSet.GetTile("LowWall_1x1");
                        break;
                    case 'E': 
                        prefab = tileSet.GetWallTile(int.Parse(type.Remove(0, 1)));
                        rotation = 0;
                        break;
                    case 'e': 
                        prefab = tileSet.GetWallTile(int.Parse(type.Remove(0, 1)));
                        rotation = 0;
                        break;
                    case 'S': 
                        prefab = tileSet.GetWallTile(int.Parse(type.Remove(0, 1)));
                        rotation = 90;
                        break;
                    case 's': 
                        prefab = tileSet.GetWallTile(int.Parse(type.Remove(0, 1)));
                        rotation = 90;
                        break;
                    case 'C': 
                        prefab = tileSet.GetTile("Corner");
                        rotation = int.Parse(type.Remove(0, 1));
                        break;
                    case 'c': 
                        prefab = tileSet.GetTile("LowCorner");
                        rotation = int.Parse(type.Remove(0, 1));
                        break;
                    case 'W': 
                        prefab = tileSet.GetTile("Wall_end");
                        rotation = int.Parse(type.Remove(0, 1));
                        break;
                    case 'w': 
                        prefab = tileSet.GetTile("LowWall_end");
                        rotation = int.Parse(type.Remove(0, 1));
                        break;
                    case 'B':
                        string size = type.Remove(0, 1);
                        bool rotate;
                        prefab = tileSet.GetBuilding(size, out rotate);
                        if (rotate) {
                            rotation = -90;
                            string zOffset = size.Remove(0, 2);
                            tilePos.z -= int.Parse(zOffset) - 1;
                        } else {
                            rotation = 0;

                        }

                        break;
                    default :
                        break;
                        
                }
                if (prefab) {
                    GameObject mapPiece = PrefabUtility.InstantiatePrefab(prefab) as GameObject;

                    mapPiece.transform.parent = mapSection.transform;
                    mapPiece.transform.localPosition = tilePos + new Vector3(0.5f, 0, 0.5f);                   
                    mapPiece.transform.localRotation = Quaternion.AngleAxis(rotation, Vector3.up); 
                }
            }
        }
    }

    public static void AddBuildings() {
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {
                if (levelData.GetTileType(column + 0, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 1).Equals("█")) {
                    int width = 1;
                    while (levelData.GetTileType(column + width, row).Equals("█")) {
                        width++;//move over one
                    }
                    int height = 1;
                    while (levelData.GetTileType(column, row + height).Equals("█")) {
                        height++;//move over one
                    }
                    Debug.Log(string.Format("Building at {0},{1} has a size of {2}x{3}", column, row, width, height));
                    AddBuilding(column, row, width, height);
                }
            }
        }
    }

    public static void AddWallCorners() {
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {
  
                //test for NW corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("█")) {

                    levelData.SetTileType(column + 0, row + 0, "C0");
                    levelData.SetTileType(column + 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 1, "X");
                }

                //test for NE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("█")) {

                    levelData.SetTileType(column - 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 0, "C90");
                    levelData.SetTileType(column + 0, row + 1, "X");
                }

                //test for SE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("█") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) {

                    levelData.SetTileType(column - 0, row - 1, "X");
                    levelData.SetTileType(column - 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 0, "C180");
                }

                //test for SE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("█") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("█") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) {

                    levelData.SetTileType(column - 0, row - 1, "X");
                    levelData.SetTileType(column + 0, row + 0, "C270");
                    levelData.SetTileType(column + 1, row + 0, "X");
                }
            }
        }
    }

    public static void AddLowWallCorners() {
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {

                //test for NW corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("▄")) {

                    levelData.SetTileType(column + 0, row + 0, "c0");
                    levelData.SetTileType(column + 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 1, "X");
                }

                //test for NE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("▄")) {

                    levelData.SetTileType(column - 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 0, "c90");
                    levelData.SetTileType(column + 0, row + 1, "X");
                }

                //test for SE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("▄") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) {

                    levelData.SetTileType(column - 0, row - 1, "X");
                    levelData.SetTileType(column - 1, row + 0, "X");
                    levelData.SetTileType(column + 0, row + 0, "c180");
                }

                //test for SE corner
                if (levelData.GetTileType(column + 0, row - 1).Equals("▄") &&
                    levelData.GetTileType(column - 1, row + 0).Equals("░") &&
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 1, row + 0).Equals("▄") &&
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) {

                    levelData.SetTileType(column - 0, row - 1, "X");
                    levelData.SetTileType(column + 0, row + 0, "c270");
                    levelData.SetTileType(column + 1, row + 0, "X");
                }
            }
        }
    }

    public static void AddWallEnds() {
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {


                //test for N Wall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("█") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    !levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "W0");
                }
                //test for E Wall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    !levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("█") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "W90");
                }
                //test for S Wall End
                if (!levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("█") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "W180");
                }
                //test for W Wall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("█") && //Center
                    !levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "W270");
                }
                //test for N LowWall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    !levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "w0");
                }
                //test for E LowWall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    !levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "w90");
                }
                //test for S LowWall End
                if (!levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") && //Center
                    levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "w180");
                }
                //test for W LowWall End
                if (levelData.GetTileType(column + 0, row - 1).Equals("░") && //North
                    levelData.GetTileType(column - 1, row + 0).Equals("░") && //West
                    levelData.GetTileType(column + 0, row + 0).Equals("▄") && //Center
                    !levelData.GetTileType(column + 1, row + 0).Equals("░") && //East
                    levelData.GetTileType(column + 0, row + 1).Equals("░")) { //South

                    levelData.SetTileType(column + 0, row + 0, "w270");
                }
            }
        }
    }

    public static void AddWallSections() {
        for (int column = 0; column < levelData.mapSize.x; column++) {
            for (int row = 0; row < levelData.mapSize.y; row++) {

                if (levelData.GetTileType(column, row).Equals("█")) {
                    int runLength = 1;

                    //check for west running wall
                    while (levelData.GetTileType(column + runLength, row).Equals("█")) {
                        runLength++;//move over one
                        if (!levelData.GetTileType(column + runLength, row).Equals("█")) { //is the wall still going?
                            AddEastRunningWall(column, row, runLength);
                        }
                        if (runLength >= 8) {//this is the longest wall we have, so start over
                            AddEastRunningWall(column, row, runLength);
                            runLength = 1;
                        }
                    }

                    //check for south running wall
                    while (levelData.GetTileType(column, row + runLength).Equals("█")) {
                        runLength++;//move down one
                        if (!levelData.GetTileType(column, row + runLength).Equals("█")) { //is the wall still going?
                            AddSouthRunningWall(column, row, runLength);
                        }
                        if (runLength >= 8) {//this is the longest wall we have, so start over
                            AddSouthRunningWall(column, row, runLength);
                            runLength = 1;
                        }
                    }
                }
            }
        }
 
    }

    public static void  AddBuilding(int xPos, int yPos, int width, int height) {
        for (int column = xPos; column < xPos + width; column++) {
            for (int row = yPos; row < yPos + height; row++) {
                levelData.SetTileType(column, row, "X");
            }
        }
        levelData.SetTileType(xPos, yPos, string.Format("B{0}x{1}", width, height));
    }

    public static void AddEastRunningWall(int xPos, int yPos, int runLength) {
        levelData.SetTileType(xPos, yPos, "E" + runLength);
        for (int length = 1; length < runLength; length++) {
            levelData.SetTileType(xPos + length, yPos, "X");    
        }
    }

    public static void AddSouthRunningWall(int xPos, int yPos, int runLength) {
        levelData.SetTileType(xPos, yPos, "S" + runLength);
        for (int length = 1; length < runLength; length++) {
            levelData.SetTileType(xPos, yPos + length, "X");    
        }
    }

    public static void AddGround() {

    }
}