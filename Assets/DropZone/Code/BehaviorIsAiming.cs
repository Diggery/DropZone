using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BehaviorIsAiming : StateMachineBehaviour {
  UnitTargeting unitTargeting;
  override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    if (!unitTargeting) unitTargeting = animator.gameObject.GetComponent<UnitTargeting>();

    unitTargeting.IsAiming = true;
  }

  override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    unitTargeting.IsAiming = false;
  }
}
