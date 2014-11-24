using UnityEngine;
using System.Collections;

public class GameControl : MonoBehaviour {

	public GameObject friendlySoldier;
	public GameObject enemySoldier;
	
	bool globalPause = false;
	bool pausedBySelector = false;
	
	void Start () {
	
	}
	
	void Update () {
		if (Input.GetKeyUp (KeyCode.A)) {
			AddFriendlyUnits ();
			AddEnemyUnits ();
		}
		if (Input.GetKeyUp (KeyCode.Space)) {

			if (globalPause) {
				GlobalResume();
			} else {
				GlobalPause();
			}
		}
	
	}

	public void AddFriendlyUnits() {
		GameObject[] markers = GameObject.FindGameObjectsWithTag ("FriendlyMarker");
		foreach (GameObject marker in markers) {
			GameObject newUnit = Instantiate(GetFriendlyUnit(), marker.transform.position, marker.transform.rotation) as GameObject;
			newUnit.name = "Friendly_" + newUnit.GetInstanceID();
			Destroy(marker);
			
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
