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
    if (Vector3.Distance(transform.position, brain.LastKnownPosition) < 3) {
      brain.GivingUp();
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

  public override void OnEnemySpotted(UnitControl attacker) {
    base.OnEnemySpotted(attacker);
    float choice = Random.value + brain.AggressionFactor;



    if (choice < 0.25f) {
      brain.MoveToSafeSpot();
    } else if (choice > 0.25f && choice < 0.5f) {
      bool success = brain.MoveToFiringPosition((attacker.transform.position - transform.position).normalized * 10);
      if (!success) brain.State = "Shooting";
    } else if (choice > 0.5f && choice < 0.75f) {
      brain.State = "Shooting";
    } else {
      brain.MoveTo((attacker.transform.position - transform.position).normalized * 10);
    }
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}
