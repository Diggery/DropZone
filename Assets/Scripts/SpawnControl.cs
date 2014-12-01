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
		Spawner spawner = spawners[Random.Range(0, spawners.Count)];
		if (!spawner.Spawn()) print ("Failed to Spawn anything");
	}
	
	void SpawnClosestUnit() {
	
	}
	void SpawnFarthestUnit() {
		
	}
}
