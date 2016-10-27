using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class UnitMover : Pathfinding {

    UnitControl unitControl;
    Animator animator;
    float unitSize = 0.6f;
    float turnSpeed = 360.0f;
    float moveSpeed = 3.5f;

    [System.Serializable]
    public class PathNode {
        public Vector3 position;
        public float pathThreshold = 0.25f * 0.25f;
        public int corner = 0;

        public PathNode(Vector3 previousPos, Vector3 currentPos, Vector3 nextPos) {
            this.position = currentPos;
            if (previousPos == currentPos) {
                
            } else if (currentPos == nextPos) {
                this.pathThreshold = 1.0f;
            } else {
                Vector3 dir1 = currentPos - previousPos;
                Vector3 dir2 = nextPos - currentPos;
                Vector3 right = Quaternion.AngleAxis(90, Vector3.up) * dir1;
                float angleToNext = Vector3.Angle(dir1, dir2) * Mathf.Sign(Vector3.Dot(dir2, right)); 

                if (angleToNext > 80 && angleToNext < 100) {
                    this.corner = 1;
                    this.pathThreshold = 1.0f;
                }
                if (angleToNext < -80 && angleToNext > -100) {
                    this.corner = -1;
                    this.pathThreshold = 1.0f;
                }
            }
        }
    }

    public List<PathNode> activePath = new List<PathNode>();
    bool waitingForPath;
    bool showingTempPath;
    bool isMoving;
    bool isRotatingInAnim;
    bool finishingMove;
    float finishTimer;
    float coolDownTimer;

    Vector3 tempDestination;
    Vector3[] finishPos = new Vector3[2];
    Quaternion[] finishRot = new Quaternion[2];

    LineDrawer pathLine;

    void Start() {
        unitControl = GetComponent<UnitControl>();
        pathLine = GetComponent<LineDrawer>();
        animator = GetComponent<Animator>();
    }

    void Update() {
        if (unitControl.dead) return;

        if (coolDownTimer > 0) coolDownTimer -= GameTime.deltaTime;

        if (Path.Count > 0) {
            if (waitingForPath) {
                Path[0] = transform.position;
                Path[Path.Count - 1] = finishPos[1];
                Path = SimplifyPath(Path);
                StartPath(finishPos[1]); 
                return;
            }
          
            if (showingTempPath && Path[Path.Count - 1] != tempDestination) { 
                Path[0] = transform.position;
                Path[Path.Count - 1] = tempDestination;
                Path = SimplifyPath(Path);
                DrawPath();
            }
        }
        if (activePath.Count > 0) {
            MoveToWaypoint();
        }
        if (finishingMove) {
            Debug.Log("Finshing move");
            finishTimer -= Time.deltaTime * 3;
            float amount = Util.EaseOutQuad(finishTimer);
            transform.position = Vector3.Lerp(finishPos[1], finishPos[0], finishTimer);
            transform.rotation = Quaternion.Lerp(finishRot[1], finishRot[0], finishTimer);
            if (finishTimer < 0) {
                finishingMove = false;
            }
        }
    }

    public bool HasPath() {
        return (activePath.Count > 0);
    }

    public void StartPath(Vector3 newDestination) {

        if (showingTempPath) {
            Debug.Log("Clearing Temp Path");
            Path.Clear();
            showingTempPath = false;
        }

        finishPos[1] = newDestination; 

        if (Path.Count < 1) {
            waitingForPath = true;
            Debug.Log("Finding new path");
            FindPath(transform.position, newDestination);
            return;
        }

        waitingForPath = false;
        animator.SetBool("hasPath", true); 
        Path[0] = transform.position;
        Path[Path.Count - 1] = finishPos[1];
        if (pathLine.testPath.Length > 0) {
            activePath.Clear();
            for (int i = 0; i < pathLine.testPath.Length; i++) {
                Vector3 previousPos = pathLine.testPath[Mathf.Clamp(i - 1, 0, pathLine.testPath.Length - 1)].position;
                Vector3 currentPos = pathLine.testPath[i].position;
                Vector3 nextPos = pathLine.testPath[Mathf.Clamp(i + 1, 0, pathLine.testPath.Length - 1)].position;
                PathNode pathNode = new PathNode(previousPos, currentPos, nextPos);
                activePath.Add(pathNode);
            }
        } else {
            for (int i = 0; i < Path.Count; i++) {
                Vector3 previousPos = Path[Mathf.Clamp(i - 1, 0, Path.Count - 1)];
                Vector3 currentPos = Path[i];
                Vector3 nextPos = Path[Mathf.Clamp(i + 1, 0, Path.Count - 1)];
                PathNode pathNode = new PathNode(previousPos, currentPos, nextPos);
                activePath.Add(pathNode);
            }
        }

        Path.Clear();
        ClearPathLine();
    }

    void MoveToWaypoint() {
        PathNode currentPoint = activePath[0];

        Vector3 targetVector = new Vector3(currentPoint.position.x, 0, currentPoint.position.z) -
                               new Vector3(transform.position.x, 0, transform.position.z);

        if ((currentPoint.position - transform.position).sqrMagnitude < currentPoint.pathThreshold) {
            if (activePath.Count > 1) {
                activePath.RemoveAt(0);
                if (currentPoint.corner != 0) {
                    isRotatingInAnim = true;
                    string anim = currentPoint.corner < 0 ? "CornerLeft" : "CornerRight";
                    animator.SetTrigger(anim);
                }
            } else {
                FinishPath();
                return;
            }
        }

        if (!finishingMove && !isRotatingInAnim && targetVector.sqrMagnitude > Mathf.Epsilon) {
            Quaternion rotGoal = Quaternion.LookRotation(targetVector);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, rotGoal, Time.deltaTime * turnSpeed);
        }
    }

    void DrawPath() {
        if (Path.Count > 1 && pathLine) {
            pathLine.DrawLine(Path.ToArray());  
        }
    }

    void FinishPath() {
        ClearPathLine();

        MapDataPoint mapData = MapControl.GetInstance().GetMapData(finishPos[1]);
        if (mapData.IsCoverPoint()) {
            finishRot[0] = transform.rotation; 
            finishRot[1] = mapData.GetCoverRotation();
            finishPos[0] = transform.position; 
            finishTimer = 1.0f;
            finishingMove = true;
        }

        activePath.Clear();
        animator.SetBool("hasPath", false); 
    }

    public void ClearPathLine() {
        pathLine.ClearLine(true);
    }

    public List<Vector3> SimplifyPath(List<Vector3> complexPath) {
        
        float characterRadius = unitSize;
        
        List<Vector3> simplePath = new List<Vector3>();
        simplePath.Add(complexPath[0]);
              
        for (int currentNode = 0; currentNode < complexPath.Count; currentNode++) {
            simplePath.Add(complexPath[currentNode]);
                  
            // check from the end of the list towards the current position
            for (int reverseCount = complexPath.Count - 1; reverseCount > currentNode + 1; reverseCount--) {
                  
                Vector3 currentNodePos = complexPath[currentNode];
                      
                // don't remove nodes if a wall is being jumped
                float hieghtDistance = currentNodePos.y - complexPath[currentNode + 1].y;
                bool hieghtIsSame = hieghtDistance < 0.001f && -hieghtDistance < 0.001f;
                if (currentNode + 1 < complexPath.Count && !hieghtIsSame) continue;
                      
                currentNodePos.y = characterRadius + 0.1f;
        
                Vector3 nextNodePos = complexPath[reverseCount];
                nextNodePos.y = characterRadius + 0.1f;
        
                LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
                Ray pathRay = new Ray(currentNodePos, (nextNodePos - currentNodePos).normalized);
                float distance = (nextNodePos - currentNodePos).magnitude;

                if (!Physics.SphereCast(pathRay, characterRadius * 0.5f, distance, terrainMask)) {
                    currentNode = reverseCount - 1;
                    Debug.DrawLine(currentNodePos, nextNodePos, Color.green, 10.0f);
                } else {
                    Debug.DrawLine(currentNodePos, nextNodePos, Color.red, 10.0f);
                }
            }
        }
              
        for (int i = 0; i < simplePath.Count - 1; i++) {
            if (simplePath[i] == simplePath[i + 1]) {
                simplePath.RemoveAt(i + 1);
            }
        }
        return simplePath;
    }

    public void UpdateTempPath(Vector3 newDestination) {
        if (coolDownTimer > 0) return;
        Debug.Log("Getting path to " + newDestination);
        FindPath(transform.position, newDestination);
        tempDestination = newDestination;
        showingTempPath = true;
        coolDownTimer = 0.25f;
    }

    public Vector3 GetDestination() {
        return finishPos[1];
    }

    public void SetMovingFlag(bool setting) {
        isMoving = setting;
    }

    public void SetRotatingFlag(bool setting) {
        isRotatingInAnim = setting;
    }
}
