using UnityEngine;
using System.Collections;

public class GameControl : MonoBehaviour {

	public string[] tempNames;

	public GameObject friendlySoldier;
	public GameObject enemySoldier;
	
	public bool globalPause = false;
	public bool pausedBySelector = false;
	
	public GameObject[] profileCameras;
	
	SpawnControl spawnControl;
	
	void Start () {
		AddFriendlyUnits ();
		AddEnemyUnits ();	
		
		spawnControl = GetComponent<SpawnControl>();
		spawnControl.SetUp(this);
	}
	
	void Update () {


	
	}

	public void AddFriendlyUnits() {
		GameObject[] markers = GameObject.FindGameObjectsWithTag ("FriendlyMarker");
		int count = Mathf.Min(markers.Length, 4);
		for (int i = 0; i < count; i++) {
		
			//create the unit and place it at the marker;
			GameObject newUnit = Instantiate(GetFriendlyUnit(), markers[i].transform.position, markers[i].transform.rotation) as GameObject;
			newUnit.name = "Unit" + (i + 1);
			UnitController unitController = newUnit.GetComponent<UnitController>();
			unitController.unitName = tempNames[i];
			
			//create a camera for the unit pane 
			GameObject profileCamera = Instantiate(profileCameras[i], markers[i].transform.position, markers[i].transform.rotation) as GameObject;
			ChaseCam chaseCam = profileCamera.GetComponent<ChaseCam>();
			chaseCam.SetLookAtTarget(unitController.headModel.transform);
			chaseCam.RandomizeCameraPos();
			
			//link the unit to the unit pane
			InterfaceControl interfaceControl = Camera.main.gameObject.GetComponent<InterfaceControl>();
			if (!interfaceControl) Debug.Log("No InterfaceControl found on the camera");
			interfaceControl.EnableUnitPane(unitController);			
			
			Destroy(markers[i]);
		}
	}

	public void AddEnemyUnits() {
		GameObject[] markers = GameObject.FindGameObjectsWithTag ("EnemyMarker");
		foreach (GameObject marker in markers) {
			GameObject newUnit = Instantiate(GetEnemyUnit(), marker.transform.position, marker.transform.rotation) as GameObject;
			newUnit.name = "Enemy_" + newUnit.GetInstanceID();
			if (marker.name.Equals("Dummy")) 
				newUnit.GetComponent<UnitController>().dummy = true;
			Destroy(marker);
			
		}
	}

	public GameObject GetFriendlyUnit() {
		return friendlySoldier;
	}
	public GameObject GetEnemyUnit() {
		return enemySoldier;
	}
	
	public void SelectorPause() {
		pausedBySelector = true;
		Pause();
	}
	public void SelectorResume() {
		pausedBySelector = false;
		Resume();
	}
	
	public void GlobalPause() {
		globalPause = true;
		Pause();
	}
	public void GlobalResume() {
		globalPause = false;
		Resume();
	}	
	public void Pause() {
		GameTime.paused = true;
	}
	public void Resume() {
		GameTime.paused = globalPause || pausedBySelector;
	}
}
