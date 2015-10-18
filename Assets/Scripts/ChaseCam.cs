using UnityEngine;
using System.Collections;

public class ChaseCam : MonoBehaviour {


	Transform lookAtTarget;
	UnitController unitController;
	
	Vector3 activeCameraOffset = new Vector3(1.2f, 0.5f, 2.25f);
	Vector3 deadCameraOffset = new Vector3(0.0f, 3.5f, 2.0f);
	Vector3 lookAtOffset = new Vector3(0.0f, -0.1f, 0.0f);
	
	void Start () {
	
	}
	
	void Update () {
	
		if (!lookAtTarget) return;
		
		
		Vector3 cameraOffset;
		
		if (unitController) {
			cameraOffset = unitController.dead ? deadCameraOffset : activeCameraOffset; 
		} else {
			cameraOffset = activeCameraOffset;
		}		       
		
		Vector3 posGoal = lookAtTarget.TransformPoint((Vector3.forward * cameraOffset.z) + (Vector3.right * cameraOffset.x));
		posGoal.y = lookAtTarget.position.y + cameraOffset.y;
		transform.position = Vector3.Lerp(transform.position, posGoal, GameTime.deltaTime * 5);

		Vector3 lookAtGoal = lookAtTarget.position + lookAtOffset;
		
		transform.LookAt(lookAtGoal);
	
	}
	
	public void SetRenderTexture(RenderTexture texture) {
		gameObject.GetComponent<Camera>().targetTexture = texture;
	}
	
	public void SetLookAtTarget(Transform _lookAtTarget) {
		lookAtTarget = _lookAtTarget;
		unitController = lookAtTarget.gameObject.GetComponent<UnitController>();
	}
	public void SetLookAtTarget(Transform _lookAtTarget, UnitController _unitController) {
		lookAtTarget = _lookAtTarget;
		unitController = _unitController;
	}
	public void RandomizeCameraPos() {
		float newXPos = Random.Range(activeCameraOffset.x * 0.25f, activeCameraOffset.x * 1.5f);
		if (Random.value < 0.5f) newXPos *= -1.0f;
		activeCameraOffset.x = newXPos;
	}
		
	public void SetOffset(Vector3 _cameraOffset, Vector3 _lookAtOffset) {
		lookAtOffset = _lookAtOffset;
		activeCameraOffset = _cameraOffset;
	}
}

