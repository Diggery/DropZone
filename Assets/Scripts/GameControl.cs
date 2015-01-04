using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameControl : MonoBehaviour {

	public string[] tempNames;

	public GameObject[] soldiers;
	public GameObject[] helmets;
	
	public bool globalPause = false;
	
	public GameObject[] profileCameras;
	
	SpawnControl spawnControl;
	MapControl mapControl;
	PauseControl pauseControl;
	
	List<UnitController> squad = new List<UnitController>();
	
	
	void Start () {
		mapControl = GetComponent<MapControl> ();
	
		AddFriendlyUnits ();
		AddEnemyUnits ();	
		
		spawnControl = GetComponent<SpawnControl>();
		spawnControl.SetUp(this);
	}
	
	public void SetPauseControl(PauseControl _pauseControl) {
		pauseControl = _pauseControl;
	}

	public void AddFriendlyUnits() {
		GameObject[] markers = GameObject.FindGameObjectsWithTag ("FriendlyMarker");
		int count = Mathf.Min(markers.Length, 4);
		for (int i = 0; i < count; i++) {
		
			//create the unit and place it at the marker;
			MapControl.MapDataPoint mapCell = mapControl.GetMapData(markers[i].transform.position);	
			GameObject newUnit = Instantiate(GetUnitType("Squadie"), mapCell.mapPos, markers[i].transform.rotation) as GameObject;
			newUnit.GetComponent<CharacterConfig>().Init(GetHelmetType("SquadieHelmet"));
			newUnit.name = "Unit" + (i + 1);
			UnitController unitController = newUnit.GetComponent<UnitController>();
			unitController.unitName = tempNames[i];
			AddSquadMember(unitController);
		
			//link the unit to the unit pane
			InterfaceControl interfaceControl = Camera.main.gameObject.GetComponent<InterfaceControl>();
			if (!interfaceControl) Debug.Log("No InterfaceControl found on the camera");
			interfaceControl.EnableUnitPane(unitController);		
			
			mapCell.isOccupied = true;
			
			Destroy(markers[i]);
		}
	}

	public void AddEnemyUnits() {
		GameObject[] markers = GameObject.FindGameObjectsWithTag ("EnemyMarker");
		foreach (GameObject marker in markers) {
			GameObject soldierPrefab;
			GameObject helmetPrefab;	
			bool isCaptain = false;
		
			if (marker.name.Equals("Captain")) {
				soldierPrefab = GetUnitType("EnemySoldier");
				helmetPrefab = GetHelmetType("EnemyCaptainHelmet");
				isCaptain = true;
			} else {
				soldierPrefab = GetUnitType("EnemySoldier");
				helmetPrefab = GetHelmetType("EnemyHelmet");
			}
			GameObject newUnit = Instantiate(soldierPrefab, marker.transform.position, marker.transform.rotation) as GameObject;
			newUnit.GetComponent<CharacterConfig>().Init(helmetPrefab);
			UnitController unitController = newUnit.GetComponent<UnitController>();
			if (isCaptain) {
				newUnit.AddComponent<EnemyCaptain>().SetUp(unitController);
				unitController.SetStats(UnitStatistics.GetUnitStats("Captain"));
			} else {
				unitController.SetStats(UnitStatistics.GetUnitStats("Soldier"));
			}
			if (marker.name.Equals("Dummy")) 
				unitController.dummy = true;
			Destroy(marker);
		}
	}
	
	//Get unit prefabs
	public GameObject GetUnitType(string unitName) { 
		foreach (GameObject soldier in soldiers) {
			if (soldier.name.Equals(unitName)) return soldier;
		}
		return soldiers[0]; 
	}

	
	//Get Helmet prefabs
	public GameObject GetHelmetType(string helmetName) { 
		foreach (GameObject helmet in helmets) {
			if (helmet.name.Equals(helmetName)) return helmet;
		}
		return helmets[0]; 
	}


	//get active squad
	public List<UnitController> GetSquad() { 
		return squad; 
	}

	public void AddSquadMember(UnitController squadMember) { 
		if (!squad.Contains(squadMember)) squad.Add(squadMember); 
	}
	public void RemoveSquadMember(UnitController squadMember) { 
		if (squad.Contains(squadMember)) squad.Remove(squadMember); 
	}
	
	public void SquadieHit(UnitController squadMember) {
		Pause("SquadieHit");
	} 
	public void SquadieInjured(UnitController squadMember) {
		Pause("SquadieInjured");
	}
	public void SquadieDead(UnitController squadMember) {
		Pause("SquadieDead");
	}
	
	public void SelectorPause() {
		Pause();
	}
	public void SelectorResume() {
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

	public void Pause(string reason) {
		switch(reason) {
		
		case "UnitSelected" :
			if (pauseControl.onSelection) {
				Pause();
				pauseControl.SetPauseInfo("Unit was selected.");
			}
			break;
			
		case "MapSelector" :
			if (pauseControl.onMoveControl) {
				Pause();
				pauseControl.SetPauseInfo("MoveSelector active.");
			}			
			break;
			
		case "SquadieHit" :
			if (pauseControl.onHit) {
				Pause();
				pauseControl.SetPauseInfo("A Squadie was hit.");
			}			
			break;
			
		case "SquadieInjured" :
			if (pauseControl.onHit || pauseControl.onInjured) {
				Pause();
				pauseControl.SetPauseInfo("A Squadie is heavily injured.");
			}			
			break;
			
		case "SquadieDead" :
			if (pauseControl.onHit || pauseControl.onInjured || pauseControl.onDeath) {
				Pause();
				pauseControl.SetPauseInfo("A Squadie has been incapacitated.");
			}			
			break;
			
		case "NewEnemy" :
			if (pauseControl.onNewEnemy) {
				Pause();
				pauseControl.SetPauseInfo("A new enemy has been spotted.");
			}			
			break;
			
		case "NewCaptain" :
			if (pauseControl.onNewCaptain) {
				Pause();
				pauseControl.SetPauseInfo("A new captain has been spotted.");
			}			
			break;
			
		case "SpecialAction" :
			if (pauseControl.onSpecialAction) {
				Pause();
				pauseControl.SetPauseInfo("An enemy is using a special item.");
			}			
			break;
			
			
		default :
				Pause();
			break;
		}
	
		
	}
		
	public void Pause() {
		GameTime.paused = true;
	}
	
	public void Resume(string reason) {
		Resume();
		pauseControl.ClearPauseInfo();
	}
	
	public void Resume() {
		if (globalPause) {
			GameTime.paused = true;
			return; 
		}
		GameTime.paused = false;
	}
	
	public void OnDestroy() {
		LoadSave.SaveAll();
	}
}
