using UnityEngine;
using UnityEngine.UI;

using UnityEngine.EventSystems;
using System.Collections;

public class UnitPane : MonoBehaviour, IPointerClickHandler {

	Color frameColor = new Color(0.0f, 0.0f, 0.0f, 1.0f);
	Color openColor = new Color(0.0f, 0.0f, 0.0f, 0.5f);
	Color closeColor = new Color(0.0f, 0.0f, 0.0f, 0.1f);
	Color selectColor = new Color(0.2f, 0.0f, 0.0f, 0.8f);
	Color flashColor = new Color (1.0f, 0.5f, 0.0f);		
	Color idleHealthColor = new Color (0.0f, 0.0f, 0.0f, 0.5f);		
	
	Color currentFrameColor;
	Color currentFillColor;
	Color currentHiLiteColor;
	
	public UnitController unit;
	
	bool opened;
	bool hidden;
	bool dead;
	
	public Text unitName;
	
	public Material unitPaneMaterial;
	Material mainMaterial;
	Material healthBarMaterial;
	Button badgeButton;
	
	
	float transAmount = 0.0f;
	
	public Image badge;
	public Sprite badgeOpen;
	public Sprite badgeClose;
	public Sprite badgeDead;
	
	public GameObject profileCameraPrefab;
	
	Equipment equipment;
	public Button equipmentButton;
	public Image equipmentButtonImage;
	Material equipmentButtonMaterial;

	public Transform healthBar;
	
	RectTransform panePosition;
	
	AnimationCurve slideCurve = new AnimationCurve();
		
	void Start () {		
		panePosition = GetComponent<RectTransform>();
		mainMaterial = Instantiate(unitPaneMaterial) as Material;
		GetComponent<Image>().material = mainMaterial;
				
		Transform healthBarObj = transform.Find("HealthBar");
		healthBarMaterial = Instantiate(healthBarObj.GetComponent<Image>().material) as Material;
		healthBarObj.GetComponent<Image>().material = healthBarMaterial;
		
		equipmentButtonMaterial = Instantiate(equipmentButton.GetComponent<Image>().material) as Material;
		equipmentButton.GetComponent<Image>().material = equipmentButtonMaterial;
		
		
	}
	
	public void SetUnit(UnitController _unit) {
		unit = _unit;
		if (!unitName) print ("No Unit Name");
		unitName.text = unit.unitName;
		unit.SetUnitPane(this);
		
		// set up transition curve;
		slideCurve.AddKey(new Keyframe(0, 0, 0, 0));
		slideCurve.AddKey(new Keyframe(0.25f, 0.075f, 1.15f, 1.15f));
		slideCurve.AddKey(new Keyframe(0.75f, 0.925f, 1.3f, 1.3f));
		slideCurve.AddKey(new Keyframe(1, 1, 0, 0));
		
		
		//create a camera for the unit pane 
		GameObject profileCamera = Instantiate(profileCameraPrefab, unit.transform.position, unit.transform.rotation) as GameObject;
		ChaseCam chaseCam = profileCamera.GetComponent<ChaseCam>();
		chaseCam.SetLookAtTarget(unit.headModel.transform);
		chaseCam.RandomizeCameraPos();
		
		
		Invoke("FillOutEquipmentButton", 0.1f);
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
		
		Color frameGoal = frameColor;
		Color fillGoal = closeColor;
		Color HiLiteGoal = Color.clear;
		
		if (unit.selected) {
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
		
		mainMaterial.SetColor("_FrameColor",  currentFrameColor);
		
		currentFillColor = Color.Lerp(currentFillColor, fillGoal, GameTime.deltaTime * 5);
		if (hidden) currentFillColor.a = 0.1f;
		mainMaterial.SetColor("_FillColor",  currentFillColor);
		
		currentHiLiteColor = Color.Lerp(currentHiLiteColor, HiLiteGoal, GameTime.deltaTime * 5);
		mainMaterial.SetColor("_HiLiteColor",  currentHiLiteColor);
		
		Vector2 panePos = panePosition.anchoredPosition;
		panePos.x = Mathf.Lerp(-30, -10, slideCurve.Evaluate(transAmount));
		panePosition.anchoredPosition = panePos;
		
		  
		
		float health = unit.GetNormalizedHealth();
		Color healthColorGoal = Color.Lerp(Color.red, idleHealthColor, health);
		healthBarMaterial.color = Color.Lerp(healthBarMaterial.color, healthColorGoal, GameTime.deltaTime * 3);
		
		healthBarMaterial.mainTextureOffset = Vector2.Lerp(new Vector2(0.0f, 0.7f), new Vector2(0.0f, 0.0f), health);
	}
	
	void FillOutEquipmentButton() {
		equipment = unit.GetEquipment();
		equipmentButtonImage.sprite = equipment.buttonTexture;
	}
	
	public void OnPointerClick(PointerEventData eventData) {
		print (eventData.clickCount + ", " + eventData.clickTime);
		
		if (dead) return;
	
		if (unit.selected) {
			Events.Send(gameObject, "DeselectUnit", unit);	
		} else {
			Events.Send(gameObject, "SelectUnit", unit);	
			currentFillColor = flashColor;	
			currentHiLiteColor = Color.yellow;	
		}
		
		if (eventData.clickCount > 1) {	
			Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
		}
		
			
	}
	
	public void ButtonClicked(string name) {
		if (dead) return;
		

		if (name.Contains("Badge")) {
			badge.sprite = opened ? badgeOpen : badgeClose;
			Toggle();
		} else if (name.Equals("Equipment")) {
			equipment.Activate(this);
		}			
	}
	
	public void DisableEquipmentButton(Equipment usedEquipment) {
	
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
		if (!unit) {
			Vector2 panePos = panePosition.anchoredPosition;
			panePos.x = -45;
			panePosition.anchoredPosition = panePos;
		}
	}
	
	public void Die() {
		dead = true;
		Hide();
		badge.sprite = badgeDead;
	}
	
	public void TakeDamage() {
		currentFrameColor = Color.red;
		healthBarMaterial.color = Color.red;
	}
	
	public void Heal() {
		healthBarMaterial.color = Color.green;
	}
		
}
