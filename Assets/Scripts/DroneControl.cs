using UnityEngine;
using System.Collections;

public class DroneControl : MonoBehaviour {

	public Transform target;
	public float goalAltitude = 15.0f;
	public float stability = 0.3f;
	public float speed = 2.0f;
	public float hoverForce = 1000;

	Vector3 windGoal;
	Vector3 windDirection;
	float windTimer;

	float moveSpeed = -2;

	//Transform returnPoint;

	float observationTimer;
	Vector3 observationPoint;

	bool returning;
	
	void FixedUpdate () {

		if (returning) {

			return;
		}

		windTimer -= Time.deltaTime;
		if (windTimer < 0) {
			windGoal = NewWindDirection();
			windTimer = Random.Range(0.5f, 2.0f);
		}

		windDirection = Vector3.Lerp(windDirection, windGoal, Time.deltaTime);
		GetComponent<Rigidbody>().AddForce(windDirection);
		GetComponent<Rigidbody>().AddTorque(new Vector3(windDirection.z * 0.5f, 0, windDirection.x * 0.5f));

		if (!target) return;

		float distance = Mathf.Abs(goalAltitude - transform.position.y);
		if (goalAltitude > transform.position.y) {
			GetComponent<Rigidbody>().AddForce(Vector3.up * hoverForce * distance, ForceMode.Force);
		} else {
			GetComponent<Rigidbody>().AddForce(Vector3.down * hoverForce * distance, ForceMode.Force);
		}

		moveSpeed += Time.deltaTime;


		Vector3 thrust = (observationPoint - transform.position).normalized;
		GetComponent<Rigidbody>().AddForce(thrust * hoverForce * Mathf.Clamp01(moveSpeed), ForceMode.Force);


		Vector3 predictedUp = Quaternion.AngleAxis(
			GetComponent<Rigidbody>().angularVelocity.magnitude * Mathf.Rad2Deg * stability / speed,
			GetComponent<Rigidbody>().angularVelocity
			) * transform.up;
		
		Vector3 torqueVector = Vector3.Cross(predictedUp, Vector3.up);
		GetComponent<Rigidbody>().AddTorque(torqueVector * speed * speed);


		observationTimer -= Time.deltaTime;
		if (observationTimer < 0) {
			observationTimer = Random.Range(1,5);
			observationPoint = GetObservationPoint();
		}

	
	}
	public void SetTarget(Transform newTarget) {
		returning = false;
		target = newTarget;
		observationPoint = GetObservationPoint();
		
	}

	public void SetReturn(Transform newReturnPoint) {
//		returnPoint = newReturnPoint;
	}

	public Vector3 GetObservationPoint() {
		float xOffset = Random.Range(-1.0f, 1.0f) * 2.0f;
		return target.TransformPoint(new Vector3(xOffset, 0.0f, -2.0f));
	}

	public void ReturnHome() {
		returning = true;
	}

public Vector3 NewWindDirection() {
		Vector3 newWindDirection = new Vector3(Random.value, Random.value, Random.value).normalized;
		newWindDirection *= Random.Range(10, 100);
		return newWindDirection;
	}
}
