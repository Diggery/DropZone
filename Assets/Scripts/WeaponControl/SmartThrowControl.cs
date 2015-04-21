using UnityEngine;
using System.Collections;

public class SmartThrowControl : MonoBehaviour {

	bool touched;
	bool primed;
	bool released;
	bool canceled;
	
	Vector3 firePos;
	float fireTimer = 1.0f;
	
	
	Vector3 posGoal;
	
	Transform handle;
	Transform line;
	Transform target;
	
	Equipment equipment;
	GameControl gameControl;
	InputControl inputControl;
	
	void SetUp (Equipment _equipment) {
		handle = transform.Find("ThrowHandle");
		line = transform.Find("ThrowLine");
		target = transform.Find("ThrowTarget");
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
			Color fadeColor = Color.Lerp (handle.GetComponent<Renderer>().material.color, Color.clear, 1 - fireTimer);
			handle.GetComponent<Renderer>().material.color = fadeColor;
			line.GetComponent<Renderer>().material.color = fadeColor;
			if (fireTimer < 0) 
				Throw();
			return;
		}				
		
		handle.localPosition = Vector3.Lerp(handle.localPosition, posGoal, GameTime.deltaTime * 8);
		Vector3 targetPos = -handle.localPosition * 5;
		targetPos.y = 0.1f;
		target.localPosition = targetPos;
		line.localPosition = handle.localPosition * 0.5f;
	}
	
	public void touchDown(TouchManager.TouchDownEvent touchEvent) {
		touched = true;
	}	
	
	public void drag(TouchManager.TouchDragEvent touchEvent) {
		if (released) return;
		Vector3 touchPos = transform.InverseTransformPoint(touchEvent.touchPoint);
		posGoal = Vector3.ClampMagnitude(touchPos, 2);
		posGoal.y = 0.1f;
	}	
	
	public void tap(TouchManager.TapEvent touchEvent) {
		if (primed) {
			firePos = handle.localPosition;
			gameControl.SelectorResume();
			released = true;
		}
	}
	
	public void touchUp(TouchManager.TouchUpEvent touchEvent) {
		touched = false;
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
