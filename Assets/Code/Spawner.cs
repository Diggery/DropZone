using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class Spawner : MonoBehaviour {

  GameManager gameManager;
  int amountSpawned = 0;
  int spawnLimit = 20;
  private bool readyToSpawn = false;

  private void Awake() {
    gameManager = GameManager.Instance;
    Invoke("ReadyToSpawn", 5);
  }

  public void ReadyToSpawn() {
    readyToSpawn = true;
  }

  void Update() {
    if (readyToSpawn && (amountSpawned < spawnLimit)) {
      amountSpawned++;

      CreateUnit("Human", transform.position, transform.rotation);
    }
  }

  public GameObject CreateUnit(string unitName, Vector3 pos, Quaternion rot) {

    GameObject prefab = gameManager.unitInventory.GetUnitPrefab(unitName);
    GameObject newUnit = GameObject.Instantiate(prefab, pos, rot);
    newUnit.GetComponent<UnitControl>().Init();
    return newUnit;
  }
}
