using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InterfaceControl : MonoBehaviour {

	float UIScale_Landscape = 1.0f;
	float UIScale_Portrait = 0.8f;
	float UIScale = 1.0f;
	
	public UnitPane[] unitPanes;
	
	public EquipmentButton[] equipmentButtons;
		
	int currentHieght;
	
	void Start() {
		Initialize();
	}
	
	void Update() {		
		
		if (Screen.height != currentHieght) {
			Initialize();
		}

		
	}
	
	void Initialize() {
		ClearEquipmentButtons();
		
		currentHieght = Screen.height;
		if (Screen.width > Screen.height) {
			UIScale = UIScale_Landscape;
		} else {
			UIScale = UIScale_Portrait;
		}
		
		GameObject[] anchors = GameObject.FindGameObjectsWithTag("UIAnchor");
		foreach (GameObject anchor in anchors) {
			lockToEdge(anchor.transform);
		}
	}
	
	public void EnableUnitPane(UnitController unit) {
		bool added = false;
		foreach (UnitPane pane in unitPanes) {
			if(!pane.unit) {
				pane.SetUnit(unit);
				added = true;
				break;
			}
		}
		if (!added) {
			Debug.Log ("No pane for " + unit.transform.name);
		}
	
	}
	
	public void CloseUnitPanes() {
		foreach (UnitPane pane in unitPanes) 
			pane.Close();
			
	}
	
	public void OpenUnitPanes() {
		foreach (UnitPane pane in unitPanes) 
			pane.Open();
	}
	
	public bool AddEquipmentButton(Equipment equipment) {
		foreach (EquipmentButton equipmentButton in equipmentButtons) {
			if (equipmentButton.IsOpen()) {
				equipmentButton.Activate(equipment);
				return true;
			}
		}	
		return false;
	}
	public void ClearEquipmentButtons() {
		foreach (EquipmentButton equipmentButton in equipmentButtons) {
			equipmentButton.Clear();
		}
	}
		
	public void lockToEdge(Transform newElement) {
		
		float screenX;
		float screenY;
		
		switch(newElement.name) {
		case "LowerLeft" :
			screenX = 0.0f;
			screenY = 0.0f;
			break;
		case "LowerRight" :
			screenX = Screen.width;
			screenY = 0.0f;
			break;
		case "LowerCenter" :
			screenX = Screen.width * 0.5f;
			screenY = 0.0f;
			break;
		case "UpperRight" :
			screenX = Screen.width;
			screenY = Screen.height;
			break;
		case "UpperCenter" :
			screenX = Screen.width * 0.5f;
			screenY = Screen.height;
			break;
		case "UpperLeft" :
			screenX = 0.0f;
			screenY = Screen.height;
			break;
		case "Center" :
			screenX = Screen.width * 0.5f;
			screenY = Screen.height * 0.5f;
			break;
		default :
			screenX = Screen.width * 0.5f;
			screenY = Screen.width * 0.5f;
			break;
			
		}
		
		//move element into position
		newElement.position = Camera.main.ScreenToWorldPoint(new Vector3 (screenX, screenY, Camera.main.nearClipPlane + 1));
		newElement.rotation = Camera.main.transform.rotation;
		newElement.Rotate(0.0f, 180.0f, 0.0f);
		newElement.localScale = new Vector3(UIScale, UIScale, UIScale);
	}

}
