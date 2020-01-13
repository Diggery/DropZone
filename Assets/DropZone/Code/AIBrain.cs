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

  float scanTimer = -1;
  float scanInterval = 1.0f;

  public bool showDebug;
  Queue<Vector3> patrolRoute = new Queue<Vector3>();

  public bool HasPatrol {
    get { return patrolRoute.Count > 0; }
  }
  public Vector3 NextWaypoint {
    get { return patrolRoute.Peek(); }
  }

  public AIBrain Init() {
    unitControl = GetComponent<UnitControl>();
    targeting = GetComponent<UnitTargeting>();
    mapControl = MapControl.Instance;
    unitControl.pathComplete.AddListener(MoveComplete);
    unitControl.attackAlert.AddListener(AttackAlert);

    gameObject.AddComponent<AIStateIdle>();
    gameObject.AddComponent<AIStateMoving>();
    gameObject.AddComponent<AIStateAttacking>();
    gameObject.AddComponent<AIStatePatrolling>();

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

    if (CurrentState && CurrentState.StateName.Equals("Idle") && scanTimer > 0) {
      scanTimer -= Time.deltaTime;
      if (scanTimer < 0) {
        CurrentTarget = targeting.ScanForTargets();
        scanTimer = scanInterval;
      }
    }
  }

  public void MoveTo(Vector3 mapPos) {
    if (State != "Patrolling") State = "Moving";
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

  public void AttackAlert(UnitControl attacker) {
    State = "Idle";
    MoveToSafeSpot(attacker);
  }

  public void AddPatrolRoute(List<Vector3> route) {
    patrolRoute.Clear();
    foreach (Vector3 point in route) patrolRoute.Enqueue(point);
  }
  public void AdvanceWaypoints() {
    Vector3 lastWaypoint = patrolRoute.Dequeue();
    patrolRoute.Enqueue(lastWaypoint);
    MoveTo(NextWaypoint);
  }

  public void FollowPatrolRoute() {
    State = "Patrolling";
  }
}
