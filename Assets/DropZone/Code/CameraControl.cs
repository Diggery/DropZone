using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraControl : MonoBehaviour {

  float cameraMoveSpeed = 0.5f;
  float cameraScrollSpeed = 5.0f;
  float cameraRotateSpeed = 1.5f;
  float cameraDrift = 8;

  public Vector3 goalPos = Vector3.zero;
  public Quaternion goalRot = Quaternion.identity;

  Transform cameraTransform;
  Vector3 zoomOffset = Vector3.zero;
  Vector3 zoomGoal = Vector3.zero;
  float zoomAmount = 10;
  Vector2 zoomRange = new Vector2(10, 100);
  float zoomSpeed = 15;

  void Start() {
    goalPos = transform.position;
    goalRot = transform.rotation;
    cameraTransform = Camera.main.transform;
    zoomOffset = cameraTransform.localPosition.normalized;
    zoomAmount = zoomRange.x + 10;
    zoomGoal = zoomOffset * zoomAmount;
    cameraTransform.localPosition = zoomGoal;
  }

  void Update() {
    transform.position = Vector3.Lerp(transform.position, goalPos, Time.deltaTime * cameraDrift);
    transform.rotation = Quaternion.Lerp(transform.rotation, goalRot, Time.deltaTime * cameraDrift);
    cameraTransform.localPosition = Vector3.Lerp(cameraTransform.localPosition, zoomGoal, Time.deltaTime * cameraDrift);
  }

  public void Move(Vector3 direction) {
    goalPos += (transform.TransformDirection(direction) * cameraMoveSpeed);
  }

  public void Scroll(Vector3 amount) {
    goalPos += amount * cameraScrollSpeed;
  }

  public void Rotate(float direction) {
    goalRot = goalRot * Quaternion.AngleAxis(direction * cameraRotateSpeed, Vector3.up);
  }

  public void Zoom(float amount) {
    zoomAmount = Mathf.Clamp(zoomAmount + (-amount * zoomSpeed), zoomRange.x, zoomRange.y);
    zoomGoal = zoomOffset * zoomAmount;
  }
}
