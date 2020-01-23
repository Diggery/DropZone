﻿using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;

public class AIBrain : MonoBehaviour {
  public bool isBrainDead = false;
  public AISquadManager SquadManager { get; set; }

  AIState currentState;
  public AIState CurrentState {
    get {
      if (!currentState) Debug.Log(gameObject.name + " has no state");
      return currentState;
    }
    set { currentState = value; }
  }
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
  UnitTargeting targeting { get; set; }
  public Vector3 LastKnownPosition { get; set; }

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
    unitControl.damageTaken.AddListener(OnDamageTaken);

    gameObject.AddComponent<AIStateIdle>();
    gameObject.AddComponent<AIStateShooting>();
    gameObject.AddComponent<AIStateSearching>();
    gameObject.AddComponent<AIStateMelee>();
    gameObject.AddComponent<AIStatePatrolling>();
    gameObject.AddComponent<AIStateRetreating>();

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
    State = HasPatrol ? "Patrolling" : "Idle";
  }

  void Update() {
    if (isBrainDead) return;

    if (CurrentState)
      CurrentState.StateUpdate();

    if (targeting.CurrentTarget && targeting.TargetVisible)
      LastKnownPosition = targeting.CurrentTarget.transform.position;
  }

  public void MoveTo(Vector3 mapPos) {
    unitControl.MoveTo(mapPos);
  }

  public bool MoveToSafeSpot() {
    return MoveToSafeSpot(transform.position);
  }

  public bool MoveToSafeSpot(Vector3 position) {
    bool hasPosition = mapControl.FindSafePos(position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos);
    if (hasPosition) {
      MoveTo(safePos);
      return true;
    }
    return false;
  }

  public bool MoveToCover() {
    bool hasPosition = mapControl.FindSafePos(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos);
    if (hasPosition) {
      MoveTo(safePos);
      return true;
    }
    return false;
  }

  public bool MoveToFiringPosition(Vector3 targetPosition) {
    bool hasPosition = mapControl.FindFiringPosition(transform.position, targeting.VisualRange, unitControl, targetPosition, out Vector3 position);
    if (hasPosition) {
      MoveTo(position);
      return true;
    }
    return false;
  }

  public void TakeCover() {
    if (mapControl.FindCover(transform.position, targeting.VisualRange, unitControl, targeting.VisualRange, out Vector3 safePos)) {
      MoveTo(safePos);
    }
  }

  void OnMoveComplete() {
    CurrentState.OnMoveComplete();
  }

  public void AttackTarget(UnitControl enemy) {
    targeting.CurrentTarget = enemy;
    State = "Attacking";
  }

  public void OnAttacked(UnitControl enemy) {
    CurrentState.OnAttacked(enemy);
    SquadManager.UnitAttacked(enemy, this);
    if (SquadManager && unitControl.Hits < 5 && (State == "Shooting" || State == "Searching")) {
      MoveToSafeSpot(SquadManager.transform.position);
    }
  }

  public void OnDamageTaken(UnitControl enemy) {
    if (SquadManager) SquadManager.UnitInjured(enemy, this);
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

  public void GivingUp() {
    State = "Idle";
    if (SquadManager) SquadManager.UnitNeedOrders(this);
  }

}