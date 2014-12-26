using UnityEngine;
using System.Collections;

public class FragGrenade : Equipment {

	bool inAir;
	float timer;

	void Start () {
		renderer.enabled = false;
	}
	
	void Update () {
		if (inAir) {
			timer += Time.deltaTime;
			if (timer > 0.25f) {
				collider.enabled = true;
			}
		}
	}
	
	public override void Ready() {
		renderer.enabled = true;
	}
	public override void Fire(Vector3 direction) {
		print (direction);
		transform.parent = null;
		rigidbody.isKinematic = false;
		rigidbody.useGravity = true;
		rigidbody.AddForce((-direction  * 3) + new Vector3 (0.0f, 8.0f, 0.0f), ForceMode.Impulse);
		inAir = true;
	}
}
