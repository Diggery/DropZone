using UnityEngine;
using System.Collections;

public class RotateWhileAnimating : StateMachineBehaviour {
	UnitController unitController;
	PathMover mover;
	float initialHeading;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		initialHeading = animator.transform.eulerAngles.y;
		unitController = animator.gameObject.GetComponent<UnitController>();
		Vector3 direction = unitController.GetEquipment().GetTriggerDirection();
		float heading = Util.getDirection(-direction);
		mover = animator.gameObject.GetComponent<PathMover>();
		mover.RotateTo(Quaternion.AngleAxis(heading, Vector3.up));
	}

	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		mover.RotateTo(Quaternion.AngleAxis(initialHeading, Vector3.up));
				
	}


}
