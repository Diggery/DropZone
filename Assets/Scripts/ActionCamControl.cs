using UnityEngine;
using System.Collections;

public class ActionCamControl : MonoBehaviour {
/*
	Transform cameraTarget;
	public Vector3 lookAtOffset;

	Transform actionCameraPrefab;

	public int cameraSlot;

	float timer = 0.0f;

	Transform drone;
	DroneControl droneControl;

	Transform actionCamera;
	Transform center;
	Transform upperLeftCorner;
	Transform upperRightCorner;
	Transform lowerLeftCorner;
	Transform lowerRightCorner;
	Transform lineAttach;
	Transform attackButton;
	Transform bombButton;
	Transform closeButton;

	Vector3 lastPos;
	Vector3 newPos;
	Vector3 lastScale;
	Vector3 newScale;

	InterfaceControl interfaceControl;
	GameObject selector;

	public AnimationCurve slideCurve;

	bool closing;

	public void SetUp (InterfaceControl newControl, GameObject newSelector, GameObject newDrone, Transform returnPoint) {

		BoxCollider collision;

		interfaceControl = newControl;
		selector = newSelector;

		drone = newDrone.transform;
		droneControl = drone.gameObject.GetComponent<DroneControl>();
		droneControl.SetReturn(returnPoint);

		actionCamera = drone.Find("ActionCamera");

		//center = transform.Find("Center");
		upperLeftCorner = transform.Find("Center/UpperLeft");
		//upperRightCorner = transform.Find("Center/UpperRight");
		//lowerLeftCorner = transform.Find("Center/LowerLeft");
		lowerRightCorner = transform.Find("Center/LowerRight");
		lineAttach = transform.Find("Center/UpperLeft/LineAttach");
		attackButton = transform.Find("Center/LowerLeft/FrameButton1");
		collision = attackButton.gameObject.AddComponent<BoxCollider>();
		collision.size += new Vector3(0.0f, 0.0f, 0.01f);
		attackButton.gameObject.AddComponent<InputRepeater>().SetTarget(transform);
		bombButton = transform.Find("Center/LowerLeft/FrameButton2");
		collision = bombButton.gameObject.AddComponent<BoxCollider>();
		collision.size += new Vector3(0.0f, 0.0f, 0.01f);
		bombButton.gameObject.AddComponent<InputRepeater>().SetTarget(transform);
		closeButton = transform.Find("Center/LowerLeft/FrameButton3");
		collision = closeButton.gameObject.AddComponent<BoxCollider>();
		collision.size += new Vector3(0.0f, 0.0f, 0.01f);
		closeButton.gameObject.AddComponent<InputRepeater>().SetTarget(transform);

		// stick to the camera
		transform.parent = Camera.main.transform;
		SetCameraSlot(0);

		drone.parent = null;

	}
	
	void Update () {
		if (actionCamera && cameraTarget) {

		//	actionCamera.position = cameraTarget.position + lookAtOffset;
			actionCamera.LookAt(cameraTarget);
		} 

		if (timer < 1) {
			timer = Mathf.Clamp01(timer += Time.deltaTime * 2);
			transform.localPosition = Vector3.Lerp(lastPos, newPos, slideCurve.Evaluate(timer));
			transform.localScale = Vector3.Lerp(lastScale, newScale, slideCurve.Evaluate(timer));

			if (cameraSlot < 3) { 
				actionCamera.camera.rect = GetFrameRect();
			} else {
				actionCamera.camera.enabled = false;
			}
		} else {
			if (cameraSlot >= 3 || closing) {
				interfaceControl.RemoveActionCamera(this);
				if (selector) selector.GetComponent<SelectorControl>().Reduce();
				Destroy (actionCamera.gameObject);
				Destroy (gameObject);
			}

			if (!actionCamera.camera.enabled) actionCamera.camera.enabled = true;

		}


	}

	public Vector3 GetScreenPos(int CameraSlot) {
		CameraSlot++;
		float heightOffset = Screen.height/3 * CameraSlot;
		heightOffset -= (Screen.height/3)/2;

		Vector3 screenPos = Camera.main.ScreenToWorldPoint(new Vector3 (Screen.width, -heightOffset + Screen.height, Camera.main.nearClipPlane + 0.1f));
		Vector3 camRelative = Camera.main.transform.InverseTransformPoint(screenPos);
		return camRelative;
	}

	public Rect GetFrameRect() {
		Vector3 topLeft = Camera.main.WorldToScreenPoint(upperLeftCorner.position);
		Vector3 bottomRight = Camera.main.WorldToScreenPoint(lowerRightCorner.position);
		float left = topLeft.x/Screen.width;
		float top = topLeft.y/Screen.height;
		float width = bottomRight.x/Screen.width - topLeft.x/Screen.width;
		float height = topLeft.y/Screen.height - bottomRight.y/Screen.height;
		Rect viewPort = new Rect(left, top - height, width, height);
		return viewPort;
	}
	public void SetTarget(Transform newTarget) {
		cameraTarget = newTarget;
		droneControl.SetTarget(cameraTarget);
	}

	public void SetCameraSlot(int newSlot) {
		if (newSlot == cameraSlot) return;
		cameraSlot = newSlot;
		lastPos = transform.localPosition;
		newPos = GetScreenPos(cameraSlot);
		if (cameraSlot == 0) {
			lastScale = new Vector3(0.5f, 0.5f, 0.5f);
			newScale = new Vector3(1.0f, 1.0f, 1.0f);
		} else if (cameraSlot == 3) {
			lastScale = new Vector3(1.0f, 1.0f, 1.0f);
			newScale = new Vector3(0.5f, 0.5f, 0.5f);
		} else {
			lastScale = new Vector3(1.0f, 1.0f, 1.0f);
			newScale = new Vector3(1.0f, 1.0f, 1.0f);
		}
		timer = 0.0f;
	}

	public void CloseCamera() {
		actionCamera.camera.enabled = false;
		lastPos = transform.localPosition;
		newPos = Camera.main.transform.InverseTransformPoint(selector.transform.position + new Vector3(0.05f, 0.0f, 0.0f));
		lastScale = new Vector3(1.0f, 1.0f, 1.0f);
		newScale = new Vector3(0.5f, 0.5f, 0.5f);
		timer = 0.0f;
		closing = true;
		droneControl.ReturnHome();
	}

	public Transform GetLineAttach() {
		if (!lineAttach) lineAttach = transform.Find("Center/UpperLeft/LineAttach");
		return lineAttach;
	}
	public void tap(TouchManager.TapEvent touchEvent) {
		print ("buttons touched");
		if (touchEvent.touchTarget.name.Equals("FrameButton1")) {
			//interfaceControl.AttackEnemy(target.gameObject);
		}
		if (touchEvent.touchTarget.name.Equals("FrameButton2")) {
			interfaceControl.BombEnemy(cameraTarget.gameObject);
		}		
		if (touchEvent.touchTarget.name.Equals("FrameButton3")) {
			CloseCamera();
		}	
	}
	*/
}
