using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;
using System.Collections.Generic;

public class InputControl : MonoBehaviour {
	
	public UnitController selectedUnit;
	


	public GameObject selectorPrefab;
	MapSelector selector;
	
	CameraControl cameraControl;
	
	GameControl gameControl;
		
	List<GameObject> openGizmoControls = new List<GameObject>();
	

	void Start () {	
			
		Events.Listen(gameObject, "SelectUnit");
		Events.Listen(gameObject, "DeselectUnit");
		
		GameObject selectorObj = GameObject.Instantiate(selectorPrefab, Vector3.zero, Quaternion.identity) as GameObject;
		selectorObj.name = "MapSelector";
		selector = selectorObj.GetComponent<MapSelector>();
		selector.SetUp();
		
		GameObject cameraRoot = GameObject.Find("CameraRoot");
		cameraControl = cameraRoot.GetComponent<CameraControl>();
	
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
		gameControl.SetInputControl(this);
	}

	
	public void AddGizmoControl(GameObject newControl) {
		openGizmoControls.Add(newControl);
	}
	
	public void RemoveGizmoControl(GameObject oldControl) {
		if (openGizmoControls.Contains(oldControl)) {
			openGizmoControls.Remove(oldControl);
		}
	}	

	public void SelectUnit(Events.Notification notification) {
		UnitController unit = (UnitController)notification.data;
		UnitSelected(unit);
	}
	
	public void UnitSelected(UnitController target) {
		CancelPath();
		gameControl.Pause("UnitSelected");
		
		if (target.transform.tag.Equals("Enemy") && selectedUnit) {
			selectedUnit.SetMainTarget(target.gameObject);
		}
		if (target.transform.tag.Equals("Player")) {

			if (selectedUnit) 
				selectedUnit.Deselect();
			selectedUnit = target;
			target.Select();
			if (target.IsDragging()) {
				gameControl.ShowEvacZones(true);
			}
			
			///special hack for ragdoll debugging
			//target.Die ();
			//Transform torso = target.GetTargetCenter();
			//torso.parent.parent.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
		}
	}
	
	
	public void UnitDoubleClicked(UnitController target) {
		target.OpenPane();
		Events.Send(gameObject, "NeedCameraFocus", target.transform);	
		
	}
		
	public void DeselectUnit(Events.Notification notification) {
		DeselectUnit();
	}
	
	public void DeselectUnit() {
		if (selectedUnit) {
			if (selectedUnit.IsDragging()) {
				gameControl.ShowEvacZones(false);
			}
			selectedUnit.Deselect();
			selectedUnit = null;
			
			gameControl.Resume("UnitSelected");
		}
	}	

	public UnitController GetSelectedUnit() {
		return selectedUnit;
	}
	
	public void SendUnitToPosition(Vector3 moveLoc) {
		if (!selectedUnit) return;
		selectedUnit.GetComponent<UnitController>().MoveTo(moveLoc);
		DeselectUnit();
		gameControl.Resume("MapSelector");
	}
	
	public void CancelPath() {
		if (selectedUnit) {
			selectedUnit.GetComponent<PathMover>().CancelPathLine();
			selector.HideSelector();
			gameControl.Resume("MapSelector");
		}
	}
	bool SomeGizmoOverridesMap(Vector3 mapPos) {
	
		foreach(GameObject control in openGizmoControls) {
			Gizmo gizmo = control.GetComponent<Gizmo>();
			if (gizmo.OverrideMapInput(mapPos)) return true;
		}
		return false;
	}
	
	void CancelGizmoControls() {
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

	public void MapClicked() {
	
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		if(Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
			if (SomeGizmoOverridesMap(hit.point)) return;	
			if (selectedUnit) {
				selector.SetPos(hit.point);	
				selector.ShowButtons();
				gameControl.Pause("MapSelector");
			}
		}
		
		CancelGizmoControls();
		
	}
	
	public void MapDragged(PointerEventData eventData) {
		cameraControl.Dragged(eventData.delta);
	}
			

}
