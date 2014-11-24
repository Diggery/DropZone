using UnityEngine;
using System.Collections;

public class EnemyController : MonoBehaviour {


	bool selected;

	void Start() {

	}

	public void tap(TouchManager.TapEvent touchEvent) {
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
