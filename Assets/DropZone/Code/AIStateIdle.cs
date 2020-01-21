﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIStateIdle : AIState {

  public override void StateInit() {
    base.StateInit();
    stateName = "Idle";

  }

  public override void StateEnter() {
    base.StateEnter();
  }

  public override void StateUpdate() {
    base.StateUpdate();

    if (timeInState < 2.0f) return; //do do anything if we just got here

    if (targeting.CurrentTarget) {
      if (targeting.TargetVisible) {
        brain.State = "Shooting";
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