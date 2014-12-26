using UnityEngine;
using System.Collections;

public class EquipmentButton : MonoBehaviour {

	bool inUse;
	bool disabled;
	
	Equipment equipment;
	BoxCollider collision;
	
	void Start() {
		collision = GetComponent<BoxCollider>();
		if (!collision) print ("No collision on button");
	}
	
	void Update () {
		if (renderer.material.color.a < 0.95f) {
			Color matColor = Color.Lerp(renderer.material.color, Color.white, GameTime.deltaTime * 5);
			renderer.material.color = matColor;
			if (renderer.material.color.a > 0.95f) renderer.material.color = Color.white;
		} 
	}
	
	public void Activate(Equipment _equipment) {
		equipment = _equipment;
		inUse = true;
		renderer.enabled = true;
		renderer.material.mainTexture = equipment.buttonTexture;
		renderer.material.color = Color.clear;
		collision.enabled = true;
	}
	
	public bool IsOpen() {
		return !inUse || !disabled;
	}
	
	public void Clear() {	
		if (!collision) collision = GetComponent<BoxCollider>();
		renderer.enabled = false;
		collision.enabled = false;
		inUse = false;
		disabled = false;
	}
	public void Disable() {	
		if (!collision) collision = GetComponent<BoxCollider>();
		renderer.enabled = false;
		collision.enabled = false;
		inUse = false;
		disabled = true;
	}
		
	public void tap(TouchManager.TapEvent touchEvent) {
		if (!equipment) return;
		if (equipment.InUse()) return;
		if (disabled) return;
		equipment.Activate(this);
	}
}
