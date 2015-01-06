	using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;

public class MapSelector : MonoBehaviour, IDragHandler {
	
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
	
	public Texture moveYes;
	public Texture moveNo;
	
	
	public void SetUp () {
		cancelButton = transform.Find("Cancel");
		cancelButton.gameObject.AddComponent<ButtonControl>();
		cancelIcon = transform.Find("Cancel/CancelIcon");
		cancelGlow = transform.Find("CancelGlow");
		acceptButton = transform.Find("Accept");
		acceptButton.gameObject.AddComponent<ButtonControl>();
		acceptIcon = transform.Find("Accept/AcceptIcon");
		acceptGlow = transform.Find("AcceptGlow");
		
		GameObject inputControlObj = GameObject.Find("Map");
		if (!inputControlObj) print ("Need a 'Map' object added with a input control and map control on it");
		inputControl = inputControlObj.GetComponent<InputControl>();
		mapControl = inputControlObj.GetComponent<MapControl>();
		gridSize = mapControl.GetGridSize();
		selectorCollision = GetComponent<BoxCollider>();
		
		GameObject cameraRoot = GameObject.Find("CameraRoot");
		CameraControl cameraControl = cameraRoot.GetComponent<CameraControl>();
		cameraControl.SetMapSelector(this);
		Events.Listen(gameObject, "DeselectUnit");
	}
	
	void Update () {
		if (visible){
			renderer.material.color = Color.Lerp(renderer.material.color, Color.white, GameTime.deltaTime * 10);
			transform.position = Vector3.Lerp(transform.position, goalPos, GameTime.deltaTime * 10);
			transform.rotation = Quaternion.Lerp(transform.rotation, goalRot, GameTime.deltaTime * 10);			
		} else {
			renderer.material.color = Color.Lerp(renderer.material.color, new Color(1.0f, 1.0f, 1.0f, 0.0f), GameTime.deltaTime * 10);	
		}
		
		if (invalidMove) {
			if (buttonsUp) HideButtons();
			renderer.material.mainTexture = moveNo;
		} else {
			if (buttonsUp) ShowButtons();
			renderer.material.mainTexture = moveYes;
		}
		
		if (buttonsUp) {
			buttonTransAmount = Mathf.Lerp(buttonTransAmount, 1, GameTime.deltaTime * 5);
			buttonGlowAmount = Mathf.Lerp(buttonGlowAmount, 1, GameTime.deltaTime * 1);
		} else {
			buttonTransAmount = Mathf.Lerp(buttonTransAmount, -1, GameTime.deltaTime * 8);
			buttonGlowAmount = Mathf.Lerp(buttonGlowAmount, -1, GameTime.deltaTime * 5);
		}
		
		acceptButton.localScale = Vector3.Lerp(new Vector3(0.1f, 0.1f, 0.1f), Vector3.one, buttonTransAmount);
		acceptButton.renderer.material.color = Color.Lerp(new Color(1.0f, 1.0f, 1.0f, 0.0f), Color.white, buttonTransAmount);

		acceptIcon.renderer.material.color = Color.Lerp(Color.clear, Color.white, buttonTransAmount );
		
		acceptGlow.renderer.material.color = Color.Lerp(Color.black, Color.gray, buttonGlowAmount );
		
		cancelButton.localScale = Vector3.Lerp(new Vector3(0.1f, 0.1f, 0.1f), Vector3.one, buttonTransAmount);
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
			mapControl.ShowCoverPoints(newGoalPos);
		}
		
		//find y pos
		Ray ray = new Ray(new Vector3(goalPos.x, 10.0f, goalPos.z), Vector3.down);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if (Physics.Raycast(ray, out hit, Mathf.Infinity,  terrainMask)) {
			goalPos.y = hit.point.y + 0.1f;
			MapControl.MapDataPoint mapCell = mapControl.GetMapData(goalPos);
			if (mapCell.isCollision || mapCell.isOccupied) {
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
	
	public Vector3[] GetButtonPositions() {
		Vector3[] positions = new Vector3[2];
		positions[0] = acceptButton.position + acceptButton.GetComponent<SphereCollider>().center;
		positions[1] = cancelButton.position + cancelButton.GetComponent<SphereCollider>().center;
		return positions;
	}
	
	public void ShowButtons() {
		if (invalidMove) return;
		cancelButton.GetComponent<SphereCollider>().enabled = true;
		acceptButton.GetComponent<SphereCollider>().enabled = true;
		buttonsUp = true;
	}
	public void HideButtons() {
		cancelButton.GetComponent<SphereCollider>().enabled = false;
		acceptButton.GetComponent<SphereCollider>().enabled = false;
		buttonsUp = false;
	}
	public void DeselectUnit() {
		HideSelector();
	}	
	public void HideSelector() {
		HideButtons();
		selectorCollision.enabled = false;
		visible = false;
		mapControl.HideCoverPoints();
	}
	
	public void OnDrag(PointerEventData eventData) {

		Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if(Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
			SetPos(hit.point);	
		}
	}
	

	public void ButtonClicked(string buttonName) {
		if (buttonName.Equals("Accept")) {
			inputControl.SendUnitToPosition(transform.position);
			HideSelector();
		} else if (buttonName.Equals("Cancel")) {
			inputControl.CancelPath();
			HideSelector();	
			inputControl.DeselectUnit();
		} else {
			ShowButtons();
		}
	}
}