using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
  float visualRange = 10;
  public bool showDebug;
    
  void Start() {
    unitControl = GetComponent<UnitControl>();
    visualRange = visualRange * visualRange;
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

      if (targetDistance > visualRange) {
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

    if (closestTarget) {
      return closestTarget;
    } else {
      return null;
    }
  }
}
