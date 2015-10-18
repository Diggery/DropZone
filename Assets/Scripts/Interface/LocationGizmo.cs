using UnityEngine;
using System.Collections;

public class LocationGizmo : Gizmo {

	Transform locationBackground;
	Renderer locationIconRenderer;
	
	Transform leftAcceptButton;
	Transform rightAcceptButton;
	Transform leftCancelButton;
	Transform rightCancelButton;

	Transform acceptButtonIcon;
	Renderer acceptButtonIconRenderer;
	Transform cancelButtonIcon;
	
	Renderer leftAcceptRenderer;
	Renderer rightAcceptRenderer;
	Renderer leftCancelRenderer;
	Renderer rightCancelRenderer;
	
	BoxCollider leftAcceptCollision;
	BoxCollider rightAcceptCollision;
	BoxCollider leftCancelCollision;
	BoxCollider rightCancelCollision;
	
	Transform distanceLine;
	Renderer distanceLineRenderer;
	
	Vector3 posGoal;
	Vector3 startPos;
	
	bool buttonsShouldBeLeft;
	bool buttonsAreLeft;
	bool done;
	bool setupComplete;
	bool connectToStart;
	bool tooFar;
	
	float maxDistance;
	float exitTimer = 1.0f;
	
	Color locationButtonColor = Color.green;
	Color cancelButtonColor = Color.red;

	public override void Setup (Equipment _equipment) {
		Setup(_equipment, false, 0);
	}		
						
	public void Setup (Equipment _equipment, bool _connectToStart, float _maxDistance) {
		connectToStart = _connectToStart;
		
		maxDistance	= _maxDistance;
		
		locationBackground = transform.Find("LocationBackground");
		
		leftAcceptButton = locationBackground.Find("AcceptButton_Left");
		leftAcceptButton.gameObject.AddComponent<ButtonControl>();
		leftAcceptCollision = leftAcceptButton.GetComponent<BoxCollider>();
		rightAcceptButton = locationBackground.Find("AcceptButton_Right");
		rightAcceptButton.gameObject.AddComponent<ButtonControl>();
		rightAcceptCollision = rightAcceptButton.GetComponent<BoxCollider>();
		leftCancelButton = locationBackground.Find("CancelButton_Left");
		leftCancelButton.gameObject.AddComponent<ButtonControl>();
		leftCancelCollision = leftCancelButton.GetComponent<BoxCollider>();
		rightCancelButton = locationBackground.Find("CancelButton_Right");
		rightCancelButton.gameObject.AddComponent<ButtonControl>();
		rightCancelCollision = rightCancelButton.GetComponent<BoxCollider>();
		
		acceptButtonIcon = locationBackground.Find("AcceptButtonIcon");
		acceptButtonIconRenderer = acceptButtonIcon.GetComponent<Renderer>();
		
		cancelButtonIcon = locationBackground.Find("CancelButtonIcon");
		
		locationIconRenderer = locationBackground.Find("LocationIcon").GetComponent<Renderer>();
				
		leftAcceptRenderer = leftAcceptButton.GetComponent<Renderer>();
		rightAcceptRenderer = rightAcceptButton.GetComponent<Renderer>();
		leftCancelRenderer = leftCancelButton.GetComponent<Renderer>();
		rightCancelRenderer = rightCancelButton.GetComponent<Renderer>();	

		distanceLine = transform.Find("Line");
		distanceLineRenderer = distanceLine.GetComponent<Renderer>();	
		
		posGoal = startPos = transform.position;
		
		ShowRightButtons();
		
		FinishSetup(_equipment);
		
		setupComplete = true;
	}
	
