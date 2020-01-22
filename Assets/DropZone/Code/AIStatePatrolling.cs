using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIStatePatrolling : AIState {

  float stoppingDistance;
  public override void StateInit() {
    base.StateInit();
    stateName = "Patrolling";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
    stoppingDistance = navAgent.stoppingDistance;
  }

  public override void StateEnter() {
    base.StateEnter();
    animator.SetFloat("MoveSpeed", 0);
    brain.MoveTo(brain.NextWaypoint);
    navAgent.speed = 1.0f;
    navAgent.stoppingDistance = 0.25f;
    unitControl.IsPatrolling = true;
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if (Vector3.Distance(transform.position, brain.NextWaypoint) < 1) {
      brain.AdvanceWaypoints();
    }
  }

  public override void StateExit() {
    base.StateExit();
    animator.SetFloat("MoveSpeed", 1);
    navAgent.speed = unitControl.MoveSpeed;
    navAgent.stoppingDistance = stoppingDistance;

    unitControl.IsPatrolling = false;

  }

  public override void OnAttacked(UnitControl attacker) {
    base.OnAttacked(attacker);
    if (!targeting.CurrentTarget) targeting.CurrentTarget = attacker;
    brain.MoveToCover();
    brain.State = "Shooting";
    Debug.Log("Yikes!  I got attacked");
  }

  public override void OnEnemySpotted(UnitControl attacker) {
    base.OnEnemySpotted(attacker);
    brain.State = "Shooting";
    brain.MoveToFiringPosition(attacker.transform.position);
  }
}