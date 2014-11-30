using UnityEngine;
using System.Collections;

public class MapSelector : MonoBehaviour {
	
	float gridSize = 1.0f;
	public bool visible = false;
	bool buttonsUp = false;
	bool invalidMove = false;
	Vector3 goalPos;
	Quaternion goalRot;
	
	Vector3 buttonOffset;
	Transform cancelButton;
	Transform cancelIcon;
	Transform cancelGlow;
	Transform acceptButton;
	Transform acceptIcon;
	Transform acceptGlow;
	BoxCollider selectorCollision;
	
	InputControl inputControl;
	MapControl mapControl;
	
	float buttonTransAmount;
	float buttonGlowAmount;
	
	
	public void SetUp () {
		cancelButton = transform.Find("Cancel");
		cancelIcon = transform.Find("Cancel/CancelIcon");
		cancelGlow = transform.Find("CancelGlow");
		acceptButton = transform.Find("Accept");
		acceptIcon = transform.Find("Accept/AcceptIcon");
		acceptGlow = transform.Find("AcceptGlow");
		
		GameObject inputControlObj = GameObject.Find("Map");
		if (!inputControlObj) print ("Need a 'Map' object added with a input control and map control on it");
		inputControl = inputControlObj.GetComponent<InputControl>();
		mapControl = inputControlObj.GetComponent<MapControl>();
		mapControl.SetMapSelector(transform);
		gridSize = mapControl.GetGridSize();
		selectorCollision = GetComponent<BoxCollider>();
		
		GameObject cameraRoot = GameObject.Find("CameraRoot");
		CameraControl cameraControl = cameraRoot.GetComponent<CameraControl>();
		cameraControl.SetMapSelector(this);
		
	}
	
	void Update () {
		if (visible){
			renderer.material.color = Color.Lerp(renderer.material.color, Color.white, GameTime.deltaTime * 10);
			transform.position = Vector3.Lerp(transform.position, goalPos, GameTime.deltaTime * 10);
			transform.rotation = Quaternion.Lerp(transform.rotation, goalRot, GameTime.deltaTime * 10);
			
			mapControl.ShowCoverPoints();
		} else {
			renderer.material.color = Color.Lerp(renderer.material.color, new Color(1.0f, 1.0f, 1.0f, 0.0f), GameTime.deltaTime * 10);	
		}
		
		if (invalidMove) {
			if (buttonsUp) HideButtons();
		} else {
			if (buttonsUp) ShowButtons();
		}
		
		if (buttonsUp) {
			buttonTransAmount = Mathf.Lerp(buttonTransAmount, 1, GameTime.deltaTime * 5);
			buttonGlowAmount = Mathf.Lerp(buttonGlowAmount, 1, GameTime.deltaTime * 1);
		} else {
			buttonTransAmount = Mathf.Lerp(buttonTransAmount, -1, GameTime.deltaTime * 8);
			buttonGlowAmount = Mathf.Lerp(buttonGlowAmount, -1, GameTime.deltaTime * 5);
		}
		
		//acceptButton.localScale = Vector3.Lerp(new Vector3(0.1f, 0.1f, 0.1f), Vector3.one, buttonTransAmount);
		acceptButton.localRotation = Quaternion.Lerp(Quaternion.AngleAxis(-45, Vector3.up), Quaternion.identity, buttonTransAmount * 2);
		acceptButton.renderer.material.color = Color.Lerp(new Color(1.0f, 1.0f, 1.0f, 0.0f), Color.white, buttonTransAmount);

		acceptIcon.renderer.material.color = Color.Lerp(Color.clear, Color.white, buttonTransAmount );
		
		acceptGlow.renderer.material.color = Color.Lerp(Color.black, Color.gray, buttonGlowAmount );
		
		//cancelButton.localScale = Vector3.Lerp(new Vector3(0.1f, 0.1f, 0.1f), Vector3.one, buttonTransAmount);
		cancelButton.localRotation = Quaternion.Lerp(Quaternion.AngleAxis(45, Vector3.up), Quaternion.identity, buttonTransAmount * 2);
		cancelButton.renderer.material.color = Color.Lerp(new Color(1.0f, 1.0f, 1.0f, 0.0f), Color.white, buttonTransAmount);
		
		cancelIcon.renderer.material.color = Color.Lerp(Color.clear, Color.white, buttonTransAmount );
		
		cancelGlow.renderer.material.color = Color.Lerp(Color.black, Color.gray, buttonGlowAmount );
		
		
		//rotateButtons
		float buttonHeading = Camera.main.transform.eulerAngles.y / 90;
		buttonHeading = Mathf.Round(buttonHeading) * 90 ;
		acceptIcon.rotation = Quaternion.Lerp(acceptIcon.rotation, Quaternion.AngleAxis(buttonHeading + 180,  Vector3.up), GameTime.deltaTime * 10);
		cancelIcon.rotation = Quaternion.Lerp(cancelIcon.rotation, Quaternion.AngleAxis(buttonHeading + 180,  Vector3.up), GameTime.deltaTime * 10);
	}
	
