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
    GameObject[] playerObjs = GameObject.FindGameObjectsWithTag("Player");
    foreach(GameObject playerObj in playerObjs) {
      UnitControl playerControl = playerObj.GetComponent<UnitControl>();
      if (CanSeeEnemy(playerControl)) {
        Debug.Log(gameObject.name + " can see " + playerControl.name);
        brain.MoveToSafeSpot();
      }
    }
  }

  public override void StateExit() {
    base.StateExit();

  }

  protected override void CollidedWithEnemy(UnitControl enemy) {

  }
}
