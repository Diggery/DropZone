using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class ThrowControl : MonoBehaviour {

	bool touched;
	bool primed;
	bool released;
	bool canceled;
	
	Vector3 firePos;
	float fireTimer = 1.0f;
	
	
	Vector3 posGoal;
	
	Transform handle;
	Transform line;
	
	Equipment equipment;
	GameControl gameControl;
	InputControl inputControl;
	
	void SetUp (Equipment _equipment) {
		handle = transform.Find("ThrowHandle");
		line = transform.Find("ThrowLine");
		equipment = _equipment;
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
		inputControl = gameControlObj.GetComponent<InputControl>();
		inputControl.AddGizmoControl(gameObject);
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
			Color fadeColor = Color.Lerp (handle.renderer.material.color, Color.clear, 1 - fireTimer);
			handle.renderer.material.color = fadeColor;
			line.renderer.material.color = fadeColor;
			if (fireTimer < 0) 
				Throw();
			return;
		}				
		
		handle.localPosition = Vector3.Lerp(handle.localPosition, posGoal, GameTime.deltaTime * 8);
		line.localPosition = handle.localPosition * 0.5f;
	}
	
	public void HandleBeginDrag(PointerEventData eventData) {
		print ("start drag");
		touched = true;
	}	
	
	public void HandleDrag(PointerEventData eventData) {
		if (released) return;
		print ("drag");
		Vector3 touchPos = transform.InverseTransformPoint(eventData.worldPosition);
		posGoal = Vector3.ClampMagnitude(touchPos, 2);
		posGoal.y = 0.1f;
	}	
		
	public void HandleEndDrag(PointerEventData eventData) {
		print ("end drag");
		touched = false;
	}
	
	public void OnHandleClicked(PointerEventData eventData) {
		if (primed) {
			firePos = handle.localPosition;
			gameControl.SelectorResume();
			released = true;
		}
	}
	
	void Prime() {
		primed = true;
		equipment.Ready();
		gameControl.SelectorPause();
	}
	
	void Throw() {
		if (!canceled) {
			equipment.Trigger(firePos);
		}
		inputControl.RemoveGizmoControl(gameObject);
		Destroy(gameObject);
	}
	
	public void Cancel() {
		canceled = true;
		primed = true;
		released = true;
		gameControl.SelectorResume();
	}
}
