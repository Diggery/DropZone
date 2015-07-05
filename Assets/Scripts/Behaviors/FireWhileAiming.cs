using UnityEngine;
using System.Collections;

public class FireWhileAiming : StateMachineBehaviour {

	MainWeapon mainWeapon;


	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
		if (!mainWeapon) {
			mainWeapon = animator.gameObject.GetComponent<UnitController>().GetMainWeapon();
		}
		mainWeapon.Fire();	
	}

}
