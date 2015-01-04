using UnityEngine;
using System.Collections;

public class MapSection : MonoBehaviour {
	
	void Start () {
		InputControl inputControl = transform.parent.GetComponent<InputControl>();
		
	
		BoxCollider[] colliders = gameObject.GetComponentsInChildren<BoxCollider>();
		foreach (BoxCollider collider in colliders) {
			collider.gameObject.AddComponent<MapInput>().SetInputControl(inputControl);
		}
	
	
	}
}
