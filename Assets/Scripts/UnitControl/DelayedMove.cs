using UnityEngine;
using System.Collections;

public class DelayedMove : MonoBehaviour {

	Vector3 destination;
	float timeDelay;

	public void SetUp (Vector3 _destination, float _timeDelay) {
		
		destination = _destination;
		timeDelay = _timeDelay;
	}
	
	void Update () {
		timeDelay -= Time.deltaTime;
		if (timeDelay < 0) {
			UnitBehaviors unitBehaviors = GetComponent<UnitBehaviors>();
			UnitController unitController = GetComponent<UnitController>();
			if (unitBehaviors) {
				unitBehaviors.FindCoverAtPosition(destination);
			} else if (unitController) {
				print ("No UnitBehavior on " + transform.name);
				unitController.MoveTo(destination);
			} else {
				Debug.Log("Nothing to control this unit with");
			}
			Destroy(this);
		}
	}
}
