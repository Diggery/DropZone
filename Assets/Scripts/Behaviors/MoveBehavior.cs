using UnityEngine;
using System.Collections;

public class MoveBehavior : StateMachineBehaviour {

	UnitController unitController;
	
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (!unitController) {
			unitController = animator.gameObject.GetComponent<UnitController>();
		}
		unitController.IsMoving(true);
	
	}
	
	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {

		if (!unitController) {
			unitController = animator.gameObject.GetComponent<UnitController>();
		}
		unitController.IsMoving(false);
		
		
	}


}
