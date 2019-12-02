using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyManager : MonoBehaviour
{
  List<Spawner> spawners = new List<Spawner>();
  List<UnitControl> enemies = new List<UnitControl>();

  void Start() {
    GameObject[] spawnerObjs = GameObject.FindGameObjectsWithTag("Spawner");
    foreach(GameObject spawnerObj in spawnerObjs) {
      spawners.Add(spawnerObj.GetComponent<Spawner>());
    }

    Invoke("SpawnStuff", 5);
  }

  void SpawnStuff() {
    spawners[0].RequestSpawn(5);
  }
}
