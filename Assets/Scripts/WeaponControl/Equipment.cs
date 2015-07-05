using UnityEngine;
using System.Collections;

public class Equipment : MonoBehaviour {


	[HideInInspector]
	public UnitController unitController;
	
	public Sprite buttonTexture;
	public GameObject gizmoPrefab;
	
	GameObject currentGizmo;
	UnitPane unitPane;
	
	public int uses = 3;
	
	Vector3 triggerDirection = Vector3.zero;
	
	
	public void Attach(Transform attachPoint, UnitController _unitController) {
		unitController = _unitController;
		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;
		GetComponent<Renderer>().enabled = false;
		
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

	public void SetTriggerDirection(Vector3 direction) {
		triggerDirection = direction;
	}
	public Vector3 GetTriggerDirection() {
		return triggerDirection;
	}		
	public void Cancel() {
		if (currentGizmo) {
			currentGizmo.SendMessage("Cancel");
			currentGizmo = null;
			unitPane = null;
		}
	}
	
	public void Trigger() {
		currentGizmo = null;
		
		GameObject newEquipmentObj = Instantiate(gameObject, transform.position, transform.rotation) as GameObject;
		Equipment newEquipment = newEquipmentObj.GetComponent<Equipment>();
		newEquipment.Fire(triggerDirection);
		newEquipmentObj.GetComponent<Renderer>().enabled = true;
		
		uses--;
		if (uses < 1) {
			unitController.RemoveEquipment(this);
			if (unitPane) unitPane.DisableEquipmentButton(this);
			Destroy(gameObject);
		}

	}
	
	public void DropItem() {
		Destroy(gameObject);
	}
	
	public Animator GetAnimator() {
		return unitController.GetAnimator();
	}
}
