using UnityEngine;
using System.Collections;

public class InputControl : MonoBehaviour {
	
	public UnitController selectedUnit;


	public GameObject selectorPrefab;
	
	public MapSelector selector;

	void Start () {
		Events.Listen(gameObject, "UnitSelected");
		GameObject selectorObj = GameObject.Instantiate(selectorPrefab, Vector3.zero, Quaternion.identity) as GameObject;
		selector = selectorObj.GetComponent<MapSelector>();
	
	}
	
	void Update () {

		
	}
	public void UnitSelected(Events.Notification notification) {
		UnitController target = (UnitController)notification.data;
		if (target.transform.tag.Equals("Enemy")) {
			print ("BadGuy");
		}
		if (target.transform.tag.Equals("Player")) {
			selectedUnit = target;
		}
	}
	

	public UnitController GetSelectedUnit() {
		return selectedUnit;
	}
	
	public void SendUnitToPosition(Vector3 moveLoc) {
		if (!selectedUnit) return;
		selectedUnit.GetComponent<UnitController>().MoveTo(moveLoc);
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
			selector.SetPos(hit.point);	
		}
		
		selector.ShowButtons();
	}


}
