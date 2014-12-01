using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Spawner : MonoBehaviour {

	GameControl gameControl;
	bool ready;
	
	float coolDown = 3.0f;
	float coolDownTimer = 3.0f;
		
	int maxUnits = 3;
	List<UnitController> activeUnits = new List<UnitController>();
	
	Transform rallyPoint;
	
	public void SetUp(GameControl _gameControl) {
		gameControl = _gameControl;
		ready = true;
		rallyPoint = transform.Find ("RallyPoint");
		rallyPoint.renderer.enabled = false;
	}
	
	void Update () {
		if (!ready) return;
		
		CleanUpList();

		
		
		if (coolDownTimer > 0) {
			coolDownTimer -= Time.deltaTime;
		}
	}
	
	public UnitController Spawn() {
		if (coolDownTimer > 0) return null;
		
		if (activeUnits.Count >= maxUnits) return null;
	
		if (!animation.IsPlaying("Spawn")) animation.Play("Spawn");
		
		Vector3 spawnPos = transform.position + transform.forward;
		GameObject newUnit = Instantiate(gameControl.GetEnemyUnit(), spawnPos, transform.rotation) as GameObject;
		UnitController newController = newUnit.GetComponent<UnitController>();
		
		newController.Spawn(rallyPoint.position);
		
		activeUnits.Add (newController);
		coolDownTimer = coolDown;
		return newController;
	}
	
	public List<UnitController> GetActiveUnits() {
		return activeUnits;
	}
	
	public void SetRallyPoint (Vector3 rallyPointPos) {
		rallyPoint.position = rallyPointPos;
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
