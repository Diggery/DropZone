using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;

public class UnitPane : MonoBehaviour, IPointerClickHandler {

	Vector3 openGoal;
	Vector3 closeGoal;
	
	Color frameColor = new Color(0.0f, 0.0f, 0.0f, 1.0f);
	Color openColor = new Color(0.0f, 0.0f, 0.0f, 0.5f);
	Color closeColor = new Color(0.0f, 0.0f, 0.0f, 0.1f);
	Color selectColor = new Color(0.2f, 0.0f, 0.0f, 0.2f);
	Color flashColor = new Color (1.0f, 0.5f, 0.0f);		
	
	Color currentFrameColor;
	Color currentFillColor;
	Color currentHiLiteColor;
	
	public UnitController unit;
	
	bool opened;
	bool hidden;
	bool dead;
	float transAmount = 0.0f;
	
	public Transform badge;
	public Texture badgeOpen;
	public Texture badgeClose;
	public Texture badgeDead;
	
	public GameObject profileCameraPrefab;
	
	TextMesh unitName;
	
	AnimationCurve slideCurve = new AnimationCurve();
		
	void Start () {		

		slideCurve.AddKey(new Keyframe(0, 0, 0, 0));
		slideCurve.AddKey(new Keyframe(0.25f, 0.075f, 1.15f, 1.15f));
		slideCurve.AddKey(new Keyframe(0.75f, 0.925f, 1.3f, 1.3f));
		slideCurve.AddKey(new Keyframe(1, 1, 0, 0));
		
		badge.gameObject.AddComponent<ButtonControl>().SetTarget(gameObject);

		openGoal = transform.localPosition;
		closeGoal = new Vector3(0.101f, openGoal.y, 0.15f);
		
		unitName = transform.Find ("UnitName").GetComponent<TextMesh>();
	}
	
	public void SetUnit(UnitController _unit) {
		unit = _unit;
		unitName.text = unit.unitName;
		unit.SetUnitPane(this);
		
		//create a camera for the unit pane 
		GameObject profileCamera = Instantiate(profileCameraPrefab, unit.transform.position, unit.transform.rotation) as GameObject;
		ChaseCam chaseCam = profileCamera.GetComponent<ChaseCam>();
		chaseCam.SetLookAtTarget(unit.headModel.transform);
		chaseCam.RandomizeCameraPos();
		
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
		
		Color frameGoal = frameColor;
		Color fillGoal = closeColor;
		Color HiLiteGoal = Color.clear;
		
		if (unit.selected) {
			closePos.x -= 0.025f;
			HiLiteGoal = Color.red;
			if (opened) {
				fillGoal = openColor;
			} else {
				fillGoal = selectColor;
			}
			
		} else {
			if (opened) {
				fillGoal = openColor;
			}
		}
		
		currentFrameColor = Color.Lerp(currentFrameColor, frameGoal, GameTime.deltaTime * 3);
		if (hidden) currentFrameColor.a = 0.5f;
		
		renderer.material.SetColor("_FrameColor",  currentFrameColor);
		
		currentFillColor = Color.Lerp(currentFillColor, fillGoal, GameTime.deltaTime * 5);
		if (hidden) currentFillColor.a = 0.1f;
		renderer.material.SetColor("_FillColor",  currentFillColor);
		
		currentHiLiteColor = Color.Lerp(currentHiLiteColor, HiLiteGoal, GameTime.deltaTime * 5);
		renderer.material.SetColor("_HiLiteColor",  currentHiLiteColor);
		
		transform.localPosition = Vector3.Lerp(closePos, openGoal, slideCurve.Evaluate(transAmount));
	}
	
	
	public void OnPointerClick(PointerEventData eventData) {
		
		if (dead) return;
	
		if (unit.selected) {
			Events.Send(gameObject, "DeselectUnit", unit);	
		} else {
			Events.Send(gameObject, "SelectUnit", unit);	
			currentFillColor = flashColor;	
			currentHiLiteColor = Color.yellow;	
		}	
			
	}
	
	public void ButtonClicked(string name) {
		if (dead) return;
		if (name.Contains("Badge")) {
			badge.renderer.material.mainTexture = opened ? badgeOpen : badgeClose;
			Toggle();
		}	
	}
	
	public void doubleTap() {
	
		if (dead) return;
	
		Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
	}
		

	public void Toggle() {
		currentFrameColor = Color.white;
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
		if (!unit) {
			transform.localPosition = new Vector3(1, 0, 0);
		
		}
	}
	
	public void Die() {
		dead = true;
		Hide();
		badge.renderer.material.mainTexture = badgeDead;
	}
	
	public void TakeDamage() {
		currentFrameColor = Color.red;
	
	}
}
