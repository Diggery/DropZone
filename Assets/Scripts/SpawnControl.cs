using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnControl : MonoBehaviour {

	List<Spawner> spawners = new List<Spawner>();
	GameControl gameControl;
	
	public void SetUp (GameControl _gameControl) {
		gameControl = _gameControl;
			
		GameObject[] spawners = GameObject.FindGameObjectsWithTag ("Spawner");
		foreach(GameObject spawner in spawners) {
			AddSpawner(spawner);
		}		
	}
	
	void Update () {
		if (Input.GetKeyUp (KeyCode.V)) {
			SpawnRandomUnit();
		}
			
	
	}
	
	public void AddSpawner(GameObject newSpawner) {
		Spawner spawner = newSpawner.GetComponent<Spawner>();
		spawner.SetUp(gameControl);
		spawners.Add(spawner);
	}
	
	void SpawnRandomUnit() {
		
		List<Spawner> availableSpawners = new List<Spawner>();
		
		foreach (Spawner randomSpawner in spawners) {
			if (randomSpawner.IsReadyToSpawn()) availableSpawners.Add(randomSpawner);
		}
		
		if (availableSpawners.Count < 1) {
			
			return;
		}
		
		Spawner spawner = spawners[Random.Range(0, availableSpawners.Count)];
		UnitController newUnit = spawner.Spawn();
		if (!newUnit) Debug.Log("Nothing spawned");
	}
	
	void SpawnClosestUnit() {
	
	}
	void SpawnFarthestUnit() {
		
	}
}
