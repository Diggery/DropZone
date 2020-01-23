using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateRetreating : AIState {

  public override void StateInit() {
    base.StateInit();
    stateName = "Retreating";

  }

  public override void StateEnter() {
    base.StateEnter();
  }

  public override void StateUpdate() {
    base.StateUpdate();
  }

  public override void StateExit() {
    base.StateExit();
  }

  public override void OnMoveComplete() {
    unitControl.Remove();
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
