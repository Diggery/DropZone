using UnityEngine;
using System.Collections;

public class InputControl : MonoBehaviour {
	
	public UnitController selectedUnit;


	public GameObject selectorPrefab;
	public MapSelector selector;
	
	CameraControl cameraControl;
	
	GameControl gameControl;
	
	void Start () {
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
	
	void Update () {

	}
	
	public void UnitSelected(Events.Notification notification) {
		UnitController target = (UnitController)notification.data;
		if (target.transform.tag.Equals("Enemy")) {
			selectedUnit.SetMainTarget(target.gameObject);
		}
		if (target.transform.tag.Equals("Player")) {
			if (selectedUnit) 
				selectedUnit.Deselect();
			selectedUnit = target;
			target.Select();
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
			gameControl.SelectorResume();
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
