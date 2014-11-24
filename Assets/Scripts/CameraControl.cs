using UnityEngine;
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
	
	
	
	void Start () {
		cameraObj = Camera.main.transform;
		cameraLookAt = GameObject.Find("CameraLookAt").transform;
		cameraLookAt.parent = null;
		
		GameObject mapObj = GameObject.Find("Map");
		MapControl mapControl = mapObj.GetComponent<MapControl>();
		mapSize = mapControl.GetMapSize();
		cameraOffset.x = (float)mapSize.x/2.0f;
		
		touchOffset.y = cameraLookAt.position.z;
	}
	
	void LateUpdate () {
	

		// lookAt position
		Vector3 lookAtGoal = new Vector3(cameraOffset.x, 0, touchOffset.y);
		if (mapSelector.visible) {
			lookAtGoal = Vector3.Lerp(lookAtGoal, mapSelector.transform.position, 0.5f);
		}
		
		
		cameraLookAt.position = Vector3.Lerp(cameraLookAt.position, lookAtGoal, GameTime.deltaTime * cameraSpeed);
		
		// cameraRoot position
		Vector3 rootPos = new Vector3(cameraOffset.x + touchOffset.x, 0.0f, cameraLookAt.position.z - 10);
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
	
	public void drag(TouchManager.TouchDragEvent touchEvent) {
		
		float widthOffset = (float)mapSize.x / 2.5f;
		touchOffset.x = Mathf.Clamp(touchOffset.x - (((float)touchEvent.touchDelta.x / (float)Screen.width) * 10), -widthOffset, widthOffset);
		touchOffset.y -= ((float)touchEvent.touchDelta.y / (float)Screen.height) * 20;
	}
}
