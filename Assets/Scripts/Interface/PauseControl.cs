using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class PauseControl : MonoBehaviour {
	
	
	GameControl gameControl;
	public Text pauseButtonLabel;
	public Text pauseInfo;
	
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
	
	float transTimer;
	
	public Color fillColor;
	public Color frameColor;
	public Color hiliteColor;
	
	Material menuMaterial;
	Color menuFillColor;
	Color menuFrameColor;
	Color menuHiLiteColor;

	Material buttonMaterial;
	Color buttonFillColor;
	Color buttonFrameColor;
	Color buttonHiLiteColor;
	Color buttonFillMax;
				
	void Start () {
		buttonFillMax = new Color (0.5f, 0.0f, 0.0f, 1.0f);
		GameObject mapObj = GameObject.Find ("Map");
		gameControl = mapObj.GetComponent<GameControl>();
		
		menuMaterial = gameObject.GetComponent<Image>().material;
		
		buttonMaterial = transform.Find("PauseButton").GetComponent<Image>().material;
		
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
		transTimer = 0.9f;
	}
	
	void Update () {		
		transTimer = Mathf.Clamp01(transTimer + (GameTime.deltaTime * (expanded ? -1 : 1)));
		float transAmount = Util.EaseInOutQuart(transTimer);
		
		rect.anchoredPosition = Vector2.Lerp(new Vector2(-70, 0), new Vector2(-395, 0), transAmount);

		Color fillGoal = fillColor;
		Color frameGoal = frameColor;
		Color HiLiteGoal = hiliteColor;
		 
		if (gameControl.globalPause) {
			HiLiteGoal = Color.red;
			frameGoal = new Color(1.0f, 0.5f, 0.0f, 1.0f);
			fillGoal = new Color(0.25f, 0.0f, 0.0f, 1.0f);
		}	
		
		menuFillColor = Color.Lerp(menuFillColor, fillGoal, GameTime.deltaTime * 3);
		menuMaterial.SetColor("_FillColor",  menuFillColor);
		
		menuFrameColor = Color.Lerp(menuFrameColor, frameGoal, GameTime.deltaTime * 3);
		menuMaterial.SetColor("_FrameColor",  menuFrameColor);

		menuHiLiteColor = Color.Lerp(menuHiLiteColor, HiLiteGoal, GameTime.deltaTime * 3);
		menuMaterial.SetColor("_HiliteColor",  menuHiLiteColor);
		
		buttonFrameColor = Color.Lerp(buttonFrameColor, new Color (0.5f, 0.0f, 0.0f, 1.0f), GameTime.deltaTime * 3);
		buttonMaterial.SetColor("_FrameColor",  buttonFrameColor);
		
		if (GameTime.paused) {
			buttonFillColor = Color.Lerp(Color.black, buttonFillMax, (Mathf.Sin(GameTime.time * 5) * 0.5f) + 0.5f);
		} else {
			buttonFillColor = new Color (0.1f, 0.0f, 0.0f, 0.5f);
		}
		buttonMaterial.SetColor("_FillColor",  buttonFillColor);
		
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
			menuHiLiteColor = Color.red;
			pauseButtonLabel.text = "Paused";
		} else {
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
