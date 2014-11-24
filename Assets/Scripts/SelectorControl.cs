using UnityEngine;
using System.Collections;

public class SelectorControl : MonoBehaviour {
	/*
	public GameObject linePrefab;

	//Transform upperLeftCorner;
//	Transform upperRightCorner;
//	Transform lowerLeftCorner;
//	Transform lowerRightCorner;
//	Transform lineAttach;
//	Transform buttons;
//	Transform frame;
	Transform line;

	Transform target;
	Transform targetCenter;
	Vector3 targetOffset;

	bool expanded;

	//ActionCamControl actionCamControl;

	//InterfaceControl interfaceControl;


	public void SetUp (InterfaceControl newControl) {
	//	interfaceControl = newControl;
	//	upperLeftCorner = transform.Find("Center/UpperLeft");
	//	upperRightCorner = transform.Find("Center/UpperRight");
	//	lowerLeftCorner = transform.Find("Center/LowerLeft");
	//	lowerRightCorner = transform.Find("Center/LowerRight");
	//	frame = transform.Find("Selector");
//		lineAttach = transform.Find("Center/LowerRight/LineAttach");
//		buttons = transform.Find("Center/Buttons");

		Transform attackButton = transform.Find("Center/Buttons/AttackIcon");
		attackButton.gameObject.AddComponent<InputRepeater>().SetTarget(transform);
		Transform expandButton = transform.Find("Center/Buttons/ExpandIcon");
		expandButton.gameObject.AddComponent<InputRepeater>().SetTarget(transform);

		Reduce();

	}
	
	void Update () {
		if (target) {
			PositionSelector();
		}
	}

	void PositionSelector() {

		Vector3 screenCenter = Camera.main.WorldToScreenPoint(targetCenter.position + targetOffset);

		transform.position = Camera.main.ScreenToWorldPoint(new Vector3 (screenCenter.x, screenCenter.y, Camera.main.nearClipPlane + 0.1f));

		transform.rotation = Camera.main.transform.rotation;
	}

	public void SetTarget(Transform newTarget) {
		target = newTarget;
		UnitController controller = target.GetComponent<UnitController>();
		targetCenter = controller.GetTargetCenter();
		targetOffset = controller.GetTargetOffset();

	}

	public Transform GetLineAttach() {
		return lineAttach;
	}

	public void tap(TouchManager.TapEvent touchEvent) {
		if (touchEvent.touchTarget.name.Equals("AttackIcon")) {
	//		interfaceControl.AttackEnemy(target.gameObject);
		}

		if (touchEvent.touchTarget.name.Equals("ExpandIcon") && !expanded) Expand();
	}

	void Expand() {
	//	expanded = true;
	//	frame.renderer.material.mainTextureOffset = new Vector2(0.0f, 0.0f);
	//	buttons.gameObject.SetActive(false);
	//	actionCamControl = interfaceControl.AddActionCamera(gameObject, targetCenter);
	//	ConnectorLine.CreateLine(linePrefab, lineAttach, actionCamControl.GetLineAttach(), 0.01f);
	}

	public void Reduce() {
	//	expanded = false;
	//	frame.renderer.material.mainTextureOffset = new Vector2(0.0f, 0.5f);
	//	buttons.gameObject.SetActive(true);
	}
		*/
}
