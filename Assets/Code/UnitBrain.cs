using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;

public class UnitBrain : MonoBehaviour {

  Dictionary<string, UnitState> states = new Dictionary<string, UnitState>();
  public UnitState CurrentState { get; set; }
  public string State {
    get {
      return CurrentState.StateName;
    }

    set {
      if (CurrentState && value.Equals(CurrentState.StateName)) return;

      if (states.ContainsKey(value)) {
        if (CurrentState) CurrentState.StateExit();
        CurrentState = states[value];
        CurrentState.StateEnter();
      } else {
        Debug.Log("There is no state called " + value);
      }
    }
  }

  UnitControl unitControl;
  MapControl mapControl;
  NavMeshAgent navAgent;

  float visualRange = 10;
  float SqrVisualRange { get; set;}
  public bool showDebug;

  void Start() {
    unitControl = GetComponent<UnitControl>();
    mapControl = MapControl.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    SqrVisualRange = visualRange * visualRange;
    unitControl.pathComplete.AddListener(MoveComplete);
    GatherStates();
  }

  void GatherStates() {
    UnitState[] newStates = GetComponents<UnitState>();
    foreach (UnitState state in newStates) {
      state.StateInit();
      states.Add(state.StateName, state);
    }
    State = "Idle";
  }

  void Update() {
    CurrentState.StateUpdate();
  }

  public void MoveTo(Vector3 mapPos) {
    State = "Moving";
    unitControl.MoveTo(mapPos);
  }

  public void MoveToSafeSpot() {
    Debug.Log("Need to move to a safe spot");
    if (FindSafePos(transform.position, SqrVisualRange, gameObject.tag, out Vector3 safePos)) {
      MoveTo(safePos);
    } else {
      Debug.Log("Can't Find a safe space");
    }
    
  }

  void MoveComplete() {
    State = "Idle";

  }

  public UnitControl ScanForTargets() {

    GameObject[] possibleTargets = GameObject.FindGameObjectsWithTag("Player");
    LayerMask terrainMask = LayerMask.GetMask("Terrain");
    float closestDistance = Mathf.Infinity;
    UnitControl closestTarget = null;

    foreach (GameObject target in possibleTargets) {

      UnitControl targetControl = target.GetComponent<UnitControl>();
      if (!targetControl || targetControl.IsDestroyed) {
        Debug.Log("targets has no control, or is destyroyed");
        continue;
      }

      float targetDistance = (target.transform.position - transform.position).sqrMagnitude;

      if (targetDistance > SqrVisualRange) {
        if (showDebug) Debug.Log("targets is outside of visual range");
        continue;
      }

      if (closestTarget && closestDistance < targetDistance) continue;

      Ray ray = new Ray(
          transform.position + (Vector3.up * 0.75f),
          (target.transform.position - transform.position).normalized
      );

      if (!Physics.Raycast(ray, targetDistance, terrainMask)) {
        closestTarget = targetControl;
        closestDistance = targetDistance;
      } else {
        if (showDebug) Debug.Log("targets is blocked by terrain");
      }
    }
    return closestTarget;

  }

  public bool FindSafePos(Vector3 searchPos, float searchRange, string tag, out Vector3 safePos) {
    GameObject[] targets;

    if (tag.Equals("Player")) {
      targets = GameObject.FindGameObjectsWithTag("Enemy");
    } else if (tag.Equals("Enemy")) {
      targets = GameObject.FindGameObjectsWithTag("Player");
    } else {
      safePos = searchPos;
      return false;
    }

    List<MapData.MapCell> cellsInRange = mapControl.mapData.GetMapArea(searchPos, Mathf.RoundToInt(searchRange));
    Dictionary<MapData.MapCell, float> cellsThatAreSafe = new Dictionary<MapData.MapCell, float>();

    for (int i = 0; i < cellsInRange.Count; i++) {
      if (cellsInRange[i].isCollision) continue;
      foreach (GameObject target in targets) {

        if (!mapControl.IsPositionVisible(target.transform.position, cellsInRange[i].mapPos)) {
          float distanceFromSearch = (cellsInRange[i].mapPos - searchPos).sqrMagnitude + Random.Range(0, SqrVisualRange);
          float distanceFromTarget = Mathf.Max(SqrVisualRange - (cellsInRange[i].mapPos - target.transform.position).sqrMagnitude, 0);
          cellsThatAreSafe.Add(cellsInRange[i], distanceFromSearch + distanceFromTarget);
        }
      }
    }

    if (cellsThatAreSafe.Count < 1) {
      safePos = searchPos;
      return false;
    }

    var sortedCells = cellsThatAreSafe.OrderBy(element => element.Value);
    safePos = sortedCells.First().Key.mapPos;
    return true;
  }
}
