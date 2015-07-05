using UnityEngine;
using System.Collections;

public class DragWhileMoving : StateMachineBehaviour {

	UnitController unitController;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (!unitController) {
			unitController = animator.gameObject.GetComponent<UnitController>();
		}	
		unitController.ResumeDragging();
		
	}


	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		unitController.PauseDragging();
		
	}


}
