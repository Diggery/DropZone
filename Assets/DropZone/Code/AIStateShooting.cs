using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateShooting : AIState {

  float timeSinceSeeingTarget = 0.0f;
  float checkTimer = 0.0f;

  public override void StateInit() {
    base.StateInit();
    stateName = "Shooting";
    timeSinceSeeingTarget = 0;
  }

  public override void StateEnter() {
    base.StateEnter();
    checkTimer = Random.Range(3, 5);
  }

  public override void StateUpdate() {
    base.StateUpdate();
    if (!targeting.CurrentTarget) brain.State = "Idle";
    if (targeting.TargetVisible) {
      timeSinceSeeingTarget = 0;
    } else {
      timeSinceSeeingTarget += Time.deltaTime;
    }

    // checkTimer -= Time.deltaTime;
    // if (checkTimer < 0) {
    //   targeting.CheckEnemy = true;
    // }
    // if (checkTimer < -1.0f) {
    //   checkTimer = Random.Range(3, 5);
    // }
    if (timeSinceSeeingTarget > 15) brain.State = "Searching";
  }

  public override void StateExit() {
    base.StateExit();

  }

  public override void OnMoveComplete() {
    base.OnMoveComplete();
    timeInState = 0;
  }

  protected override void CollidedWithEnemy(UnitControl enemy) {
    if (isActive && enemy.transform.tag.Equals("Player")) {

    }
  }
}