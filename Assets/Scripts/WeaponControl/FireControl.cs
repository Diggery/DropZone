using UnityEngine;
using System.Collections;

public class FireControl : MonoBehaviour {

	void Start () {
	
	}
	
	void Update () {
	
	}

	public void FireMainWeapon() {
		transform.root.SendMessage("FireMainWeapon");

	}
	public void ReplaceMagazine() {
		transform.root.SendMessage("ReplaceMagazine");
		
	}
}
