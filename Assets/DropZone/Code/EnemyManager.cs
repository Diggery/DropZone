using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyManager : MonoBehaviour
{
  List<AISquadManager> spawners = new List<AISquadManager>();
  List<UnitControl> enemies = new List<UnitControl>();

  void Start() {
    GameObject[] spawnerObjs = GameObject.FindGameObjectsWithTag("Spawner");
    foreach(GameObject spawnerObj in spawnerObjs) {
      spawners.Add(spawnerObj.GetComponent<AISquadManager>());
    }

   // Invoke("SpawnStuff", 5);
  }

  void SpawnStuff() {
    spawners[0].RequestSpawn(5);
  }
}
