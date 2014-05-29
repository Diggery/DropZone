using UnityEngine;
using System.Collections;

public class ParticleGroup : MonoBehaviour {

	void Start () {
		transform.DetachChildren();
		Destroy(gameObject);
	}
}
