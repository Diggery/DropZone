using UnityEngine;
using System.Collections;

public class SetRotatingFlag : StateMachineBehaviour {

    UnitMover unitMover;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitMover) unitMover = animator.gameObject.GetComponent<UnitMover>();
        unitMover.SetRotatingFlag(true);	
	}


	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitMover) unitMover = animator.gameObject.GetComponent<UnitMover>();
        unitMover.SetRotatingFlag(false); 	
	}

}
