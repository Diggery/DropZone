using UnityEngine;
using System.Collections;

public class DelayedMove : MonoBehaviour {

	Vector3 destination;
	float timeDelay;
	UnitController unitController;
	UnitBehaviors unitBehaviors;

	public void SetUp (Vector3 _destination, float _timeDelay) {
		
		destination = _destination;
		timeDelay = _timeDelay;
		unitController = GetComponent<UnitController>();
		unitBehaviors = GetComponent<UnitBehaviors>();
		
	}
	
	void Update () {
		timeDelay -= Time.deltaTime;
		if (timeDelay < 0) {
			if (unitBehaviors) {
				unitBehaviors.FindCoverAtPosition(destination);
			} else if (unitController) {
				unitController.MoveTo(destination);
			} else {
				Debug.Log("Nothing to control this unit with");
			}
			Destroy(this);
		}
	}
}
