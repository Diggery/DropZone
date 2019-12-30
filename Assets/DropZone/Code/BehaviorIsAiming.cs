using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BehaviorIsAiming : StateMachineBehaviour {
  UnitTargeting targetControl;
  override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    if (!targetControl) targetControl = animator.gameObject.GetComponent<UnitTargeting>();

    targetControl.IsAiming = true;
  }

  override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    targetControl.IsAiming = false;
  }
}
