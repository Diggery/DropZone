using UnityEngine;
using System.Collections;

public class Equipment : MonoBehaviour {

	[HideInInspector]
	public UnitInventory unitInventory;
	[HideInInspector]
	public UnitController unitController;
	
	public Sprite buttonTexture;
	public GameObject gizmoPrefab;
	
	GameObject currentGizmo;
	UnitPane unitPane;
	
	
	public void SetInventory(UnitInventory _unitInventory) {
		unitInventory = _unitInventory;
	}

	public void Attach(Transform attachPoint, UnitController _unitController) {
		unitController = _unitController;
		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;		
	}
			
	public void Activate(UnitPane _unitPane) {
		unitPane = _unitPane;
		GameObject control = Instantiate(gizmoPrefab, unitController.transform.position, Quaternion.identity) as GameObject; 
		currentGizmo = control;
		control.transform.parent = unitController.transform;
		control.SendMessage("SetUp", this);
	}
	
	public bool InUse() {
		return currentGizmo;
	}
	
	public virtual void Ready() {
	
	}
	
	public virtual void Fire(Vector3 direction) {
		
	}
		
	public void Cancel() {
		if (currentGizmo) {
			currentGizmo.SendMessage("Cancel");
			currentGizmo = null;
			unitPane = null;
		}
	}
	
	public void Trigger(Vector3 direction) {
		currentGizmo = null;
		unitController.RemoveEquipment(this);
		if (unitPane) unitPane.DisableEquipmentButton(this);
		Fire(direction);	
	}
	
	public void DropItem() {
		Destroy(gameObject);
	}
}