	void Update () {
		if (!setupComplete) return;
		
		if (done) {
			exitTimer -= GameTime.deltaTime * 2;
			float exitScale = Util.EaseInOutQuart(exitTimer);
			transform.localScale = new Vector3(exitScale, exitScale, exitScale);
			if (exitTimer < 0.05f) {
				Destroy (gameObject);
			}
			return;
		}
	
		//test for which buttons to show

		buttonsShouldBeLeft = true;
	
		Ray ray = new Ray(new Vector3(transform.position.x, 0.5f, transform.position.z), locationBackground.right * (buttonsShouldBeLeft ? 1 : -1));
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");

		if (Physics.SphereCast(ray, 0.25f, out hit, 1.25f, terrainMask)) buttonsShouldBeLeft = !buttonsShouldBeLeft;
						
		if (buttonsShouldBeLeft != buttonsAreLeft) FlipButtons();
				
		//rotateButtons
		float headingToCamera = Util.getDirection(transform.position, Camera.main.transform.position) / 30;
		headingToCamera = Mathf.Round(headingToCamera) * 30 ;
		locationBackground.rotation = Quaternion.Lerp(locationBackground.rotation, Quaternion.AngleAxis(headingToCamera,  Vector3.up), GameTime.deltaTime * 8);
		
		locationButtonColor.a = tooFar ? 0 : 1;
		
		leftAcceptRenderer.material.color = Color.Lerp(leftAcceptRenderer.material.color, locationButtonColor, GameTime.deltaTime * 3);
		rightAcceptRenderer.material.color = leftAcceptRenderer.material.color;
		leftCancelRenderer.material.color = Color.Lerp(leftCancelRenderer.material.color, cancelButtonColor, GameTime.deltaTime * 3);
		rightCancelRenderer.material.color = leftCancelRenderer.material.color;
		
		//move into position
		transform.position = Vector3.Lerp(transform.position, posGoal, GameTime.deltaTime * 5);
		
		if (connectToStart) {
			distanceLineRenderer.enabled = true;
			float distance = Vector3.Distance(transform.position, startPos);
			distanceLine.localScale = new Vector3(0.1f, 1.0f, distance);
			distanceLine.rotation = Quaternion.AngleAxis(Util.getDirection(transform.position, startPos), Vector3.up);
			if (distance < maxDistance) {
				tooFar = false;
				acceptButtonIconRenderer.enabled = true;
				distanceLineRenderer.material.color = new Color (0.0f, 0.5f, 0.0f, 1.0f);
			} else {
				tooFar = true;
				acceptButtonIconRenderer.enabled = false;
				distanceLineRenderer.material.color = new Color (1.0f, 0.0f, 0.0f, 1.0f);
			}
		}
	}
	
	public void SetActionIcon(Texture newIcon) {
		locationIconRenderer.material.mainTexture = newIcon;
	}
	
	void ShowRightButtons() {
		buttonsAreLeft = false;
		leftAcceptRenderer.enabled = false;
		rightAcceptRenderer.enabled = true;
		leftCancelRenderer.enabled = false;
		rightCancelRenderer.enabled = true;
		
		leftAcceptCollision.enabled = false;
		rightAcceptCollision.enabled = true;
		leftCancelCollision.enabled = false;
		rightCancelCollision.enabled = true;
		
		Vector3 acceptIconPos = acceptButtonIcon.localPosition;
		acceptIconPos.x = -1.0f;
		acceptButtonIcon.localPosition = acceptIconPos;
		Vector3 cancelIconPos = cancelButtonIcon.localPosition;
		cancelIconPos.x = -1.0f;
		cancelButtonIcon.localPosition = cancelIconPos;
	}
	
	void ShowLeftButtons() {
		buttonsAreLeft = true;
		leftAcceptRenderer.enabled = true;
		rightAcceptRenderer.enabled = false;
		leftCancelRenderer.enabled = true;
		rightCancelRenderer.enabled = false;	
		
		leftAcceptCollision.enabled = true;
		rightAcceptCollision.enabled = false;
		leftCancelCollision.enabled = true;
		rightCancelCollision.enabled = false;
			
		Vector3 acceptIconPos = acceptButtonIcon.localPosition;
		acceptIconPos.x = 1.1f;
		acceptButtonIcon.localPosition = acceptIconPos;
		Vector3 cancelIconPos = cancelButtonIcon.localPosition;
		cancelIconPos.x = 1.1f;
		cancelButtonIcon.localPosition = cancelIconPos;	
	}
		
	void FlipButtons() {
		if (buttonsAreLeft) {
			ShowRightButtons();
		} else {
			ShowLeftButtons();
		}
	}
	
	public void ButtonClicked(string buttonName) {
		if (done) return;
		
		if (buttonName.Equals("AcceptButton_Left") || buttonName.Equals("AcceptButton_Right")) {
			leftAcceptRenderer.material.color = rightAcceptRenderer.material.color = Color.white;
			if (tooFar) return;
			equipment.Commit(posGoal);
			gameControl.SelectorResume();
		}
		
		if (buttonName.Equals("CancelButton_Left") || buttonName.Equals("CancelButton_Right")) {
			leftCancelRenderer.material.color = rightCancelRenderer.material.color = Color.white;
		}
		
		Cancel();
	}

	public override bool OverrideMapInput(Vector3 mapPos) {
		gameControl.Pause("MapSelector");
		SetPos(mapPos);
		return true;
	}
	
	public override void SetPos(Vector3 mapPos) {
		Vector3 newGoalPos;
		float gridSize = gameControl.GetMapControl().GetGridSize();
		newGoalPos.x = Mathf.Floor((mapPos.x / gridSize)) * gridSize;
		newGoalPos.y = mapPos.y;
		newGoalPos.z = Mathf.Floor((mapPos.z / gridSize)) * gridSize;
		newGoalPos += new Vector3(gridSize/2, 0.0f, gridSize/2);
		posGoal = newGoalPos;
	}
		
	public void	Cancel() {
		gameControl.SelectorResume();
		inputControl.RemoveGizmoControl(gameObject);
		done = true;
		exitTimer = 1.0f;
	}
}
