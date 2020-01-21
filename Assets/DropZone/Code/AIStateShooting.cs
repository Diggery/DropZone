using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateShooting : AIState {
  
  float timeSinceSeeingTarget = 0.0f;
  public override void StateInit() {
    base.StateInit();
    stateName = "Shooting";
    timeSinceSeeingTarget = 0;

  }

  public override void StateEnter() {
    base.StateEnter();
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if (!targeting.CurrentTarget) brain.State = "Idle";
    if (timeSinceSeeingTarget > 10) brain.State = "Searching";
  }

  public override void StateExit() {
    base.StateExit();

  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
