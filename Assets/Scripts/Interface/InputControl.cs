using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InputControl : MonoBehaviour {
	
	public UnitController selectedUnit;


	public GameObject selectorPrefab;
	public MapSelector selector;
	
	CameraControl cameraControl;
	
	GameControl gameControl;
	
	InterfaceControl interfaceControl;
	
	List<GameObject> openGizmoControls = new List<GameObject>();
	
	void Start () {		
		
		interfaceControl = Camera.main.gameObject.GetComponent<InterfaceControl>();
		Events.Listen(gameObject, "UnitSelected");
		GameObject selectorObj = GameObject.Instantiate(selectorPrefab, Vector3.zero, Quaternion.identity) as GameObject;
		selectorObj.name = "MapSelector";
		selector = selectorObj.GetComponent<MapSelector>();
		selector.SetUp();
		
		GameObject cameraRoot = GameObject.Find("CameraRoot");
		cameraControl = cameraRoot.GetComponent<CameraControl>();
	
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
	}
	
	public void AddGizmoControl(GameObject newControl) {
		openGizmoControls.Add(newControl);
	}
	
	public void RemoveGizmoControl(GameObject oldControl) {
		if (openGizmoControls.Contains(oldControl)) {
			openGizmoControls.Remove(oldControl);
		}
	}	
	
	public void UnitSelected(Events.Notification notification) {
		
		UnitController target = (UnitController)notification.data;
		
		CancelPath();
		
		if (target.transform.tag.Equals("Enemy") && selectedUnit) {
			selectedUnit.SetMainTarget(target.gameObject);
		}
		if (target.transform.tag.Equals("Player")) {
			interfaceControl.ClearEquipmentButtons();
			if (selectedUnit) 
				selectedUnit.Deselect();
			selectedUnit = target;
			target.Select();
			Equipment[] targetEquip = target.GetAllEquipment();
			foreach (Equipment equipment in targetEquip) {
				interfaceControl.AddEquipmentButton(equipment);
			}
		}
	}

	public void Deselect() {

		selectedUnit.Deselect();
		selectedUnit = null;
	}	

	public UnitController GetSelectedUnit() {
		return selectedUnit;
	}
	
	public void SendUnitToPosition(Vector3 moveLoc) {
		if (!selectedUnit) return;
		selectedUnit.GetComponent<UnitController>().MoveTo(moveLoc);
		Deselect();
		gameControl.SelectorResume();
	}
	
	public void CancelPath() {
		if (selectedUnit) {
			selectedUnit.GetComponent<PathMover>().CancelPathLine();
			selector.HideSelector();
			gameControl.SelectorResume();
		}
	}
	public void CancelGizmoControls() {
		foreach (GameObject control in openGizmoControls) {
			control.SendMessage("Cancel");
		}
	}
		
	public void UpdateUnitsPath(Vector3 moveLoc) {
		if (!selectedUnit) return;
		selectedUnit.GetComponent<PathMover>().UpdatePath(moveLoc);
	}
	
	public void StartControl() {
		if (!selectedUnit) return;
	}
	
	public void touchDown(TouchManager.TouchDownEvent touchEvent) {
		selector.HideButtons();
	}
		
	public void touchDrag(TouchManager.TouchDragEvent touchEvent) {

	}	
	
	public void touchUp(TouchManager.TouchUpEvent touchEvent) {

	}
	
	public void tap(TouchManager.TapEvent touchEvent) {
	
		CancelGizmoControls();
	
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if(Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
			if (selectedUnit) {
				selector.SetPos(hit.point);	
				selector.ShowButtons();
				gameControl.SelectorPause();
			}
		}
	}
	
	public void drag(TouchManager.TouchDragEvent touchEvent) {
		cameraControl.drag(touchEvent);
	}

}
