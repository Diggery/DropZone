using UnityEngine;
using System.Collections;

public class Equipment : MonoBehaviour {


	[HideInInspector]
	public UnitController unitController;
	
	[HideInInspector]
	public Vector3 triggerDirection = Vector3.zero;
	
	public Sprite buttonTexture;
	public GameObject gizmoPrefab;
	
	GameObject currentGizmo;
	UnitPane unitPane;
	
	public int uses = 3;
	
	public virtual void Commit(Vector3 direction) {
		triggerDirection = direction;
	}
	
	public virtual void Trigger() {}
	public virtual void ConfigureGizmo(GameObject control) {}
	
	public void Attach(Transform attachPoint, UnitController _unitController) {
		unitController = _unitController;
		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;
		GetComponent<Renderer>().enabled = false;
	}
	
	public void Equip(UnitPane _unitPane) {
		if (currentGizmo) currentGizmo.SendMessage("Cancel");
		if (unitController.IsMoving()) unitController.StopMoving();
		unitPane = _unitPane;
		GameObject control = Instantiate(gizmoPrefab, unitController.transform.position, Quaternion.identity) as GameObject; 
		currentGizmo = control;
		ConfigureGizmo(control);
	}
	
	public bool InUse() {
		return currentGizmo;
	}

	public Vector3 GetTriggerDirection() {
		return triggerDirection;
	}		
	
	public void Cancel() {
		if (currentGizmo) {
			
			currentGizmo = null;
			unitPane = null;
		}
	}
	
	public void Use() {
		currentGizmo = null;
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
