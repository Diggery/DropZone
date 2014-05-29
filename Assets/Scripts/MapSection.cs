using UnityEngine;
using System.Collections;

public class MapSection : MonoBehaviour {
	

	void Start () {
		BoxCollider[] colliders = gameObject.GetComponentsInChildren<BoxCollider>();
		foreach (BoxCollider collider in colliders) {
			collider.gameObject.AddComponent<InputRepeater>();
		}
	
	}
}
