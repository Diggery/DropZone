using UnityEngine;
using System.Collections;

public class FireControl : MonoBehaviour {

	void Start () {
	
	}
	
	void Update () {
	
	}

	public void FireMainWeapon() {
		transform.parent.SendMessage("FireMainWeapon");

	}
	public void ReplaceMagazine() {
		transform.parent.SendMessage("ReplaceMagazine");
		
	}
}
