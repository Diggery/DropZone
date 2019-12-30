using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;

public class AIBrain : MonoBehaviour {
  public bool isBrainDead = false;
  Dictionary<string, AIState> states = new Dictionary<string, AIState>();
  public AIState CurrentState { get; set; }
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
  public UnitControl CurrentTarget { get; set; }

  UnitTargeting targeting { get; set; }

  public bool showDebug;

  public AIBrain Init() {
    unitControl = GetComponent<UnitControl>();
    targeting = GetComponent<UnitTargeting>();
    mapControl = MapControl.Instance;
    unitControl.pathComplete.AddListener(MoveComplete);

    gameObject.AddComponent<AIStateIdle>();
    gameObject.AddComponent<AIStateMoving>();
    gameObject.AddComponent<AIStateAttacking>();

    StartCoroutine(GatherStates());
    return this;
  }

  IEnumerator GatherStates() {
    yield return new WaitForEndOfFrame();
    AIState[] newStates = GetComponents<AIState>();
    foreach (AIState state in newStates) {
      state.StateInit();
      states.Add(state.StateName, state);
    }
    State = "Idle";
  }

  void Update() {
    if (isBrainDead) return;
    
    if (CurrentState)
      CurrentState.StateUpdate();
  }

  public void MoveTo(Vector3 mapPos) {
    State = "Moving";
    unitControl.MoveTo(mapPos);
  }

  public void MoveToSafeSpot(UnitControl closestEnenmy) {
    if (mapControl.FindSafePos(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos)) {
      MoveTo(safePos);
    } else {
      Debug.Log("Can't Find a safe space");
      AttackTarget(closestEnenmy);
    }
  }

  void MoveComplete() {
    State = "Idle";
  }

  public void AttackTarget(UnitControl enemy) {
    CurrentTarget = enemy;
    State = "Attacking";
  }
}
