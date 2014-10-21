using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PathMover : Pathfinding {
	
	
	public float speed;
	float currentSpeed;
	public float turnSpeed;
	public float distanceThreshold = 0.1f;

	public float accelSpeed;
	
	bool hasPath;

	float headingRotTimer = 0.0f;
	Quaternion headingRotStart = Quaternion.identity;
	Quaternion headingRotEnd = Quaternion.identity;
	float headingRotSpeed = 1.0f;

	public float coolDown = 0.5f;
	public float coolDownTimer;

	Vector3 finishPos;

	LineDrawer pathLine;
			
	CharacterController characterController;
	UnitController unitController;
	MapControl mapControl;

	public void Init (MapControl newMapControl) {
		characterController = GetComponent<CharacterController>();
		unitController = GetComponent<UnitController>();

		mapControl = newMapControl;
		
		pathLine = GetComponent<LineDrawer>();

		distanceThreshold *= distanceThreshold;
			
	}
	
	void Update () {
		
		if (coolDownTimer > 0) coolDownTimer -= Time.deltaTime;
		// if we need to rotate somewhere, spin

		if (headingRotTimer > 0) {
			headingRotTimer -= Time.deltaTime * (180/headingRotSpeed);
			transform.rotation = Quaternion.Lerp(headingRotStart, headingRotEnd, Util.EaseInOutSine(1 - headingRotTimer));
		}


		//stop if there is no path to follow
        if (Path.Count == 0) {
			if (characterController.velocity.sqrMagnitude > 0.01f) 
				characterController.Move(Vector3.zero);
			return;
		}

		// Check to see if its a new path so the end can be fixed
		if (!hasPath) {
			hasPath = true;
			Path[0] = transform.position;
			Path[Path.Count - 1] = finishPos;
			Path = SimplifyPath(Path);
			// draw a line down the path
			DrawPath();
		}
		
		Vector3 nextPath = Path[0];
		Vector3 moveDirection = nextPath - transform.position;

		//if we are trying to move somewhere, face that direction
		if (moveDirection.sqrMagnitude > 0.01f) {
			float heading = Util.getDirection(moveDirection);
			Quaternion targetRotation = Quaternion.AngleAxis(heading, Vector3.up);
			transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, Time.deltaTime * turnSpeed);
		}
		
		// find the amount to move and move it
		currentSpeed = Mathf.Lerp(currentSpeed, speed, Time.deltaTime * accelSpeed);
			
		moveDirection = moveDirection.normalized * currentSpeed * Time.deltaTime;
		characterController.Move(moveDirection);
		
		// save the offset from the next path for later 
		Vector3 offsetFromNextPath = transform.position - nextPath;
		
		//set up the distance check to ignore Y
		Vector3 distanceCheckFrom = new Vector3(transform.position.x, 0.0f, transform.position.z);
		Vector3 distanceCheckTo = new Vector3(nextPath.x, 0.0f, nextPath.z);
		
		// if there are more than 1 node left see if we are close enough to the next one
		if (Path.Count > 1) {
            if ((distanceCheckFrom - distanceCheckTo).sqrMagnitude < distanceThreshold) {
				Path.RemoveAt(0);
			}
			
		// otherwise setup a finish move
		} else {

			if (offsetFromNextPath.sqrMagnitude < distanceThreshold) {
                Path.RemoveAt(0);
				FinishPath();
            }	
		}


	}
	
	public void SetDestination(Vector3 newDestination) {

		if (coolDownTimer > 0) return;
		
		//set this so it can be reset when the path comes back
		hasPath = false;
		
		FindPath(transform.position, newDestination);
		coolDownTimer = coolDown + Random.value * 0.1f;		
		finishPos = newDestination; 

	}
	
	void DrawPath() {
		
		if (Path.Count > 3 && pathLine) {
			pathLine.DrawLine(Path);	
		}

	}


	void DrawTempLine(List<Vector3> newLine) {
		
		GameObject oldPathLine = new GameObject("OldPathLine");
		LineRenderer oldPathLineRenderer = oldPathLine.AddComponent<LineRenderer>();
		oldPathLineRenderer.SetVertexCount(newLine.Count);
		oldPathLineRenderer.SetWidth(0.3f, 0.3f);
		
		for (int oldPathIndex = 0; oldPathIndex < newLine.Count; oldPathIndex++) {
			oldPathLineRenderer.SetPosition(oldPathIndex, newLine[oldPathIndex]);
		}

	}

	public List<Vector3> SimplifyPath(List<Vector3> complexPath) {

		//DrawTempLine(complexPath);

		float characterRadius = characterController.radius;

		List<Vector3> simplePath = new List<Vector3>();

		for (int currentNode = 0; currentNode < complexPath.Count; currentNode++) {
			simplePath.Add(complexPath[currentNode]);

			for (int reverseCount = complexPath.Count - 1; reverseCount > currentNode; reverseCount--) {
				Vector3 currentNodePos = complexPath[currentNode];
				currentNodePos.y = characterRadius + 0.1f;

				Vector3 nextNodePos = complexPath[reverseCount];
				nextNodePos.y = characterRadius + 0.1f;

				LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
				Ray pathRay = new Ray(currentNodePos, (nextNodePos - currentNodePos).normalized);
				float distance = (nextNodePos - currentNodePos).magnitude;
				RaycastHit hit;


				if (!Physics.SphereCast(pathRay, characterRadius,  out hit, distance, terrainMask)) {
					currentNode = reverseCount - 1;
				}
			}
		}
		//DrawTempLine(simplePath);

		return simplePath;
	}

	public void FinishPath() {
		Path.Clear();
		hasPath = false;
		CoverPoint destinationPoint = mapControl.GetCoverPoint (transform.position);
		unitController.FinishedMove(destinationPoint);
		if (destinationPoint) RotateTo (destinationPoint.GetCoverHeading ());
	}

	public void RotateTo(Quaternion goal) {
		if (headingRotTimer > 0) return;
		headingRotTimer = 1.0f;
		headingRotStart = transform.rotation;
		headingRotEnd = goal;
		headingRotSpeed = Quaternion.Angle (headingRotStart, headingRotEnd);
	}
	
	public bool HasPath() {
		if (Path.Count > 0) {
			return true;
		} else {
			return false;
		}
	}
	public float GetMaxSpeed() {
		return speed;
	}

	public float GetDistanceToNext() {
		return (Path[0] - transform.position).magnitude;
	}
}
