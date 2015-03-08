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
		}
	}
	
	public void DeselectUnit(Events.Notification notification) {
		DeselectUnit();
	}
	
	public void DeselectUnit() {
		if (selectedUnit) {
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

	public void MapClicked() {
	
		
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		
		if(Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
			
			//GameObject marker = GameObject.CreatePrimitive(PrimitiveType.Cube);
			//marker.transform.position = hit.point;
			//marker.transform.localScale = new Vector3(0.1f, 0.2f, 0.1f);
			
			// hack to click button selectors if the raycast missed from some reason
			Vector3[] buttonPositions = selector.GetButtonWorldPositions();
			
			if (Vector3.Distance(buttonPositions[0], hit.point) < 0.6f) {
				print ("Missed raycast");
				selector.ButtonClicked("Accept");
				return;
			}
			
			if (Vector3.Distance(buttonPositions[1], hit.point) < 0.6f) {
				print ("Missed raycast");
				selector.ButtonClicked("Cancel");
				return;
			}			
			
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
