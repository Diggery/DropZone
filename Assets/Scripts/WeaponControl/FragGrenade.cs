using UnityEngine;
using System.Collections;

public class FragGrenade : Equipment {

	bool inAir;
	float timer;
	float fuse = -1.0f;
	
	public GameObject explosion;

	void Start () {
		GetComponent<Renderer>().enabled = false;
	}
	
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
	
	public override void Ready() {
		GetComponent<Renderer>().enabled = true;
	}
	public override void Fire(Vector3 direction) {
		transform.parent = null;
		GetComponent<Rigidbody>().isKinematic = false;
		GetComponent<Rigidbody>().useGravity = true;
		GetComponent<Rigidbody>().AddForce((-direction  * 3) + new Vector3 (0.0f, 8.0f, 0.0f), ForceMode.Impulse);
		inAir = true;
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
