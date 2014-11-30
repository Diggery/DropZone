using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Spawner : MonoBehaviour {

	GameControl gameControl;
	bool ready;
	
	float coolDown = 5.0f;
	float coolDownTimer = 5.0f;
		
	int maxUnits = 3;
	List<UnitController> activeUnits = new List<UnitController>();
	
	void SetUp(GameControl _gameControl) {
		gameControl = _gameControl;
		ready = true;
	}
	
	void Update () {
		if (!ready) return;
		
		CleanUpList();

		coolDownTimer -= Time.deltaTime;
		
		if (coolDownTimer < 0) {
			SpawnEnemy();
			
			coolDownTimer = coolDown;
		}
	}
	
	public UnitController SpawnEnemy() {
		if (coolDownTimer > 0) return null;
		
		if (activeUnits.Count >= maxUnits) return null;
	
		if (!animation.IsPlaying("Spawn")) animation.Play("Spawn");
		
		Vector3 spawnPos = transform.position + transform.forward;
		GameObject newUnit = Instantiate(gameControl.GetEnemyUnit(), spawnPos, transform.rotation) as GameObject;
		UnitController newController = newUnit.GetComponent<UnitController>();
		
		newController.Spawn();
		
		activeUnits.Add (newController);
		return newController;
	}
	
	public List<UnitController> GetActiveUnits() {
		return activeUnits;
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
}
