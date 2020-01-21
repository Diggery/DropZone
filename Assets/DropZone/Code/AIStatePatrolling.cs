using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIStatePatrolling : AIState {
  public override void StateInit() {
    base.StateInit();
    stateName = "Patrolling";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
  }

  public override void StateEnter() {
    base.StateEnter();
    animator.SetFloat("MoveSpeed", 0);
    brain.MoveTo(brain.NextWaypoint);
    navAgent.speed = 1.0f;
    unitControl.IsPatrolling = true;
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if ((transform.position - brain.NextWaypoint).magnitude < 1) brain.AdvanceWaypoints();
  }

  public override void StateExit() {
    base.StateExit();
    animator.SetFloat("MoveSpeed", 1);
    navAgent.speed = unitControl.MoveSpeed;
    unitControl.IsPatrolling = false;

  }

  public override void OnAttacked(UnitControl attacker) {
    base.OnAttacked(attacker);
    if (!targeting.CurrentTarget) targeting.CurrentTarget = attacker;
    brain.MoveToCover();
    Debug.Log("Yikes!  I got attacked");
  }

  public override void OnEnemySpotted(UnitControl attacker) {
    base.OnEnemySpotted(attacker);
    brain.MoveToFiringPosition(attacker.transform.position);
  }
}