using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TargetingControl : MonoBehaviour {

	UnitController unitController;
	MapControl mapControl;
	Animator animator;

	Transform forcedTarget;
	Transform currentTarget;
	Transform targetCenter;
	Vector3 targetOffset;

	public Vector3 aimingGridOffset;
	public Vector3 aimAdjust;
	public bool aimVertically;
	public bool aimHorizontally;
	Vector2 aimingAngle;
	Vector2 aimOffset;

	public int missCount;


	float searchTime = 1;
	float searchTimer = 1;

	public void Init (MapControl newMapControl, Animator newAnimator) {
		unitController = GetComponent<UnitController>();
		mapControl = newMapControl;
		animator = newAnimator;
	}
	
	void Update () {

		if (transform.tag != "Player") return; //disable everyone but the player

		if (unitController.IsMoving()) return; //no targeting while moving

		searchTimer -= Time.deltaTime;

		if (searchTimer < 0) {
			Transform bestTarget = FindBestTarget();
			if (bestTarget && bestTarget != currentTarget) 
				unitController.SetMainTarget(bestTarget.gameObject);

			searchTimer = searchTime;
		}


		if (missCount > 3) {
			missCount = 0;
			unitController.ClearMainTarget();
		}

		if (!currentTarget) return;

		Vector3 aimPosition = transform.position + aimingGridOffset;

		Vector3 relativePos = transform.InverseTransformPoint (targetCenter.position + targetOffset + aimAdjust);

		float distanceToTarget = Vector3.Distance(aimPosition, currentTarget.position);

		float altitude = (Mathf.Asin(((targetCenter.position.y + targetOffset.y) - aimPosition.y) / distanceToTarget)) * Mathf.Rad2Deg;

		float heading = (Mathf.Atan(relativePos.x / relativePos.z)) * Mathf.Rad2Deg;
		float normalizedHeading = Mathf.InverseLerp(-90, 90, heading);
		normalizedHeading = (normalizedHeading * 2) - 1;
		float normalizedAltitude = Mathf.InverseLerp(-45, 45, altitude);
		normalizedAltitude = (normalizedAltitude * 2) - 1;

		Vector2 aimGoal = new Vector2(normalizedHeading, normalizedAltitude);
		if (relativePos.z < 0) {
			//transform.Rotate (Vector3.up, 360 * Time.deltaTime * Mathf.Sign (relativePos.x));
			aimGoal.x = ((2 * Mathf.Sign(relativePos.x)) + aimGoal.x);
		}
		aimingAngle = aimGoal; //Vector2.Lerp(aimingAngle, aimGoal, Time.deltaTime * 15);

		// if they are in cover, make sure aim is not dead center
		CoverPoint coverPoint = unitController.GetCoverPoint ();
		if (coverPoint) {

			if (!coverPoint.IsLeftSideClear()) { // At Right Corner

				if (aimingAngle.x > -0.5f && aimingAngle.x < 0.015f) 
					aimingAngle.x = 0.015f;

				if (aimingAngle.x < -0.5f && aimingAngle.x > -1.0f) 
					aimingAngle.x = -1.0f;

			}

			if (!coverPoint.IsRightSideClear()) { // At Left Corner

				if (aimingAngle.x < 0.5f && aimingAngle.x > -0.015f) 
					aimingAngle.x = -0.015f;
				
				if (aimingAngle.x > 0.5f && aimingAngle.x < 1.0f) 
					aimingAngle.x = 1.0f;

			}

			if (coverPoint.IsRightSideClear() && coverPoint.IsLeftSideClear()) { // At A Post 
				if (aimingAngle.x < 0.01f && aimingAngle.x >= 0.0f) 
					aimingAngle.x = 0.015f;

				if (aimingAngle.x > -0.01f && aimingAngle.x < 0.0f) 
					aimingAngle.x = -0.015f;
			}
		}

		if (aimHorizontally)
			animator.SetFloat ("HorizontalAiming", aimingAngle.x + aimOffset.x);

		if (aimVertically)
			animator.SetFloat ("VerticalAiming", aimingAngle.y + aimOffset.y);

		aimOffset *= 0.9f;

	}

	public void SetManualTarget (Transform newTarget) {
		forcedTarget = newTarget;
		SetTarget(newTarget);
	}

	public void SetTarget (Transform newTarget) {
		if (currentTarget == newTarget) return;

		currentTarget = newTarget;		
		UnitController controller = newTarget.GetComponent<UnitController>();
		if (!controller) Debug.Log(newTarget.name + " doesn't have a controller");
		targetCenter = controller.GetTargetCenter();
		targetOffset = controller.GetTargetOffset();
	}

	public void ClearTarget () {
		currentTarget = null;		
	}


	public Transform FindBestTarget() {

		GameObject[] allEnemies = GameObject.FindGameObjectsWithTag("Enemy");
		Transform bestTarget = null;

		Dictionary<Transform, float> allTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> easyTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> dangerousTargets = new Dictionary<Transform, float>();

		Vector3 origin = transform.position + aimingGridOffset;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

		foreach (GameObject enemy in allEnemies) {

			Vector3 targetPos = enemy.GetComponent<UnitController>().GetTargetPosition();

			if (!Physics.Linecast(origin, targetPos, terrainMask)) {

				//get all the easy targets
				int targetCover = mapControl.GetCoverForTarget(transform, enemy.transform);
				if (targetCover == 0) easyTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);

				//get all the dangeous targets
				int myCover = mapControl.GetCoverForTarget(enemy.transform, transform);
				if (myCover == 0) dangerousTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);

				//get all the targets, just in case
				allTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);
			} 
		}

		bestTarget = GetClosestTarget(allTargets);

		//first select targets that are easy to shoot.
		if (easyTargets.Count > 0) {
			bestTarget = GetClosestTarget(easyTargets);
		}

		// then pick on that is more dangerous to us.
		if (dangerousTargets.Count > 0) {
			bestTarget = GetClosestTarget(dangerousTargets);
		}

		// override of the player has selected a target.
		if (forcedTarget && Physics.Linecast (transform.position + aimingGridOffset, forcedTarget.position + aimingGridOffset, terrainMask)) {
			bestTarget = forcedTarget;
		}

		// if there is no target found try ones behind cover.
		if (!bestTarget) {
			bestTarget = GetTargetFromCover();
		}

		if (bestTarget) 
			Debug.DrawLine(origin, bestTarget.GetComponent<UnitController>().GetTargetPosition(), Color.green, 1);
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

	public Transform GetTargetFromCover() {
		CoverPoint coverPoint = unitController.GetCoverPoint();
		if (!coverPoint) return null;
		Vector3 coverPos = coverPoint.transform.position + aimingGridOffset;
		Vector3 leftDirection = Quaternion.AngleAxis(-90, Vector3.up) * transform.forward;
		Vector3 leftFirePos = coverPos + leftDirection;
		Vector3 rightDirection = Quaternion.AngleAxis(90, Vector3.up) * transform.forward;
		Vector3 rightFirePos = coverPos + rightDirection;

		if (coverPoint.IsPositionVisible (leftFirePos)) {
			Debug.DrawLine(coverPos, leftFirePos, Color.green, 1);
		}

		GameObject[] allEnemies = GameObject.FindGameObjectsWithTag("Enemy");
		Transform bestTarget = null;
		
		Dictionary<Transform, float> allTargets = new Dictionary<Transform, float>();

		Vector3 origin = transform.position + aimingGridOffset;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		foreach (GameObject enemy in allEnemies) {
			Vector3 targetPos = enemy.GetComponent<UnitController>().GetTargetPosition();
			if (GetRelativePosition(targetPos).z > 0) {
				if (coverPoint.IsPositionVisible (leftFirePos) && !Physics.Linecast(leftFirePos, targetPos, terrainMask)) {
					if (!allTargets.ContainsKey(enemy.transform))
						allTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);
				}
				if (coverPoint.IsPositionVisible (rightFirePos) && !Physics.Linecast(rightFirePos, targetPos, terrainMask)) {
					if (!allTargets.ContainsKey(enemy.transform))
						allTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);
				}
			}
		}
		bestTarget = GetClosestTarget(allTargets);
		return bestTarget;
	}

	
	public void RaiseAim (float amount) {
		aimOffset.y += Random.Range(0, amount);
	}

	public void AddDrift (float amount) {
		aimOffset += new Vector2(Random.Range(-amount, amount), Random.Range(-amount, amount));
	}

	public void TargetHit() {
		missCount = 0;
	}

	public void TargetMiss() {
		missCount++;
	}

	Vector3 GetRelativePosition(Vector3 targetPos) {
		return transform.InverseTransformPoint (targetPos);
	}


}


