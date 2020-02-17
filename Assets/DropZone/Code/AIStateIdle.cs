using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateIdle : AIState {

  float stoppingDistance;
  public override void StateInit() {
    base.StateInit();
    stateName = "Idle";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
    stoppingDistance = navAgent.stoppingDistance;
  }

  public override void StateEnter() {
    base.StateEnter();

    if (brain.HasPatrol) {
      animator.SetFloat("MoveSpeed", 0);
      brain.MoveTo(brain.NextWaypoint);
      navAgent.speed = 1.0f;
      navAgent.stoppingDistance = 0.25f;
      unitControl.IsPatrolling = true;
    }

  }

  public override void StateUpdate() {
    base.StateUpdate();

    if (brain.HasPatrol) {
      if (Vector3.Distance(transform.position, brain.NextWaypoint) < 1) {
        brain.AdvanceWaypoints();
      }
    }
    if (timeInState < 2.0f) return; //do do anything if we just got here

    if (targeting.CurrentTarget) {
      if (targeting.TargetVisible) {
        brain.State = brain.MeleeOnly ? "Melee" : "Shooting";
      } 
    }

    if (unitControl.IsPatrolling) {
      if (Vector3.Distance(transform.position, brain.NextWaypoint) < 1) {
        brain.AdvanceWaypoints();
      }
    } else {
      if (brain.HasPatrol && !targeting.CurrentTarget && timeInState > 10.0f) {
        brain.FollowPatrolRoute();
      }
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
    if (brain.MeleeOnly) {
      brain.State = "Melee";
      return;
    }
    if (!targeting.CurrentTarget) targeting.CurrentTarget = attacker;

    brain.MoveToCover();
    brain.State = "Shooting";
  }

  public override void OnEnemySpotted(UnitControl attacker) {
    base.OnEnemySpotted(attacker);
    if (brain.MeleeOnly) {
      brain.State = "Melee";
      return;
    }
    brain.MoveToFiringPosition(attacker.TargetPoint);
    brain.State = "Shooting";
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {

  }
}