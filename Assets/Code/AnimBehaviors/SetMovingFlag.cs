using UnityEngine;
using System.Collections;

public class SetMovingFlag : StateMachineBehaviour {

    UnitMover unitMover;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitMover) unitMover = animator.gameObject.GetComponent<UnitMover>();
        unitMover.SetMovingFlag(true);	
	}


	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitMover) unitMover = animator.gameObject.GetComponent<UnitMover>();
        unitMover.SetMovingFlag(false); 	
	}

}
