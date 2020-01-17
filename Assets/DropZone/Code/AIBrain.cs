using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;

public class AIBrain : MonoBehaviour {
  public bool isBrainDead = false;
  public AISquadManager SquadManager { get; set; }
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

  Dictionary<string, AIState> states = new Dictionary<string, AIState>();

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
    unitControl.pathComplete.AddListener(OnMoveComplete);
    unitControl.attackedAlert.AddListener(OnAttacked);
    unitControl.enemySpottedAlert.AddListener(OnEnemySpotted);

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

  public bool MoveToSafeSpot() {
    bool hasPosition = mapControl.FindSafePos(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos);
    if (hasPosition) {
      State = "Idle";
      MoveTo(safePos);
      return true;
    }
    return false;
  }

  public bool MoveToCover() {
    bool hasPosition = mapControl.FindSafePos(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos);
    if (hasPosition) {
      State = "Idle";
      MoveTo(safePos);
      return true;
    }
    return false;
  }

  public bool MoveToFiringPosition(UnitControl enemy) {
    bool hasPosition = mapControl.FindFiringPosition(transform.position, targeting.VisualRange, unitControl, enemy, out Vector3 position);
    if (hasPosition) {
      State = "Idle";
      MoveTo(position);
      return true;
    }
    return false;
  }

  

  public void TakeCover() {
    State = "Idle";
    if (mapControl.FindCover(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos)) {
      MoveTo(safePos);
    }
  }

  void OnMoveComplete() {
    State = "Idle";
  }

  public void AttackTarget(UnitControl enemy) {
    CurrentTarget = enemy;
    State = "Attacking";
  }

  public void OnAttacked(UnitControl enemy) {
    CurrentState.OnAttacked(enemy);
    SquadManager.UnitAttacked(enemy, this);
  }

  public void OnEnemySpotted(UnitControl enemy) {
    CurrentState.OnEnemySpotted(enemy);
    SquadManager.EnemySpotted(enemy, this);
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