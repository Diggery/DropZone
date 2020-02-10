using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateMelee : AIState {

  public override void StateInit() {
    base.StateInit();
    stateName = "Melee";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
  }

  public override void StateEnter() {
    base.StateEnter();
    unitControl.MoveTo(targeting.CurrentTarget.TargetPoint);
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if (targeting.InMeleeRange) navAgent.isStopped = true;
  }

  public override void StateExit() {
    base.StateExit();

  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
