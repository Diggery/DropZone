using UnityEngine;
using System.Collections;

public class IndicatorMover : MonoBehaviour {

	Vector3 velocity;
	float damp = 0.85f;
	float lifeTime = 3.0f;
	
	public bool isHit;

	void Start () {
		transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
	}
	
	void Update () {
		velocity = velocity * damp;
		velocity.y += 0.001f;
		transform.position += velocity;
		transform.LookAt(Camera.main.transform);
		transform.localScale = Vector3.Lerp(transform.localScale, Vector3.one, Time.deltaTime * 5);
		lifeTime -= Time.deltaTime;
		renderer.material.color = new Color(1, 1, 1, Mathf.Clamp01(lifeTime * 5));
		if (lifeTime < 0) {
			Destroy(gameObject);
		}
	}
	
	public void Launch(Vector3 direction) {
		print (direction);
		velocity = direction.normalized * Random.Range(0.45f, 0.5f);
		if (isHit) velocity *= 1.1f;
	}
}
