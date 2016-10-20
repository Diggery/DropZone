using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[System.Serializable]
public class MapDataPoint {

    [SerializeField]
    MapControl mapControl;

    public string name;
    public Vector3 mapPos;
    public Vector2 mapLoc;
    public bool isHighCover;
    public bool isLowCover;


    [SerializeField]
    bool isClaimed;

    [SerializeField]
    bool isOccupied;

    [SerializeField]
    bool isCollision;

    [SerializeField]
    Quaternion coverRotation;

    [SerializeField]
    Vector3 coverDirection;

    [SerializeField]
    int coverId;
    public Vector2[] cellsVisible;
    public Vector2[] cellsVisibleFromCover;

    [SerializeField]    
    bool isRightSideClear;

    [SerializeField]    
    bool isLeftSideClear;


    [SerializeField]
    List<Vector3> firingPositions = new List<Vector3>();


    [SerializeField]
    int[] cover = new int[4];

    [SerializeField]
    float gridSize;

    public MapDataPoint(Vector3 _mapPos, bool _isCollision, float _gridSize) {
        this.mapPos = _mapPos;
        this.mapLoc = new Vector2(Mathf.FloorToInt(_mapPos.x), Mathf.FloorToInt(_mapPos.z));
        this.name = "MapPos " + this.mapLoc.x + ", " + this.mapLoc.y;
        this.isCollision = _isCollision;
        this.gridSize = _gridSize;
    }

    void AddFiringPosition(Vector3 _position) {
        firingPositions.Add(_position);
    }

    public Quaternion GetCoverRotation() {
        return coverRotation;
    }

    Vector3 GetCoverDirection() {
        return coverDirection;
    }

    int GetCoverId() {
        return coverId;
    }

    public void SetCollision(bool setting) {
        isCollision = setting;
    }

    public void SetOccupied(bool setting) {
        isOccupied = setting;
    }

    public void SetClaimed(bool setting) {
        isClaimed = setting;
    }

    public bool IsCollision() {
        return isCollision;
    }

    public bool IsOccupied() {
        return isOccupied;
    }

    public bool IsClaimed() {
        return isClaimed;
    }

    public bool IsCoverPoint() {
        return isLowCover || isHighCover;
    }

    public bool IsRightSideClear() {
        return isRightSideClear;
    }

    public bool IsLeftSideClear() {
        return isLeftSideClear;
    }

    public bool IsCorner() {
        return IsRightSideClear() || IsLeftSideClear();
    }

    public bool IsLowCover() {
        return isLowCover;
    }

    public void SetCover(int[] _cover) {
        cover = _cover;

        if (cover[0] == 0 && cover[1] < 2 && cover[2] < 2 && cover[3] < 2) {
            isHighCover = false;
            isLowCover = false;           
        } else if (cover[0] < 2 && cover[1] < 2 && cover[2] < 2 && cover[3] < 2) {
            isHighCover = false;
            isLowCover = true;
        } else {
            isHighCover = true;
            isLowCover = false;
        }

        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
        Debug.Log("Looking for Walls");

        if (Physics.Linecast(mapPos, mapPos + (Vector3.forward * gridSize), terrainMask)) {
            Debug.Log("Found Wall");
            coverRotation = Quaternion.AngleAxis(0, Vector3.up);
            coverDirection = Vector3.forward;
            coverId = 0;
        } else if (Physics.Linecast(mapPos, mapPos + (Vector3.right * gridSize), terrainMask)) {
            Debug.Log("Found Wall");
            coverRotation = Quaternion.AngleAxis(90, Vector3.up);
            coverDirection = Vector3.right;   
            coverId = 1;
        } else if (Physics.Linecast(mapPos, mapPos + (Vector3.back * gridSize), terrainMask)) {
            Debug.Log("Found Wall");
            coverRotation = Quaternion.AngleAxis(180, Vector3.up);
            coverDirection = Vector3.back;   
            coverId = 2;
        } else if (Physics.Linecast(mapPos, mapPos + (Vector3.left * gridSize), terrainMask)) {
            Debug.Log("Found Wall");
            coverRotation = Quaternion.AngleAxis(-90, Vector3.up);
            coverDirection = Vector3.left;
            coverId = 3;
        }
        SetCornerFlags();
    }

    public int[] GetCover() {
        return cover;
    }

    void SetCornerFlags() {

        int edgeDirection = GetCoverId(); 

        Vector3 rightStartPos = Vector3.zero;
        Vector3 rightEndPos = Vector3.zero;
        Vector3 leftStartPos = Vector3.zero;
        Vector3 leftEndPos = Vector3.zero;
        isRightSideClear = false;
        isLeftSideClear = false;

        if (edgeDirection == 0) {
            rightStartPos = mapPos + (Vector3.right * gridSize);
            rightEndPos = rightStartPos + (Vector3.forward * gridSize);

            leftStartPos = mapPos + (Vector3.left * gridSize);
            leftEndPos = leftStartPos + (Vector3.forward * gridSize);
        }

        if (edgeDirection == 1) {
            rightStartPos = mapPos + (Vector3.back * gridSize);
            rightEndPos = rightStartPos + (Vector3.right * gridSize);

            leftStartPos = mapPos + (Vector3.forward * gridSize);
            leftEndPos = leftStartPos + (Vector3.right * gridSize);
        }

        if (edgeDirection == 2) {
            rightStartPos = mapPos + (Vector3.left * gridSize);
            rightEndPos = rightStartPos + (Vector3.back * gridSize);

            leftStartPos = mapPos + (Vector3.right * gridSize);
            leftEndPos = leftStartPos + (Vector3.back * gridSize);
        }

        if (edgeDirection == 3) {
            rightStartPos = mapPos + (Vector3.forward * gridSize);
            rightEndPos = rightStartPos + (Vector3.back * gridSize);

            leftStartPos = mapPos + (Vector3.back * gridSize);
            leftEndPos = leftStartPos + (Vector3.left * gridSize);
        }
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

        if (!Physics.Linecast(rightStartPos, rightEndPos, terrainMask)) {
            isRightSideClear = true;
            AddFiringPosition(rightStartPos);
        }
        if (!Physics.Linecast(leftStartPos, leftEndPos, terrainMask)) {
            isLeftSideClear = true;
            AddFiringPosition(leftStartPos);
        }
    }

    public Vector3[] GetFiringPositions() { 
        return firingPositions.ToArray();
    }

    public int GetCoverRating(GameObject[] targets) {

        if (!mapControl) mapControl = MapControl.GetInstance();

        int score = 0;

        foreach (GameObject target in targets) {
            //deduct points for enemies that can see this point
            if (mapControl.IsPositionVisible(target.transform.position, mapPos)) score -= 1;

            // add points if you can hit a target from behind cover
            if (IsCorner()) {
                foreach (Vector3 firingPosition in firingPositions) if (mapControl.IsPositionVisible(target.transform.position, firingPosition)) score += 2;
            } 

            //remove points if its too close to a target
            float closeDistance = 2;
            if ((target.transform.position - mapPos).sqrMagnitude < (closeDistance * closeDistance)) {
                score -= 3;
            }
        }
        return score;
    }
}
