using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateIdle : AIState {

  float timeSinceSeeingTarget = 0.0f;
  public override void StateInit() {
    base.StateInit();
    stateName = "Idle";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
  }

  public override void StateEnter() {
    base.StateEnter();
    timeSinceSeeingTarget = 0;
  }

  public override void StateUpdate() {
    base.StateUpdate();

    if (timeInState < 2.0f) return; //do do anything if we just got here

    if (targeting.CurrentTarget) {
      if (targeting.TargetVisible) {
        Debug.Log("I can see him");
        timeSinceSeeingTarget = 0;
      } else {
        timeSinceSeeingTarget += Time.deltaTime;

        if (timeSinceSeeingTarget > 10) {
          bool foundPosition = brain.MoveToFiringPosition(brain.LastKnownPosition);
          if (!foundPosition) {
            brain.MoveToSafeSpot();
          }
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
    if (!targeting.CurrentTarget) brain.MoveToSafeSpot();
  }

  public override void OnEnemySpotted(UnitControl attacker) {
    base.OnEnemySpotted(attacker);
    brain.MoveToFiringPosition(attacker.transform.position);
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {

  }
}