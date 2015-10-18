using UnityEngine;
using UnityEngine.UI;

using UnityEngine.EventSystems;
using System.Collections;

public class UnitPane : MonoBehaviour, IPointerClickHandler {

	float transTimer = 0.0f;
	float transAmount = 0.0f;
	
	Color frameColor = new Color(0.25f, 0.0f, 0.0f, 1.0f);
	Color openColor = new Color(0.0f, 0.0f, 0.0f, 0.75f);
	Color closeColor = new Color(0.0f, 0.0f, 0.0f, 0.25f);
	Color selectColor = new Color(0.6f, 0.0f, 0.0f, 1.0f);
	Color flashColor = new Color (1.0f, 0.75f, 0.25f);		
	Color idleHealthColor = new Color (0.0f, 0.0f, 0.0f, 0.25f);		
	
	Color currentFrameColor;
	Color currentFillColor;
	Color currentHiLiteColor;
	
	public UnitController unit;
	
	bool opened;
	bool hidden;
	bool dead;
	
	RectTransform bullet;
	Text unitName;
	
	Material mainMaterial;
	Material healthBarMaterial;
	Button badgeButton;
		
	Image badge;
	
	public Sprite emptyEquipmentTexture;
	public Sprite emptyWeaponTexture;
	
	
	Equipment equipment;
	Button equipmentButton;
	Image equipmentButtonImage;
	Material equipmentButtonMaterial;
	
	MainWeapon weapon;
	Button weaponButton;
	Image weaponButtonImage;
	Material weaponButtonMaterial;
		
	public GameObject profileCameraPrefab;
	Camera portraitCam;
	RawImage portrait;
	Material portraitMat;
	
	RectTransform panePosition;
	RectTransform portraitPosition;
			
	InterfaceControl interfaceControl;
	
	void Start () {		
		panePosition = GetComponent<RectTransform>();
		
		mainMaterial = Instantiate(GetComponent<Image>().material) as Material;
		GetComponent<Image>().material = mainMaterial;
				
		Image healthBarImage = transform.Find("HealthBar").GetComponent<Image>();
		healthBarMaterial = healthBarImage.material = Instantiate(healthBarImage.material) as Material;
		
		equipmentButton = transform.Find("Equipment").GetComponent<Button>();
		equipmentButtonImage = equipmentButton.GetComponent<Image>();
		equipmentButtonMaterial = equipmentButtonImage.material = Instantiate(equipmentButton.GetComponent<Image>().material) as Material;
		equipmentButton.GetComponent<Image>().material = equipmentButtonMaterial;
		
		weaponButton = transform.Find("Weapon").GetComponent<Button>();
		weaponButtonImage = weaponButton.GetComponent<Image>();
		weaponButtonMaterial = weaponButtonImage.material = Instantiate(weaponButton.GetComponent<Image>().material) as Material;
		weaponButton.GetComponent<Image>().material = weaponButtonMaterial;
		
		bullet = transform.Find("Bullet").GetComponent<RectTransform>();
		unitName = bullet.Find("Name").GetComponent<Text>();
		
		portrait = transform.Find("Portrait").GetComponent<RawImage>();
		portraitMat = portrait.material = Instantiate(portrait.material) as Material;
		portraitPosition = portrait.GetComponent<RectTransform>();
		
	}
	
	public void Setup(UnitController _unit, InterfaceControl _interfaceControl) {
		unit = _unit;
		if (!unitName) print ("No Unit Name");
		unitName.text = unit.unitName;
		unit.SetUnitPane(this);
		interfaceControl = _interfaceControl;

		//create a camera for the unit pane 
		GameObject profileCamera = Instantiate(profileCameraPrefab, unit.transform.position, unit.transform.rotation) as GameObject;
		ChaseCam chaseCam = profileCamera.GetComponent<ChaseCam>();
		chaseCam.SetLookAtTarget(unit.headModel.transform, unit);
		chaseCam.RandomizeCameraPos();
		portraitCam = profileCamera.GetComponent<Camera>();
		portrait.texture = profileCamera.GetComponent<Camera>().targetTexture;
		
		Invoke("FillOutEquipmentButton", 0.1f);
		Invoke("FillOutWeaponButton", 0.1f);
	}
	
