using UnityEngine;
using System.Collections;

public class UnitPane : MonoBehaviour {

	Vector3 openGoal;
	Vector3 closeGoal;
	
	Color openColor = new Color(0.0f, 0.0f, 0.0f, 1.0f);
	Color closeColor = new Color(0.0f, 0.0f, 0.0f, 0.75f);
	Color selectColor = new Color(0.2f, 0.0f, 0.0f, 1.0f);
	Color flashColor = new Color (1.0f, 0.5f, 0.0f);		
	
	Color currentColor;
	
	public UnitController unit;
	
	bool opened;
	bool hidden;
	bool dead;
	float transAmount = 0.0f;
	
	public Transform badge;
	public Texture badgeOpen;
	public Texture badgeClose;
	public Texture badgeDead;
	
	TextMesh unitName;
	
	AnimationCurve slideCurve = new AnimationCurve();
	
	InterfaceControl interfaceControl;
	
	void Start () {		

				
		interfaceControl = Camera.main.gameObject.GetComponent<InterfaceControl>();
		if (!interfaceControl) Debug.Log("No InterfaceControl found on the camera");
		interfaceControl.AddUnitPane(this);
		
		slideCurve.AddKey(new Keyframe(0, 0, 0, 0));
		slideCurve.AddKey(new Keyframe(0.25f, 0.075f, 1.15f, 1.15f));
		slideCurve.AddKey(new Keyframe(0.75f, 0.925f, 1.3f, 1.3f));
		slideCurve.AddKey(new Keyframe(1, 1, 0, 0));
		
		//get everything with colliders so input can be directed here
		BoxCollider[] parts = gameObject.GetComponentsInChildren<BoxCollider>(); 
		foreach (BoxCollider part in parts) {
			if (part.transform != transform) {
				InputRepeater repeater = part.gameObject.AddComponent<InputRepeater>();
				repeater.SetTarget(transform);
			}
		}

//		Keyframe[] keys = slideCurve.keys;
//		foreach (Keyframe key in keys) 
//			print (key.time + ", " + key.value + ", " + key.inTangent + ", " + key.outTangent);
		
		openGoal = transform.localPosition;
		closeGoal = new Vector3(0.101f, openGoal.y, 0.15f);
		
		unitName = transform.Find ("UnitName").GetComponent<TextMesh>();
	}
	
	public void SetUnit(UnitController _unit) {
		unit = _unit;
		unitName.text = unit.unitName;
		unit.SetUnitPane(this);
	}
	
	void Update () {
		if (!unit) {
			if (!hidden) Hide();
			return;
		}
			
		if (unit.dead) {
			if (!dead) Die();
		}
			
		int direction = opened ? 1 : -1;
		transAmount = Mathf.Clamp01(transAmount + (GameTime.deltaTime * direction * 3));
		
		Vector3 closePos = closeGoal;
		Color colorGoal = closeColor;
		
		if (unit.selected) {
			closePos.x -= 0.025f;
			if (opened) {
				colorGoal = openColor;
			} else {
				colorGoal = selectColor;
			}
			
		} else {
			if (opened) {
				colorGoal = openColor;
			}
		}
		
		currentColor = Color.Lerp(currentColor, colorGoal, GameTime.deltaTime * 5);
		if (hidden) {
			currentColor.a = 0.1f;
		}
		    
		renderer.material.color = currentColor;
		
		transform.localPosition = Vector3.Lerp(closePos, openGoal, slideCurve.Evaluate(transAmount));
	}
	
	
	public void tap(TouchManager.TapEvent touchEvent) {
		if (touchEvent.touchTarget == transform) {
			if (unit.selected) {
				unit.Deselect();
			} else {
				Events.Send(gameObject, "UnitSelected", unit);	
				currentColor = flashColor;	
			}	
		}
		if (touchEvent.touchTarget == badge) {
			touchEvent.touchTarget.renderer.material.mainTexture = opened ? badgeOpen : badgeClose;
			Toggle();
		}			
	}
	
	public void doubleTap(TouchManager.DoubleTapEvent touchEvent) {
		Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
	}
		

	public void Toggle() {
		if (opened) 
			Close();
		else 
			Open ();
	}
	
	public void Open() {
		opened = true;
	}
	
	public void Close() {
		opened = false;
	}
	
	public void Hide() {
		Close();
		hidden = true;
		unitName.renderer.material.color = new Color(1.0f, 1.0f, 1.0f, 0.5f);
	}
	
	public void Die() {
		dead = true;
		Hide();
		badge.renderer.material.mainTexture = badgeDead;
	}
	
	public void TakeDamage() {
		currentColor = Color.red;
	
	}
}
