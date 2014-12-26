using UnityEngine;
using System.Collections;

public class Equipment : MonoBehaviour {

	[HideInInspector]
	public UnitInventory unitInventory;
	[HideInInspector]
	public UnitController unitController;
	
	public Texture buttonTexture;
	public GameObject gizmoPrefab;
	
	GameObject currentGizmo;
	EquipmentButton currentButton;
	
	public void SetInventory(UnitInventory _unitInventory) {
		unitInventory = _unitInventory;
	}

	public void Attach(Transform attachPoint, UnitController _unitController) {
		unitController = _unitController;
		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;		
	}
			
	public void Activate(EquipmentButton _currentButton) {
		currentButton = _currentButton;
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
			currentButton = null;
		}
	}
	
	public void Trigger(Vector3 direction) {
		currentGizmo = null;
		unitController.RemoveEquipment(this);
		if (currentButton) currentButton.Disable();
		Fire(direction);	
	}
	
	public void DropItem() {
		Destroy(gameObject);
	}
}
