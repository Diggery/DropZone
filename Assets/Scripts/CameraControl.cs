using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;

public class CameraControl : MonoBehaviour {

	Transform cameraObj;
	Transform cameraLookAt;
	
	public Vector3 cameraOffset;
	Vector3 touchOffset;
	
	public float cameraSpeed = 8.0f;
	
	MapSelector mapSelector;
	MapControl mapControl;
	Vector2 mapSize;
	float widthOffset;
	public AnimationCurve widthZCurve;
	
	
	void Start () {
		Events.Listen(gameObject, "NeedCameraFocus");
		
		cameraObj = Camera.main.transform;
		cameraLookAt = GameObject.Find("CameraLookAt").transform;
		cameraLookAt.parent = null;
		
		GameObject mapObj = GameObject.Find("Map");
		MapControl mapControl = mapObj.GetComponent<MapControl>();
		mapSize = mapControl.GetMapSize();
		cameraOffset.x = (float)mapSize.x/2.0f;
		
		touchOffset.y = cameraLookAt.position.z;
		
		widthOffset = (float)mapSize.x / 1.5f;
		
	}
	
	void LateUpdate () {
	

		// lookAt position
		Vector3 lookAtGoal = new Vector3(cameraOffset.x + (touchOffset.x * 0.75f), 0, touchOffset.y);
		if (mapSelector.visible) {
			lookAtGoal = Vector3.Lerp(lookAtGoal, mapSelector.transform.position, 0.5f);
		}
		
		cameraLookAt.position = Vector3.Lerp(cameraLookAt.position, lookAtGoal, GameTime.deltaTime * cameraSpeed);
		
		// cameraRoot position
		float rootZPos = cameraLookAt.position.z - (cameraOffset.z * widthZCurve.Evaluate((cameraOffset.x + touchOffset.x)/(widthOffset * 1.5f)));
		Vector3 rootPos = new Vector3(cameraOffset.x + touchOffset.x, 0.0f, rootZPos);
		transform.position = Vector3.Lerp(transform.position, rootPos, GameTime.deltaTime * cameraSpeed);
		
		//camera rotation
		Quaternion cameraRot = Quaternion.LookRotation(cameraLookAt.position - cameraObj.position);
		cameraObj.rotation = cameraRot;
		
		// camera position
		cameraObj.localPosition = Vector3.Lerp(cameraObj.localPosition, new Vector3(0, cameraOffset.y, 0), GameTime.deltaTime * cameraSpeed);
		
		
	}
	
	public void SetMapSelector(MapSelector _mapSelector) {
		mapSelector = _mapSelector;
	}
	

	public void Dragged(Vector2 direction) {
		
		touchOffset.x = Mathf.Clamp(touchOffset.x - (((float)direction.x / (float)Screen.width) * 20), -widthOffset, widthOffset);
		touchOffset.y -= ((float)direction.y / (float)Screen.height) * 20;
	}
			
	public void NeedCameraFocus(Events.Notification notification) {
		Transform focusTarget = (Transform)notification.data;
		cameraLookAt.position = focusTarget.position;
	}

	
}
