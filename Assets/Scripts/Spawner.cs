using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Spawner : MonoBehaviour {

	GameControl gameControl;
	bool ready;
	
	float coolDown = 3.0f;
	float coolDownTimer = 3.0f;
	
	float dangerous = 0.0f;
		
	int maxUnits = 3;
	List<UnitController> activeUnits = new List<UnitController>();
	
	Transform rallyPoint;
	
	public bool mainSpawner;
	
	public void SetUp(GameControl _gameControl) {
		gameControl = _gameControl;
		ready = true;
		rallyPoint = transform.Find ("RallyPoint");
		rallyPoint.renderer.enabled = false;
	}
	
	void Update () {
		if (!ready) return;
		
		if (dangerous > 0) {
			dangerous -= Time.deltaTime;
		}
			
		if (coolDownTimer > 0) {
			coolDownTimer -= Time.deltaTime;
		}
	}
	
	public bool IsReadyToSpawn() {
	
		if (coolDownTimer > 0) {
			Debug.Log(transform.name + " is still cooling down");
			return false;
		}
		
		if (activeUnits.Count >= maxUnits) {
			Debug.Log(transform.name + " is already full");
			return false;
		}
		
		if (dangerous > 0){
			Debug.Log(transform.name + " is too dangerous");
			return false;
		}	
		
		return true;
	}
	
	public GameObject Spawn() {

		if (!IsReadyToSpawn()) return null;
		
		if (!animation.IsPlaying("Spawn")) animation.Play("Spawn");
		
		
		Vector3 spawnPos = transform.position + transform.forward;
		GameObject newUnit = Instantiate(gameControl.GetUnitType("NecriteSoldier"), spawnPos, transform.rotation) as GameObject;
		newUnit.GetComponent<CharacterConfig>().Init(gameControl.GetHelmetType("NecriteSkull"));
		
		UnitController newController = newUnit.GetComponent<UnitController>();
		newController.SetStats(UnitStatistics.GetUnitStats("Soldier"));		
		newController.Spawn(rallyPoint.position);
		newController.SetSpawner(this);
		
		activeUnits.Add (newController);
		coolDownTimer = coolDown;
		return newUnit;
	}
	
	public List<UnitController> GetActiveUnits() {
		return activeUnits;
	}
	
	public void SetRallyPoint (Vector3 rallyPointPos) {
		rallyPoint.position = rallyPointPos;
	}
	
	public void SpawnedUnitDead(float unitLifeTime) {
	
		CleanUpList();
	
		if (unitLifeTime < 3) {
			Debug.Log("This place is too dangerous");
			dangerous += 10.0f;
		}
	}
	
	void CleanUpList() {
		List<UnitController> deadUnits = new List<UnitController>();
		foreach(UnitController unit in activeUnits) {
			if (!unit || unit.dead) {
				deadUnits.Add(unit);
			}
		}
		foreach(UnitController dead in deadUnits) {
			activeUnits.Remove(dead);
		}
	}
	
	public int GetEnenmyCount() {
		return activeUnits.Count;
	}
	
}
