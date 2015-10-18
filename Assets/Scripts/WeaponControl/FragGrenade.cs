using UnityEngine;
using System.Collections;

public class FragGrenade : Equipment {

	bool inAir;
	float timer;
	float fuse = -1.0f;
	
	public GameObject explosion;

	
	void Update () {
		if (inAir) {
			timer += Time.deltaTime;
			if (timer > 0.25f) {
				GetComponent<Collider>().enabled = true;
			}
		}
		if (fuse > 0) {
			fuse -= Time.deltaTime;
			if (fuse < 0) {
				Explode();
			}
		}
	}
	
	public override void ConfigureGizmo(GameObject control) {
		control.GetComponent<Gizmo>().Setup(this);
	}
	
	public override void Commit(Vector3 direction) {
		triggerDirection = direction;
		GetAnimator().SetTrigger("Throw");
	}

	void Release(Vector3 direction) {
		transform.parent = null;
		GetComponent<Rigidbody>().isKinematic = false;
		GetComponent<Rigidbody>().useGravity = true;
		GetComponent<Rigidbody>().AddForce((-direction  * 3) + new Vector3 (0.0f, 8.0f, 0.0f), ForceMode.Impulse);
		
		inAir = true;
	}
	
	public override void Trigger() {
		
		GameObject newEquipmentObj = Instantiate(gameObject, transform.position, transform.rotation) as GameObject;
		FragGrenade newEquipment = newEquipmentObj.GetComponent<FragGrenade>();
		newEquipment.Release(triggerDirection);
		newEquipmentObj.GetComponent<Renderer>().enabled = true;
		Use ();
	}
	
	public void Explode() {
		Instantiate(explosion, transform.position, Quaternion.identity); 
		Destroy (gameObject);
		
		Collider[] hitColliders = Physics.OverlapSphere(transform.position, 5);
		float damage = 10;
		Vector3 offset = Vector3.zero;
		
		foreach (Collider collider in hitColliders ) {
			offset = (collider.transform.position - transform.position).normalized;
			UnitController.DamageInfo damageInfo = new UnitController.DamageInfo(offset, damage, UnitController.DamageInfo.DamageType.Explosive);
			collider.SendMessage("TakeDamage", damageInfo, SendMessageOptions.DontRequireReceiver);
		}
	}
	
	public void OnCollisionEnter() {
		fuse = 2.0f;
	}
}
