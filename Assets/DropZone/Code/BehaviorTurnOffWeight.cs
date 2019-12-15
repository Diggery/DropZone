using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BehaviorTurnOffWeight : StateMachineBehaviour {
  override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    animator.SetLayerWeight(layerIndex, 0);
  }

  override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
    animator.SetLayerWeight(layerIndex, 1);

  }

}