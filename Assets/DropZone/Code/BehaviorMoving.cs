using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BehaviorMoving : StateMachineBehaviour {
  UnitControl unitControl;

  override public void OnStateMachineEnter(Animator animator, int stateMachinePathHash) {
    if (!unitControl) {
      unitControl = animator.gameObject.GetComponent<UnitControl>();
    }
    unitControl.InMovingState = true;
  }

  override public void OnStateMachineExit(Animator animator, int stateMachinePathHash) {
    unitControl.InMovingState = false;
  }
}
