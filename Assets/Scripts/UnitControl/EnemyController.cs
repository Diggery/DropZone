using UnityEngine;
using System.Collections;

public class EnemyController : MonoBehaviour {

	InterfaceControl interfaceControl;

	bool selected;

	void Start() {
		GameObject interfaceControlObj = GameObject.Find("InterfaceControl");
		interfaceControl = interfaceControlObj.GetComponent<InterfaceControl>();

	}

	public void tap(TouchManager.TapEvent touchEvent) {
	//	interfaceControl.EnemySelected(this);
	}

	public void Select() {
		selected = true;
	}
	public void Deselect() {
		selected = false;
	}
	public bool IsSelected() {
		return selected;
	}


}
