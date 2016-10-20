using UnityEngine;
using System.Collections;

public class SetAimingFlag : StateMachineBehaviour {

    Targeting targeting;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!targeting) targeting = animator.gameObject.GetComponent<Targeting>();
        targeting.SetAnimingFlag(true);
	}

	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!targeting) targeting = animator.gameObject.GetComponent<Targeting>();
        targeting.SetAnimingFlag(false);
	}
}
