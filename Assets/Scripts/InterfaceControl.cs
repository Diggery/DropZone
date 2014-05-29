using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InterfaceControl : MonoBehaviour {
	/*
	public GameObject mech;
	MechController mechController;
	public GameObject selectorPrefab;
	public GameObject actionCameraPrefab;
	List<ActionCamControl> actionCameras = new List<ActionCamControl>();

	void Start () {
		unitController = mech.GetComponent<MechController>();

	}
	
	void Update () {
	
	}

	public void EnemySelected(EnemyController controller) {
		if (controller.IsSelected()) {
			return;
		} 

		GameObject newSelector = Instantiate(selectorPrefab, transform.position, Quaternion.identity) as GameObject;
		SelectorControl selector = newSelector.GetComponent<SelectorControl>();
		selector.SetUp(this);
		selector.SetTarget(controller.transform);
		controller.Select();

	}

	public ActionCamControl AddActionCamera(GameObject selector, Transform newTarget) {

		for (int i = 0; i < actionCameras.Count; i++) actionCameras[i].SetCameraSlot(i + 1);
		Vector3 startOffset = selector.transform.position + new Vector3(0.05f, 0.0f, 0.0f);
		GameObject actionCamFrame = Instantiate(actionCameraPrefab, startOffset, Camera.main.transform.rotation) as GameObject;
		GameObject drone = mechController.LaunchDrone();
			
		ActionCamControl camControl = actionCamFrame.GetComponent<ActionCamControl>();
		camControl.SetUp(this, selector, drone, mechController.transform);
		camControl.SetTarget(newTarget);
		actionCamFrame.transform.localScale = new Vector3 (0.1f, 0.1f,0.1f);
		actionCamFrame.name = "ActionCamera";
		actionCameras.Insert(0,camControl);
		return camControl;
	}
	public void RemoveActionCamera(ActionCamControl deadCamera) {
		actionCameras.Remove(deadCamera);
	}

	public void AttackEnemy(GameObject enemy) {
		mechController.SetMainTarget(enemy);
	}
	
	public void BombEnemy(GameObject enemy) {
		mechController.SetSecondaryTarget(enemy);
	}
	*/
}
