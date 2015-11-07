using UnityEngine;
using System.Collections;

public class HomingGrenade : FragGrenade {

	Transform homingTarget;
	bool homingActive;
	
	new void Update () {
		base.Update();
		
		if (inAir) {
			if (!homingTarget) homingTarget = FindBestEnemy();
			if (!homingActive && (transform.position - homingTarget.position).sqrMagnitude < 25) homingActive = true;
		}
	}
	
	void FixedUpdate() {
		if (homingTarget && homingActive) {
			Vector3 homingDirection = (homingTarget.position - transform.position);
			homingDirection.y = 0;
			rBody.AddForce(homingDirection.normalized * 5);
		}
	}
	
	Transform FindBestEnemy() {
		GameObject[] targets;
		
		if (gameObject.tag.Equals("Enemy")) {
			targets = GameObject.FindGameObjectsWithTag ("Player");
		} else {
			targets = GameObject.FindGameObjectsWithTag ("Enemy");
		}
				
		GameObject closest = null;
		float distance = Mathf.Infinity;
		foreach(GameObject target in targets) {
			float distanceToTarget = (target.transform.position - (triggerDirection + transform.position)).sqrMagnitude;
			if (distanceToTarget < distance) {
				distance = distanceToTarget;
				closest = target;
			}
			
		}
		return closest.transform;
	}
	
}
