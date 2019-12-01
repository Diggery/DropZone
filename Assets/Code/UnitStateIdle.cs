using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class UnitStateIdle : UnitState {
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
    UnitControl closestEnenmy = brain.ScanForTargets();
    if (closestEnenmy) {
      brain.MoveToSafeSpot();
    }
  }

  public override void StateExit() {
    base.StateExit();

  }

  protected override void CollidedWithEnemy(UnitControl enemy) {

  }
}
