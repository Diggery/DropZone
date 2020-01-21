using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateSearching : AIState {

  public override void StateInit() {
    base.StateInit();
    stateName = "Searching";

  }

  public override void StateEnter() {
    base.StateEnter();
    Search();
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if (targeting.TargetVisible) brain.State = "Shooting";
  }

  void Search() {
    if (Vector3.Distance(transform.position, brain.LastKnownPosition) < 5) {
      brain.State = "Idle";
      return;
    }
    bool foundPosition = brain.MoveToFiringPosition(brain.LastKnownPosition);
    if (!foundPosition) {
      brain.MoveToSafeSpot();
    }
  }

  public override void StateExit() {
    base.StateExit();
  }

  public override void OnMoveComplete() {
    base.OnMoveComplete();
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
