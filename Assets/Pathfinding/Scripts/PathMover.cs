using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PathMover : Pathfinding {
	
	public float speed;
	float currentSpeed;
	public float turnSpeed;
	public float distanceThreshold = 0.1f;

	public float accelSpeed;
	
	bool waitingForPath;
	
	public List<Vector3> activePath = new List<Vector3>();

	float headingRotTimer = -1.0f;
	Quaternion headingRotStart = Quaternion.identity;
	Quaternion headingRotEnd = Quaternion.identity;
	float headingRotSpeed = 1.0f;

	float coolDown = 0.1f;
	float coolDownTimer;
	
	public float testTimer;

	Vector3 tempDestination;
	Vector3 finishPos;

	LineDrawer pathLine;
			
	CharacterController characterController;
	UnitController unitController;
	MapControl mapControl;

	public void SetUp (MapControl newMapControl) {
		characterController = GetComponent<CharacterController>();
		unitController = GetComponent<UnitController>();

		mapControl = newMapControl;
		
		pathLine = gameObject.GetComponent<LineDrawer>();

		distanceThreshold *= distanceThreshold;
			
	}
	
	void Update () {
		testTimer += GameTime.deltaTime;
	
		if (unitController.dead) 
			return;
		
		if (coolDownTimer > 0) coolDownTimer -= GameTime.deltaTime;
		
		// if we need to rotate somewhere, spin
		if (headingRotTimer > 0) {
			headingRotTimer -= Time.deltaTime * (180/headingRotSpeed);
			transform.rotation = Quaternion.Lerp(headingRotStart, headingRotEnd, Mathf.Clamp01(Util.EaseInOutSine(1 - headingRotTimer)));;
		}
		
		
		if (Path.Count > 0) {
			if (waitingForPath) {
				Path[0] = transform.position;
				Path[Path.Count - 1] = finishPos;
				Path = SimplifyPath(Path);
				StartPath(finishPos); //start moving if path is ready
				return;
			}
			
			if (Path[Path.Count - 1] != tempDestination) { //update drawn path if needed.\
				Path[0] = transform.position;
				Path[Path.Count - 1] = tempDestination;
				Path = SimplifyPath(Path);
				DrawPath();
			}
		}

		//stop here if there is no path to follow
		if (activePath.Count == 0) {
			if (characterController.velocity.sqrMagnitude > 0.01f) 
				characterController.Move(Vector3.zero);
			return;
		}

		Vector3 nextPath = activePath[0];
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
		if (activePath.Count > 1) {
            if ((distanceCheckFrom - distanceCheckTo).sqrMagnitude < distanceThreshold) {
				if (activePath.Count < 5) {
					if (!mapControl.IsDestinationClear(finishPos, transform.position)) {
						unitController.MoveTo(mapControl.FindBestCover(finishPos, 5 * mapControl.GetGridSize(), transform.tag));
					}
				}
				activePath.RemoveAt(0);
			}
			
		// otherwise setup a finish move
		} else {

			if (offsetFromNextPath.sqrMagnitude < distanceThreshold) {
				activePath.RemoveAt(0);
				FinishPath();
            }	
		}
	}
	
	public void UpdatePath(Vector3 newDestination) {
		if (coolDownTimer > 0) return;
		FindPath(transform.position, newDestination);
		tempDestination = newDestination;
		coolDownTimer = coolDown + (Random.value * 0.1f);		
	}
	
	
	
	public void StartPath(Vector3 newDestination) {
		if (HasPath()) {
			MapControl.MapDataPoint oldDestinationCell = mapControl.GetMapData(finishPos);
			oldDestinationCell.isClaimed = false;
		}
		
		finishPos = newDestination; 
		
		MapControl.MapDataPoint newDestinationCell = mapControl.GetMapData(finishPos);
		newDestinationCell.isClaimed = true;
		
		if (Path.Count < 1) {
			waitingForPath = true;
			FindPath(transform.position, newDestination);
			return;
		}
		
		waitingForPath = false;
		
		Path[0] = transform.position;
		Path[Path.Count - 1] = finishPos;
		activePath = Path.GetRange(0, Path.Count);
		Path.Clear();
		ClearPathLine();
	}
	
	public Vector3 GetDestination() {
		return finishPos;
	}
	
	void DrawPath() {
		
		if (Path.Count > 1 && pathLine) {
			pathLine.DrawLine(Path);	
		}
	}
	
	public void ClearPathLine() {
		pathLine.ClearLine(true);
	}
	public void CancelPathLine() {
		pathLine.ClearLine(false);
	}

	public List<Vector3> SimplifyPath(List<Vector3> complexPath) {

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
		
		for (int i = 0; i < simplePath.Count - 1; i++) {
			if (simplePath[i] == simplePath[i + 1]) {
				simplePath.RemoveAt(i + 1);
			}
		}
		return simplePath;
	}

	public void FinishPath() {
		activePath.Clear();
		MapControl.MapDataPoint destinationCell = mapControl.GetMapData (finishPos);
		destinationCell.isClaimed = false;
		destinationCell.isOccupied = true;
		
		unitController.FinishedMove(destinationCell);
		if (destinationCell.coverPoint) RotateTo (destinationCell.coverPoint.GetCoverHeading ());
	}

	public void RotateTo(Quaternion goal) {
		
		if (headingRotTimer > 0) return;
		headingRotStart = transform.rotation;
		headingRotEnd = goal;
		
		float angleToRotate = Quaternion.Angle (headingRotStart, headingRotEnd);
		if (angleToRotate == 0) return;
		headingRotSpeed = angleToRotate;
		headingRotTimer = 1.0f;
	}
	
	public bool HasPath() {
		return (activePath.Count > 0);
	}
	public float GetMaxSpeed() {
		return speed;
	}

	public float GetDistanceToNext() {
		return (activePath[0] - transform.position).magnitude;
	}
}
