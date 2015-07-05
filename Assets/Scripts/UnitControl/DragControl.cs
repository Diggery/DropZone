using UnityEngine;
using System.Collections;

public class DragControl : MonoBehaviour {

	public bool dragActive;
		
	Transform dragTarget;
	Rigidbody dragHandle;
	
	void Start () {
	
	}
	
	public void SetUpDragging(Transform _dragTarget) {
		dragTarget = _dragTarget;
		dragHandle = GetComponent<Rigidbody>();
		dragHandle.drag = 20;
		dragHandle.angularDrag = 20;
	}
	
	public void StartDragging() {
		print ("Starting");
		dragActive = true;	
	}	
	public void StopDragging() {
		dragActive = false;	
	}

	void FixedUpdate() {
		if (dragHandle && dragActive) {
			Vector3 dragTargetPos = dragTarget.position;
			Vector3 force = Vector3.ClampMagnitude(dragTargetPos - transform.position, 1);
			dragHandle.AddForce(force * 2500);
		}
	}
}
