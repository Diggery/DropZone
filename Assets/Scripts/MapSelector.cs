using UnityEngine;
using System.Collections;

public class MapSelector : MonoBehaviour {
	
	float gridSize = 1.0f;
	public bool visible = false;
	public float showCoverRange;
	bool buttonsUp = false;
	bool invalidMove = false;
	Vector3 goalPos;
	
	Vector3 buttonOffset;
	Transform buttons;
	Transform cancelButton;
	Transform acceptButton;
	BoxCollider selectorCollision;
	
	InputControl inputControl;
	MapControl mapControl;
	
	void Start () {
		buttons = transform.Find("Buttons");
		cancelButton = transform.Find("Buttons/Cancel");
		acceptButton = transform.Find("Buttons/Accept");
		
		GameObject inputControlObj = GameObject.Find("Map");
		if (!inputControlObj) print ("Need a 'Map' object added with a input control and map control on it");
		inputControl = inputControlObj.GetComponent<InputControl>();
		mapControl = inputControlObj.GetComponent<MapControl>();
		gridSize = mapControl.GetGridSize();
		selectorCollision = GetComponent<BoxCollider>();
		
		showCoverRange *= showCoverRange;
	}
	
	void Update () {
		if (visible){
			renderer.material.color = Color.Lerp(renderer.material.color, Color.white, GameTime.deltaTime * 2);
			transform.position = Vector3.Lerp(transform.position, goalPos, GameTime.deltaTime * 10);
			ShowCoverPoints();
		} else {
			renderer.material.color = Color.Lerp(renderer.material.color, Color.black, GameTime.deltaTime * 10);	
		}
		
		if (invalidMove) {
			if (buttonsUp) HideButtons();
			transform.renderer.material.mainTextureOffset = new Vector2(0.25f, 0.0f);
		} else {
			transform.renderer.material.mainTextureOffset = new Vector2(0.0f, 0.0f);
		}
		
		if (buttonsUp) {
			buttonOffset = Vector2.Lerp(buttonOffset, new Vector2(0.0f, 0.0f), GameTime.deltaTime * 10);
		} else {
			buttonOffset = Vector2.Lerp(buttonOffset, new Vector2(0.5f, 0.0f), GameTime.deltaTime * 15);
		}
		cancelButton.renderer.material.mainTextureOffset = buttonOffset; 
		acceptButton.renderer.material.mainTextureOffset = buttonOffset; 
		
		
		//rotateButtons
		float buttonHeading = Camera.main.transform.eulerAngles.y / 90;
		buttonHeading = Mathf.Round(buttonHeading) * 90 ;
		buttons.rotation = Quaternion.Lerp(buttons.rotation, Quaternion.AngleAxis(buttonHeading + 180,  Vector3.up), GameTime.deltaTime * 10);
	}
	
	public void SetPos(Vector3 newPos) {
		goalPos.x = Mathf.Floor((newPos.x / gridSize)) * gridSize;
		goalPos.y = newPos.y;
		goalPos.z = Mathf.Floor((newPos.z / gridSize)) * gridSize;
		goalPos += new Vector3(gridSize/2, 0.0f, gridSize/2);	
		
		//find y pos
		Ray ray = new Ray(new Vector3(goalPos.x, 10.0f, goalPos.z), Vector3.down);
		RaycastHit hit;
		LayerMask terrainMask = 1 << LayerMask.NameToLayer("Ground");
		if (Physics.Raycast(ray, out hit, Mathf.Infinity,  terrainMask)) {
			goalPos.y = hit.point.y;
			if (hit.transform.tag == "Wall" || hit.transform.tag == "LowWall") {
				invalidMove = true;
			} else {
				invalidMove = false;
			}
		} else {
			goalPos.y = newPos.y;
			invalidMove = false;
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
	public void touchDrag(TouchManager.TouchDragEvent touchEvent) {
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
		hideCoverPoints();
	}
	
	public void tap(TouchManager.TapEvent touchEvent) {
		if (touchEvent.touchTarget.name == "Accept") {
			inputControl.SendUnitToPosition(transform.position);
			HideSelector();
		} else if (touchEvent.touchTarget.name == "Cancel") {
			HideSelector();	
		} else {
			ShowButtons();
		}
	}
	
	public void ShowCoverPoints() {
		GameObject[] allCover = GameObject.FindGameObjectsWithTag("CoverPoint"); 
		foreach (GameObject cover in allCover) {
			float distanceToCover = (cover.transform.position - transform.position).sqrMagnitude;
			if (distanceToCover < showCoverRange) {
				CoverPoint coverPoint = cover.GetComponent<CoverPoint>();
				coverPoint.SetFade(1 - distanceToCover/(showCoverRange - 1));

			}
		}		
	}
	
	public void hideCoverPoints() {
		GameObject[] allCover = GameObject.FindGameObjectsWithTag("CoverPoint"); 
		foreach (GameObject cover in allCover) {
			CoverPoint coverPoint = cover.GetComponent<CoverPoint>();
			coverPoint.SetFade(0);
		}		
	}
}