using UnityEngine;
using System.Collections;

public class Teleporter : Equipment {

	public GameObject teleportEffectStart;
	public GameObject teleportEffectEnd;
	public float maxRange;
	
	public override void ConfigureGizmo(GameObject control) {
		control.GetComponent<LocationGizmo>().Setup(this, true, maxRange);
	}
	
	public override void Commit(Vector3 teleportPos) {
		triggerDirection = teleportPos;
		GetAnimator().SetTrigger("Teleport");
		Instantiate(teleportEffectStart, unitController.transform.position, Quaternion.identity);
	}
	
	public override void Trigger() {
		unitController.transform.position = triggerDirection;
		unitController.SetCoverState();
		Instantiate(teleportEffectEnd, triggerDirection, Quaternion.identity);
		Use ();		
	}
}
