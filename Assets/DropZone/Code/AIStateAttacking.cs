using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateAttacking : AIState {

  public override void StateInit() {
    base.StateInit();
    stateName = "Attacking";
    AttackNearbyTargets = true;
    TurnTowardsTarget = true;
  }

  public override void StateEnter() {
    base.StateEnter();
    unitControl.MoveTo(targeting.CurrentTarget.transform.position);
  }

  public override void StateUpdate() {
    base.StateUpdate();
  }

  public override void StateExit() {
    base.StateExit();

  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
