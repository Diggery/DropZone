using UnityEngine;
 using System.Collections;

public class OrientationStabilizer : MonoBehaviour {
	
	public float stability = 0.3f;
	public float speed = 2.0f;
	
	public Vector3 goalDirection = Vector3.up;
	
	// Update is called once per frame
	void FixedUpdate () {
		Vector3 predictedUp = Quaternion.AngleAxis(
				GetComponent<Rigidbody>().angularVelocity.magnitude * Mathf.Rad2Deg * stability / speed,
				GetComponent<Rigidbody>().angularVelocity
			) * transform.TransformDirection(goalDirection);
			
		
		
		Vector3 torqueVector = Vector3.Cross(predictedUp, Vector3.up);
		GetComponent<Rigidbody>().AddTorque(torqueVector * speed * speed);
	}
}