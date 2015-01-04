using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TargetingControl : MonoBehaviour {

	bool targetDummy;

	UnitController unitController;
	MapControl mapControl;
	Animator animator;

	
	float currentWeaponRange;
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


	float scanTime = 1.0f;
	float scanTimer = 1.0f;

	public void SetUp (MapControl newMapControl, Animator newAnimator) {
		unitController = GetComponent<UnitController>();
		mapControl = newMapControl;
		animator = newAnimator;
		if (unitController.dummy)
			targetDummy = true;
		scanTimer = scanTime + Random.value * 0.5f;
	}
	
	void Update () {
	
		if (targetDummy) return;  // targetdummys are dumb
		if (unitController.dead) return; //no targeting while dead
		
		scanTimer -= Time.deltaTime;
		
		if (unitController.IsMoving()) {
			if (transform.tag.Equals("Enemy")) {
				if (scanTimer < 0) {
					if (ScanForTargets()) {
						GetComponent<UnitBehaviors>().FindCloseCover();
					}
				}
			}
			return;
		} 

		

		if (scanTimer < 0) 
			ScanForTargets();


		if (missCount > 3) {
			missCount = 0;
			unitController.ClearMainTarget();
		}

		if (!currentTarget) { //stop if there is nothing to shoot at and clean up some anim flags
			animator.SetBool ("UseCoverLeft", false);
			animator.SetBool ("UseCoverRight", false);
			return; 
		}

		Vector3 aimPosition = transform.position + aimingGridOffset;

		Vector3 relativePos = transform.InverseTransformPoint (targetCenter.position + targetOffset + aimAdjust);

		float distanceToTarget = Vector3.Distance(aimPosition, currentTarget.position);

		float altitude = (Mathf.Asin(((targetCenter.position.y + targetOffset.y) - aimPosition.y) / distanceToTarget)) * Mathf.Rad2Deg;

		float heading = (Mathf.Atan(relativePos.x / relativePos.z)) * Mathf.Rad2Deg;
		
		if (relativePos.z < 0) {
			heading += 180 * Mathf.Sign(relativePos.x);
		
		}
					
		float normalizedHeading = Mathf.InverseLerp(-180, 180, heading);
		normalizedHeading = (normalizedHeading * 2) - 1;
		float normalizedAltitude = Mathf.InverseLerp(-45, 45, altitude);
		normalizedAltitude = (normalizedAltitude * 2) - 1;

		Vector2 aimGoal = new Vector2(Mathf.Clamp(heading, -180, 180), Mathf.Clamp(altitude, -45, 45));

		aimingAngle = Vector2.Lerp(aimingAngle, aimGoal, Time.deltaTime * 10);

		if (aimHorizontally)
			animator.SetFloat ("HorizontalAiming", aimingAngle.x + aimOffset.x);

		if (aimVertically)
			animator.SetFloat ("VerticalAiming", aimingAngle.y + aimOffset.y);

		aimOffset *= 0.95f;
		
		CoverPoint coverPoint = unitController.GetCurrentCoverPoint ();
		if (coverPoint) {
			//lean out if needed
			bool useCoverLeft = aimGoal.x < 0 && aimGoal.x > -45 && coverPoint.IsLeftSideClear();
			animator.SetBool ("UseCoverLeft", useCoverLeft);
			bool useCoverRight = aimGoal.x > 0 && aimGoal.x < 45 && coverPoint.IsRightSideClear();
			animator.SetBool ("UseCoverRight", useCoverRight);
			
			//clear the target if we can't find him from the cover.
			if (!coverPoint.IsLeftSideClear() && aimGoal.x > -90 && aimGoal.x < 0) 
				unitController.ClearMainTarget();
				
			if (!coverPoint.IsRightSideClear() && aimGoal.x > 0 && aimGoal.x < 90) 
				unitController.ClearMainTarget();
		} else {
			AnimatorStateInfo animStateInfo = animator.GetCurrentAnimatorStateInfo(0);
			if (animStateInfo.IsName("NoCover.Aiming")) { // only rotate if they are aiming and out of cover
				if (aimGoal.x < -90) 
					transform.Rotate(Vector3.up, -20);
				if (aimGoal.x > 90) 
					transform.Rotate(Vector3.up, 20);
			}
		}
	}
	
	
	public void SetWeaponRange(float newRange) {
		currentWeaponRange = newRange * newRange;
	
	}
	
	public bool ScanForTargets() {
		Transform bestTarget = FindBestTarget();
		bool targetUpdated = false;
		
		if (bestTarget) {
			if (bestTarget != currentTarget) 
				unitController.SetMainTarget(bestTarget.gameObject);
				targetUpdated = true;
				if (transform.tag.Equals("Enemy")) {
					SendMessage("SeeEnemy", currentTarget.position, SendMessageOptions.DontRequireReceiver);
				}
		} else {
			unitController.ClearMainTarget();
		}
		scanTimer = scanTime + (Random.value * 0.1f);
		return targetUpdated;
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
		GameObject[] allUnits = new GameObject[0];

		if (transform.tag.Equals("Player")) {
			allUnits = GameObject.FindGameObjectsWithTag("Enemy");
		} else {
			allUnits = GameObject.FindGameObjectsWithTag("Player");
		}

		Transform bestTarget = null;

		Dictionary<Transform, float> allTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> easyTargets = new Dictionary<Transform, float>();
		Dictionary<Transform, float> dangerousTargets = new Dictionary<Transform, float>();

		Vector3 origin = transform.position + aimingGridOffset;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

		foreach (GameObject enemy in allUnits) {
			UnitController enemyController = enemy.GetComponent<UnitController>();
			if (!enemyController) print (enemy.name + " doesn't have a controller");
			Vector3 targetPos = enemyController.GetTargetPosition();
			
			float rangeToTarget = (transform.position - enemy.transform.position).sqrMagnitude;

			if (!Physics.Linecast(origin, targetPos, terrainMask) && rangeToTarget < currentWeaponRange) {

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
			bestTarget = GetTargetFromCover(allUnits);
		}

			
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

	public Transform GetTargetFromCover(GameObject[] allUnits) {
		CoverPoint coverPoint = unitController.GetCurrentCoverPoint();
		if (!coverPoint) return null;
		Vector3 coverPos = coverPoint.transform.position + aimingGridOffset;
		Vector3 leftDirection = Quaternion.AngleAxis(-90, Vector3.up) * transform.forward;
		Vector3 leftFirePos = coverPos + leftDirection;
		Vector3 rightDirection = Quaternion.AngleAxis(90, Vector3.up) * transform.forward;
		Vector3 rightFirePos = coverPos + rightDirection;

		Transform bestTarget = null;
		
		Dictionary<Transform, float> allTargets = new Dictionary<Transform, float>();

		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		
		foreach (GameObject enemy in allUnits) {
			Vector3 targetPos = enemy.GetComponent<UnitController>().GetTargetPosition();
			
			float rangeToTarget = (transform.position - enemy.transform.position).sqrMagnitude;
			if (rangeToTarget < currentWeaponRange) {
				if (GetRelativePosition(targetPos).z > 0) {
					if (mapControl.IsPositionVisible (transform.position, leftFirePos) && !Physics.Linecast(leftFirePos, targetPos, terrainMask)) {
						if (!allTargets.ContainsKey(enemy.transform))
							allTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);
					}
					if (mapControl.IsPositionVisible (transform.position, rightFirePos) && !Physics.Linecast(rightFirePos, targetPos, terrainMask)) {
						if (!allTargets.ContainsKey(enemy.transform))
							allTargets.Add(enemy.transform, (transform.position - enemy.transform.position).sqrMagnitude);
					}
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


