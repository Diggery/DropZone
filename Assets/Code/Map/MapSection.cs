using UnityEngine;
using System.Collections;

public class MapSection : MonoBehaviour {
	
	void Start () {
		InputControl inputControl = transform.root.GetComponent<InputControl>();
		
	
		BoxCollider[] colliders = gameObject.GetComponentsInChildren<BoxCollider>();
		foreach (BoxCollider collider in colliders) {
			collider.gameObject.AddComponent<MapInput>().SetInputControl(inputControl);
		}
	}
}