	public void SetPos(Vector3 newPos) {
		Vector3 newGoalPos;
		newGoalPos.x = Mathf.Floor((newPos.x / gridSize)) * gridSize;
		newGoalPos.y = newPos.y;
		newGoalPos.z = Mathf.Floor((newPos.z / gridSize)) * gridSize;
		newGoalPos += new Vector3(gridSize/2, 0.0f, gridSize/2);	
		
		if (newGoalPos != goalPos) {
			buttonGlowAmount = 0;
			goalPos = newGoalPos;
			inputControl.UpdateUnitsPath(goalPos);
		}
		
		//find y pos
		Ray ray = new Ray(new Vector3(goalPos.x, 10.0f, goalPos.z), Vector3.down);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if (Physics.Raycast(ray, out hit, Mathf.Infinity,  terrainMask)) {
			goalPos.y = hit.point.y + 0.1f;
			if (hit.transform.tag == "Wall" || hit.transform.tag == "LowWall") {
				invalidMove = true;
			} else {
				invalidMove = false;
			}
		} else {
			goalPos.y = newPos.y + 0.1f;
			invalidMove = false;
		}
		
		MapControl.MapDataPoint mapData = mapControl.GetMapData(goalPos);
		
		if (mapData.coverPoint) {
			int direction = mapData.coverPoint.GetEdgeDirection();
			goalRot = Quaternion.AngleAxis(direction * 90, Vector3.up);
		} else {
			goalRot = Quaternion.identity;
		}
		
		if (!visible) transform.position = goalPos;
		selectorCollision.enabled = true;
		visible = true;
	}
	
	public void ShowButtons() {
		if (invalidMove) return;
		cancelButton.GetComponent<BoxCollider>().enabled = true;
		acceptButton.GetComponent<BoxCollider>().enabled = true;
		buttonsUp = true;
		
	}
	public void HideButtons() {
		cancelButton.GetComponent<BoxCollider>().enabled = false;
		acceptButton.GetComponent<BoxCollider>().enabled = false;
		buttonsUp = false;
	}
	public void drag(TouchManager.TouchDragEvent touchEvent) {
		if (touchEvent.startTarget.name.Equals("Accept") || touchEvent.touchTarget.name.Equals("Cancel")) {
			return;
		}
			
		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if(Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
			SetPos(hit.point);	
		}
	}
	
	public void HideSelector() {
		HideButtons();
		selectorCollision.enabled = false;
		visible = false;
		mapControl.HideCoverPoints();
	}
	
	public void tap(TouchManager.TapEvent touchEvent) {
		if (touchEvent.touchTarget.name == "Accept") {
			inputControl.SendUnitToPosition(transform.position);
			HideSelector();
		} else if (touchEvent.touchTarget.name == "Cancel") {
			inputControl.CancelPath();
			HideSelector();	
		} else {
			ShowButtons();
		}
	}
		

}