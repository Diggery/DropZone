using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class ThrowGizmo : Gizmo {

	bool touched;
	bool primed;
	bool released;
	bool canceled;
	
	Vector3 firePos = Vector3.zero;
	float fireTimer = 1.0f;
	
	Vector3 posGoal;
	Vector3 triggerDirection;
	
	Transform handle;
	Transform line;
	

	public Texture dragTexture;
	public Texture throwTexture;
	
	public override void Setup (Equipment _equipment) {
		
		handle = transform.Find("ThrowHandle");
		line = transform.Find("ThrowLine");
		transform.parent = _equipment.unitController.transform;
		SetHandleTexture (dragTexture);
		
		FinishSetup(_equipment);

	}
	
	void Update () {

		float rotAngle = Util.getDirection(handle.localPosition);
		handle.localRotation = Quaternion.AngleAxis(rotAngle, Vector3.up);
		line.localRotation = handle.localRotation;
		float lineLength = handle.localPosition.magnitude;
		line.localScale = new Vector3(0.15f, 1.0f, lineLength);
		
		if (!primed) {
			if (lineLength > 1.1f) Prime ();
			if (!touched) posGoal = new Vector3(0.0f, 0.0f, -1.0f);
		}		
		
		if (released) {
			fireTimer -= Time.deltaTime * 8.0f;
			handle.localPosition = Vector3.Lerp (firePos, Vector3.zero, 1 - fireTimer);
			line.localPosition = handle.localPosition * 0.5f;
			Color fadeColor = Color.Lerp (handle.GetComponent<Renderer>().material.color, Color.clear, 1 - fireTimer);
			handle.GetComponent<Renderer>().material.color = fadeColor;
			line.GetComponent<Renderer>().material.color = fadeColor;
			if (fireTimer < 0) 
				Throw();
			return;
		}				
		
		handle.localPosition = Vector3.Lerp(handle.localPosition, posGoal, GameTime.deltaTime * 8);
		line.localPosition = handle.localPosition * 0.5f;
	}
	
	void SetHandleTexture (Texture newTexture) {
		handle.GetComponent<Renderer>().material.mainTexture = newTexture;
	}
	
	public void HandleBeginDrag(PointerEventData eventData) {
		touched = true;
	}	
	
	public void HandleDrag(PointerEventData eventData) {
		if (released) return;
		Vector3 touchPos = transform.InverseTransformPoint(eventData.pointerCurrentRaycast.worldPosition);
		posGoal = Vector3.ClampMagnitude(touchPos, 2);
		posGoal.y = 0.1f;
	}	
		
	public void HandleEndDrag(PointerEventData eventData) {
		SetHandleTexture(throwTexture);
		touched = false;
	}
	
	public void OnHandleClicked(PointerEventData eventData) {
		if (primed) {
			firePos = handle.localPosition;
			triggerDirection = handle.localPosition;
			gameControl.SelectorResume();
			released = true;
		}
	}
	
	void Prime() {
		primed = true;
	}
	
	void Throw() {
		if (canceled) return;
		if (!equipment) print ("No equipment");
		equipment.Commit(triggerDirection);
		Cancel();
		Destroy(gameObject);
	}

	
	public void Cancel() {
		canceled = true;
		primed = true;
		released = true;
		inputControl.RemoveGizmoControl(gameObject);
		gameControl.SelectorResume();
	}
}
