using UnityEngine;
using System.Collections;

public class BulletTrailControl : MonoBehaviour {

	float timer ;
	
	public float trailLength = 1.0f;
	public float trailSpeed = 1.0f;
	
	void Start () {
		renderer.material.mainTextureScale = new Vector2(1.0f, transform.localScale.z / trailLength);
	}
	
	void Update () {

		timer += Time.deltaTime * trailSpeed;
		renderer.material.mainTextureOffset = new Vector2(0.0f, -(timer - 0.25f));
		if (timer > transform.localScale.z / trailLength) Destroy(gameObject);
	
	}
}
