using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TargetingControl : MonoBehaviour {

	UnitController unitController;
	MapControl mapControl;
	Animator animator;

	Transform currentTarget;
	Transform targetCenter;
	Vector3 targetOffset;

	public Vector3 aimingGridOffset;
	Vector2 aimingAngle;
	Vector2 aimOffset;

	int rotateDirection;
	float rotateTimer;

	float maxVisualRange = 20;

	float searchTime = 1;
	float searchTimer = 1;

	public void Init (MapControl newMapControl, Animator newAnimator) {
		unitController = GetComponent<UnitController>();
		mapControl = newMapControl;
		animator = newAnimator;
	}
	
	void Update () {
		if (transform.tag != "Player") return;
		searchTimer -= Time.deltaTime;
		if (searchTimer < 0) {
			Transform bestTarget = FindTarget();
			if (bestTarget) SetTarget(bestTarget);
			searchTimer = searchTime;
		}

		if (!currentTarget) return;
		//Debug.DrawLine(transform.position + aimingGridOffset, currentTarget.position + aimingGridOffset, Color.red);

		if (rotateTimer > 0) { 
			rotateTimer -= Time.deltaTime;
			transform.Rotate(Vector3.up, rotateDirection * 90 * Time.deltaTime);
		}



		Vector3 aimPosition = transform.position + aimingGridOffset;

		Vector3 relativePos = transform.InverseTransformPoint(targetCenter.position + targetOffset);

		float distanceToTarget = Vector3.Distance(aimPosition, currentTarget.position);

		float altitude = (Mathf.Asin(((targetCenter.position.y + targetOffset.y) - aimPosition.y) / distanceToTarget)) * Mathf.Rad2Deg;
		float heading = (Mathf.Atan(relativePos.x / relativePos.z)) * Mathf.Rad2Deg;


			
		float normalizedHeading = Mathf.InverseLerp(-90, 90, heading);
		normalizedHeading = (normalizedHeading * 2) - 1;
		float normalizedAltitude = Mathf.InverseLerp(-45, 45, altitude);
		normalizedAltitude = (normalizedAltitude * 2) - 1;

		Vector2 aimGoal = new Vector2(normalizedHeading, normalizedAltitude);

	

		if (!unitController.IsMoving() && relativePos.z < 0)  {

			if (rotateTimer <= 0) { 
				if (relativePos.x > 0) {
					animator.SetTrigger("TurnRight");
					rotateDirection = 1;
					rotateTimer = 1;
				} else {
					animator.SetTrigger("TurnLeft");
					rotateDirection = -1;
					rotateTimer = 1;
				}
			}
		} else {
			aimingAngle = Vector2.Lerp(aimingAngle, aimGoal, Time.deltaTime * 15);
		}

		animator.SetFloat("HorizontalAiming", aimingAngle.x + aimOffset.x);
		animator.SetFloat("VerticalAiming", aimingAngle.y + aimOffset.y);
		aimOffset *= 0.9f;

	}

	public void SetTarget (Transform newTarget) {
	
		currentTarget = newTarget;		
		UnitController controller = newTarget.GetComponent<UnitController>();
		if (!controller) Debug.Log(newTarget.name + " doesn't have a controller");
		targetCenter = controller.GetTargetCenter();
		targetOffset = controller.GetTargetOffset();
	}

	public Transform FindTarget() {

		GameObject[] allEnemies = GameObject.FindGameObjectsWithTag("Enemy");
		Transform bestTarget = null;

		Dictionary<Transform, float> allTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> easyTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> dangerousTargets = new Dictionary<Transform, float>();

		foreach (GameObject enemy in allEnemies) {

			LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

			Vector3 origin = transform.position + aimingGridOffset;
			Vector3 destination = enemy.transform.position + aimingGridOffset;

			if (!Physics.Linecast(origin, destination, terrainMask)) {



				//get all the easy targets
				int targetCover = mapControl.GetCoverForTarget(transform, enemy.transform);
				if (targetCover == 0) easyTargets.Add(enemy.transform, Vector3.Distance(transform.position, enemy.transform.position));

				//get all the dangeous targets
				int myCover = mapControl.GetCoverForTarget(enemy.transform, transform);
				if (myCover == 0) dangerousTargets.Add(enemy.transform, Vector3.Distance(transform.position, enemy.transform.position));

				//get all the targets, just in case
				allTargets.Add(enemy.transform, Vector3.Distance(transform.position, enemy.transform.position));
			} 
		}

		bestTarget = GetClosestTarget(allTargets);

		if (easyTargets.Count > 0) {
			bestTarget = GetClosestTarget(easyTargets);
		}

		if (dangerousTargets.Count > 0) {
			bestTarget = GetClosestTarget(dangerousTargets);
		}
		Debug.DrawLine(transform.position + aimingGridOffset, bestTarget.position + aimingGridOffset, Color.green, 1);
		return bestTarget;
	}

	Transform GetClosestTarget(Dictionary<Transform, float> targets) {
		float distance = Mathf.Infinity;
		Transform closest = null;
		foreach(KeyValuePair<Transform, float> target in targets) {
			if (target.Value < distance) {
				distance = target.Value;
				closest = target.Key;
			}
		}
		return closest;
	}

	
	public void RaiseAim (float amount) {
		aimOffset.y += Random.Range(0, amount);
	}

	public void AddDrift (float amount) {
		aimOffset += new Vector2(Random.Range(-amount, amount), Random.Range(-amount, amount));
	}


}