	void Update () {
		if (!unit) {
			if (!hidden) Hide();
		}
			
		if (unit.dead) {
			if (!dead) Die();
		}
			
		int direction = opened ? 1 : -1;
		transTimer = Mathf.Clamp01(transTimer + (GameTime.deltaTime * direction * 2));
		transAmount = Util.EaseInOutQuart(transTimer);
		
		Color frameGoal = frameColor;
		Color fillGoal = closeColor;
		Color HiLiteGoal = Color.black;
		float openPos = 0;
		float closePos = -10;
		
		if (unit) {
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
		} else {
			HiLiteGoal = Color.black;
			fillGoal = Color.black;
			closePos = -40;
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
		panePos.y = Mathf.Lerp(closePos, openPos, transAmount);
		panePosition.anchoredPosition = panePos;
		
		Vector2 portraitPos = portraitPosition.anchoredPosition;
		portraitPos.y = Mathf.Lerp(5, 14, transAmount);
		portraitPosition.anchoredPosition = portraitPos;	
		portraitMat.color = Color.Lerp(Color.clear, Color.white, transAmount);
		portraitCam.enabled = transAmount > 0.05f;
		
		Vector2 bulletPos = bullet.anchoredPosition;
		bulletPos.x = Mathf.Lerp(5, 17, transAmount);
		bulletPos.y = Mathf.Lerp(3.4f, 2.7f, transAmount);
		bullet.anchoredPosition = bulletPos;		
		  
		float health;
		if (unit) {
			health = unit.GetNormalizedHealth();
		} else {
			health = 0;
		} 
		
		Color healthColorGoal = Color.Lerp(Color.red, idleHealthColor, health);
		healthBarMaterial.color = Color.Lerp(healthBarMaterial.color, healthColorGoal, GameTime.deltaTime * 3);
		
		healthBarMaterial.mainTextureOffset = Vector2.Lerp(new Vector2(0.7f, 0.0f), new Vector2(0.0f, 0.0f), health);
		
	}
	
	void FillOutEquipmentButton() {
		equipment = unit.GetEquipment();
		equipmentButtonImage.sprite = equipment.buttonTexture;
	}
	
	void FillOutWeaponButton() {
		weapon = unit.GetWeapon();
		weaponButtonImage.sprite = weapon.buttonTexture;	
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
		
		if (eventData.clickCount > 1) {	
			Open();
			Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
		}
		
			
	}
	
	public void ButtonClicked(string name) {
		if (unit.dead) return;
		if (name.Contains("ClickRegion")) {
			Toggle();
		} else if (name.Equals("Equipment")) {
			if (equipment && !dead) {
				equipment.Equip(this);
				Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
			}
		}			
	}
	
	public void DisableEquipmentButton(Equipment usedEquipment) {
		equipment = null;
		equipmentButtonImage.sprite = emptyEquipmentTexture;
		
	}
	

	public void Toggle() {
		
		if (opened) 
			Close();
		else 
			Open ();
	}
	
	public void Open() {
		currentFrameColor = Color.white;
		Events.Send(gameObject, "SelectUnit", unit);
		Events.Send(gameObject, "NeedCameraFocus", unit.transform);	
		interfaceControl.CloseUnselectedUnitPanes();
		opened = true;
	}
	
	public void Close() {
		opened = false;
	}
	
	public void Hide() {
		Close();
		hidden = true;
		if (!unit) {
			//print ("hiding");
		}
	}
	
	public void Die() {
		dead = true;
	}
	
	public void TakeDamage() {
		currentFrameColor = Color.red;
		healthBarMaterial.color = Color.red;
	}
	
	public void Heal() {
		healthBarMaterial.color = Color.green;
	}
		
}
