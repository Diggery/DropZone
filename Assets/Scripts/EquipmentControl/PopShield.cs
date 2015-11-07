using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class PopShield : Equipment, IDragHandler {

	public GameObject shieldUpEffect;
	public GameObject shieldDownEffect;
	
	public float maxRange;
	
	Transform shieldPanel;
	
	float damage = 10;
	public GameObject shieldBreakEffect;
	
	bool deployed;
	
	void Start() {
		if (deployed) return;
		shieldPanel = transform.Find("ShieldPanel");
		GetComponent<BoxCollider>().enabled = false;
		shieldPanel.GetComponent<Renderer>().enabled = false;
		shieldPanel.GetComponent<BoxCollider>().enabled = false;
	}
	
	public override void ConfigureGizmo(GameObject control) {
		control.GetComponent<LocationGizmo>().Setup(this, true, maxRange);
	}
	
	public override void Commit(Vector3 shieldPos) {
		GetAnimator().SetTrigger("UseEquipment");
		Instantiate(shieldUpEffect, shieldPos, Quaternion.identity);
		triggerDirection = shieldPos;
	}
	
	public override void Trigger() {
		Vector3 shieldPosition = triggerDirection;
		Quaternion shieldRotation = Quaternion.AngleAxis(Util.getDirection(transform, unitController.transform), Vector3.up);
		GameObject newEquipmentObj = Instantiate(gameObject, shieldPosition, shieldRotation) as GameObject;
		Instantiate(shieldDownEffect, triggerDirection, Quaternion.identity);
		PopShield newEquipment = newEquipmentObj.GetComponent<PopShield>();
		newEquipment.Show();

		Use();		
	}
	
	public void Show() {
		GetComponent<Renderer>().enabled = true;
		shieldPanel = transform.Find("ShieldPanel");
		GetComponent<BoxCollider>().enabled = true;
		shieldPanel.GetComponent<Renderer>().enabled = true;
		shieldPanel.GetComponent<BoxCollider>().enabled = true;	
		deployed = true;
	}
	
	public void OnDrag(PointerEventData eventData) {
		transform.Rotate(Vector3.up, eventData.delta.x);
	}
	
	public void TakeDamage() {
		damage--;
		if (damage < 0) {
			Instantiate(shieldBreakEffect, transform.position + new Vector3(0, 1.15f, 0), transform.rotation);
			Destroy(gameObject);
		}
	}
}
