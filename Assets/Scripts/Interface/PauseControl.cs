﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class PauseControl : MonoBehaviour {
	
	
	GameControl gameControl;
	public Text pauseButtonLabel;
	public Text pauseInfo;
	public RectTransform expandButton;
	
	bool expanded;
	RectTransform rect;
	
	public bool onSelection;
	public bool onMoveControl;
	public bool onHit;
	public bool onInjured;
	public bool onDeath;
	public bool onNewEnemy;
	public bool onNewCaptain;
	public bool onSpecialAction;
	public bool moveCamera;
	
	public AnimationCurve transitionCurve;
	float transitionTimer;
	
	public Color fillColor;
	public Color frameColor;
	public Color hiliteColor;
	
	Material backgroundMaterial;
	Color currentFillColor;
	Color currentFrameColor;
	Color currentHiLiteColor;
	
	void Start () {
		GameObject mapObj = GameObject.Find ("Map");
		gameControl = mapObj.GetComponent<GameControl>();
		backgroundMaterial = gameObject.GetComponent<Image>().material;
		gameControl.SetPauseControl(this);
		rect = GetComponent<RectTransform>();
		SetToggles();
		UpdatePauseButton();
	}
	
	void SetToggles() {
			
		bool[] settings = LoadSave.GetPauseSettings();
		
		if (settings.Length < 9) {
			Debug.Log("No Settings");
			bool[] initSet = new bool[9] {false, false, false, false, false, false, false, false, false};
			LoadSave.SetPauseSettings(initSet);	
		}
		
		onSelection 		= settings[0];
		onMoveControl 		= settings[1];
		onHit 				= settings[2];
		onInjured 			= settings[3];
		onDeath 			= settings[4];
		onNewEnemy 			= settings[5];
		onNewCaptain 		= settings[6];
		onSpecialAction 	= settings[7];		
		moveCamera 			= settings[8];		
		
		Toggle[] toggles = gameObject.GetComponentsInChildren<Toggle>();
		foreach (Toggle toggle in toggles) {
			if (toggle.gameObject.name.Equals("OnSelection")) toggle.isOn = onSelection;
			if (toggle.gameObject.name.Equals("OnMoveControl")) toggle.isOn = onMoveControl;
			if (toggle.gameObject.name.Equals("OnHit")) toggle.isOn = onHit;
			if (toggle.gameObject.name.Equals("OnInjured")) toggle.isOn = onInjured;
			if (toggle.gameObject.name.Equals("OnDeath")) toggle.isOn = onDeath;
			if (toggle.gameObject.name.Equals("OnNewEnemy")) toggle.isOn = onNewEnemy;
			if (toggle.gameObject.name.Equals("OnNewCaptain")) toggle.isOn = onNewCaptain;
			if (toggle.gameObject.name.Equals("OnSpecialAction")) toggle.isOn = onSpecialAction;
			if (toggle.gameObject.name.Equals("MoveCamera")) toggle.isOn = moveCamera;
		}	
		ExpandClicked();
		transitionTimer = 0.9f;
	}
	
	void Update () {
	
		transitionTimer = Mathf.Clamp01(transitionTimer + (GameTime.deltaTime * 4 * (expanded ? 1 : -1)));
		if (transitionTimer > 0 && transitionTimer < 1) {
			float transAmount = transitionCurve.Evaluate(transitionTimer);
			rect.anchoredPosition = Vector2.Lerp(Vector2.zero, new Vector2(0, -395), transAmount);
			expandButton.rotation = Quaternion.Lerp(Quaternion.identity, Quaternion.AngleAxis(180, Vector3.forward), transAmount);
		}

		Color fillGoal = fillColor;
		Color frameGoal = frameColor;
		Color HiLiteGoal = hiliteColor;
		 
		if (gameControl.globalPause) {
			HiLiteGoal = Color.red;
			frameGoal = new Color(1.0f, 0.5f, 0.0f, 1.0f);
			fillGoal = new Color(0.25f, 0.0f, 0.0f, 1.0f);
		}	
		
		currentFillColor = Color.Lerp(currentFillColor, fillGoal, GameTime.deltaTime * 3);
		backgroundMaterial.SetColor("_FillColor",  currentFillColor);
		
		currentFrameColor = Color.Lerp(currentFrameColor, frameGoal, GameTime.deltaTime * 3);
		backgroundMaterial.SetColor("_FrameColor",  currentFrameColor);

		currentHiLiteColor = Color.Lerp(currentHiLiteColor, HiLiteGoal, GameTime.deltaTime * 3);
		backgroundMaterial.SetColor("_HiliteColor",  currentHiLiteColor);
		
		if (Input.GetKeyUp (KeyCode.Space)) {
			if (gameControl.globalPause) {
				gameControl.GlobalResume();
			} else {
				gameControl.GlobalPause();
			}
		}
		
	}
	
	public void SetPauseInfo(string info) {
		pauseInfo.text = info;
		UpdatePauseButton();
	}
	
	public void ClearPauseInfo() {
		pauseInfo.text = "Tap to Pause";
		UpdatePauseButton();
	}
	
	void UpdatePauseButton() {
		if (GameTime.paused) {
			currentHiLiteColor = Color.red;
			pauseButtonLabel.color = Color.red;
			pauseButtonLabel.text = "Paused";
		} else {
			pauseButtonLabel.color = new Color(0.25f, 0.0f, 0.0f, 1.0f);
			pauseButtonLabel.text = "Running";
		}
	}
	
	public void PauseClicked() {
		if (GameTime.paused) {
			gameControl.GlobalResume();
			UpdatePauseButton();
		} else {
			gameControl.GlobalPause();
			UpdatePauseButton();
		}
	}
	
	public void ExpandClicked() {
		LoadSave.SaveAll();
		expanded = !expanded;
	}
	
	public void ToggleClicked(Toggle item) {
		
		if (item.gameObject.name.Equals("OnSelection")) onSelection = item.isOn;
		if (item.gameObject.name.Equals("OnMoveControl")) onMoveControl = item.isOn;
		if (item.gameObject.name.Equals("OnHit")) onHit = item.isOn;
		if (item.gameObject.name.Equals("OnInjured")) onInjured = item.isOn;
		if (item.gameObject.name.Equals("OnDeath")) onDeath = item.isOn;
		if (item.gameObject.name.Equals("OnNewEnemy")) onNewEnemy = item.isOn;
		if (item.gameObject.name.Equals("OnNewCaptain")) onNewCaptain = item.isOn;
		if (item.gameObject.name.Equals("OnSpecialAction")) onSpecialAction = item.isOn;
		if (item.gameObject.name.Equals("MoveCamera")) moveCamera = item.isOn;
		SaveToggles();
	}
	void SaveToggles() {
		List<bool> settings = new List<bool>();
		settings.Add(onSelection);
		settings.Add(onMoveControl);		
		settings.Add(onHit); 				
		settings.Add(onInjured); 			
		settings.Add(onDeath); 			
		settings.Add(onNewEnemy); 			
		settings.Add(onNewCaptain); 		
		settings.Add(onSpecialAction);
		settings.Add(moveCamera);
		LoadSave.SetPauseSettings(settings.ToArray());	
	}
	
}
