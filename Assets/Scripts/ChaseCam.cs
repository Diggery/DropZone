using UnityEngine;
using System.Collections;

public class ChaseCam : MonoBehaviour {


	Transform lookAtTarget;
	
	Vector3 cameraOffset = new Vector3(1.0f, 0.4f, 1.5f);
	Vector3 lookAtOffset = new Vector3(0.0f, -0.1f, 0.0f);
	
	void Start () {
	
	}
	
	void Update () {
	
		if (!lookAtTarget) return;
		
		
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
	}
	public void RandomizeCameraPos() {
		float newXPos = Random.Range(cameraOffset.x * 0.25f, cameraOffset.x * 1.5f);
		if (Random.value < 0.5f) newXPos *= -1.0f;
		cameraOffset.x = newXPos;
	}
		
	public void SetOffset(Vector3 _cameraOffset, Vector3 _lookAtOffset) {
		lookAtOffset = _lookAtOffset;
		cameraOffset = _cameraOffset;
	}
}

