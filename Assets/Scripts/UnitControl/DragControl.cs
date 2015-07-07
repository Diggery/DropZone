using UnityEngine;
using System.Collections;

public class DragControl : MonoBehaviour {

	public bool dragActive = false;
	public bool evacActive = false;
	
	Transform dragTarget;
	Rigidbody dragHandle;
	DragMarker dragMarker;
	
	
	float evacForce;
	Vector3 evacPos;
	
	void Start () {
	
	}
	
	public void SetUpDragging(Transform _dragTarget, DragMarker _dragMarker) {
		dragTarget = _dragTarget;
		dragMarker = _dragMarker;
		dragHandle = GetComponent<Rigidbody>();
		dragHandle.drag = 20;
		dragHandle.angularDrag = 20;
	}
	
	public void StartDragging() {
		if (evacActive) return;
		dragActive = true;	
	}	
	public void StopDragging() {
		if (evacActive) return;
		dragActive = false;	
	}

	void FixedUpdate() {
		if (evacActive) {
			evacForce = Mathf.Lerp(evacForce, 300, Time.deltaTime * 0.15f);
			dragHandle.AddForce(Vector3.up * evacForce);
			
			Vector3 adjustmentForce = Vector3.ClampMagnitude(evacPos - transform.position, 1);
			adjustmentForce.y = 0;
			dragHandle.AddForce(adjustmentForce * 10);
			
			
		}
		
		if (dragTarget && dragHandle && dragActive) {
			Vector3 dragTargetPos = dragTarget.position;
			Vector3 force = Vector3.ClampMagnitude(dragTargetPos - transform.position, 1);
			dragHandle.AddForce(force * 2500);
		}
	}
	
	public DragMarker GetDragMarker() {
		return dragMarker;
	}

	public void Evac(Vector3 _evacPos) {
		evacPos = _evacPos;
		dragHandle.drag = 0;
		dragHandle.angularDrag = 0;
		evacActive = true;
		dragActive = false;
		dragTarget = null;
	}
	
	public void CancelEvac() {
		dragHandle.drag = 1;
		dragHandle.angularDrag = 1;
		evacActive = false;
		dragActive = false;	
	}
		
}
