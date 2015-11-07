using UnityEngine;
using System.Collections;

public class ParticleKiller : MonoBehaviour {
	
	ParticleSystem system;
	
	void Update () {
		if (!system) {
			system = GetComponent<ParticleSystem>();
			return;
		}
		if (!system.IsAlive()) {
			Destroy (gameObject);    
	    }	
	}
}
