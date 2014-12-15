using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class SpawnControl : MonoBehaviour {

	List<Spawner> spawners = new List<Spawner>();
	GameControl gameControl;
	
	int totalEnemies;
	
	Spawner mainSpawner;
	
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
	
	public Spawner GetMainSpawner() {
		if (!mainSpawner) {
			Debug.Log("No Main Spawner... returning some spawner.");
			return spawners[0];
		}	
		return mainSpawner;
	}
		
	public void AddSpawner(GameObject newSpawner) {
		Spawner spawner = newSpawner.GetComponent<Spawner>();
		spawner.SetUp(gameControl);
		spawners.Add(spawner);
		if (spawner.mainSpawner) {
			mainSpawner = spawner;
		}
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
		GameObject newUnit = spawner.Spawn();
		if (!newUnit) Debug.Log("Nothing spawned");
	}
	
	public GameObject SpawnUnitAtClosest (Vector3 position) {
		Spawner closest = null;
		float dist = Mathf.Infinity;
		foreach (Spawner spawner in spawners) {
			float pointDist = (spawner.transform.position - position).sqrMagnitude;
			if (pointDist < dist) {
				dist = pointDist;
				closest = spawner;
			}
		}
		GameObject newUnit = closest.Spawn();
		if (!newUnit) Debug.Log("Nothing spawned");
		return newUnit;
	}

	int GetNumberOfEnemies() {
		int enemies = 0;
		foreach (Spawner spawner in spawners) {
			enemies += spawner.GetEnenmyCount();
		}
		return enemies;
	}
	

}
