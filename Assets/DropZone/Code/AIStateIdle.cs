using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateIdle : AIState {
  public override void StateInit() {
    base.StateInit();
    stateName = "Idle";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
  }

  public override void StateEnter() {
    base.StateEnter();
  }

  public override void StateUpdate() {
    base.StateUpdate();

    if (timeInState < 2.0f) return;


    if (targeting.CurrentTarget) {
      if (targeting.TargetVisible) {

      } else {
        bool foundPosition = brain.MoveToFiringPosition(targeting.CurrentTarget);
        if (!foundPosition) {
          brain.MoveToSafeSpot();
        }
      }
    }

    if (!targeting.CurrentTarget && brain.HasPatrol && timeInState > 5.0f) {
      brain.FollowPatrolRoute();
    }


  }

  public override void StateExit() {
    base.StateExit();
  }

  public override void OnAttacked(UnitControl attacker) {
    base.OnAttacked(attacker);
    brain.MoveToSafeSpot();
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {

  }
}