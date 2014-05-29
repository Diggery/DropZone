using UnityEngine;
using System.Collections;

public class BulletTrailControl : MonoBehaviour {

	float timer ;

	void Start () {
		renderer.material.mainTextureScale = new Vector2(1.0f, transform.localScale.z / 100);
	}
	
	void Update () {

		timer += Time.deltaTime;
		renderer.material.mainTextureOffset = new Vector2(0.0f, -timer);
		if (timer > transform.localScale.z / 100) Destroy(gameObject);
	
	}
}
