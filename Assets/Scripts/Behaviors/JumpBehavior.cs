using UnityEngine;
using System.Collections;

public class JumpBehavior : StateMachineBehaviour {

	CharacterController characterController;


	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (!characterController) {
			characterController = animator.transform.GetComponent<CharacterController>();
		}
		characterController.height = 1.0f;
		characterController.center = new Vector3(0.0f, 2.0f, 0.0f);
	}


	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		characterController.height = 1.95f;
		characterController.center = new Vector3(0.0f, 1.0f, 0.0f);
		
	}


}
