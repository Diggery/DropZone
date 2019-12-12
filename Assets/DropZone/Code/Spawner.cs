using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class Spawner : MonoBehaviour {

  GameManager gameManager;
  int amountSpawned = 0;
  int spawnLimit = 20;
  int spawnQueue = 0;
  float coolDownTime = 1;
  float coolDownTimer = 1;
  private bool readyToSpawn = true;

  private void Awake() {
    gameManager = GameManager.Instance;
  }

  void Update() {
    if (coolDownTimer > 0) {
      coolDownTimer -= Time.deltaTime;
      if (coolDownTimer < 0) {
        readyToSpawn = true;
      }
    }

    if (readyToSpawn && (spawnQueue > 0) && (amountSpawned < spawnLimit)) {
      CreateUnit("Human", transform.position, transform.rotation);
    }
  }

  public void RequestSpawn(int amount) {
    spawnQueue += amount;
  }
 
  GameObject CreateUnit(string unitName, Vector3 pos, Quaternion rot) {

    GameObject prefab = gameManager.characterInventory.GetCharacter(unitName).prefab;
    GameObject newUnit = GameObject.Instantiate(prefab, pos, rot);
    newUnit.GetComponent<UnitControl>().Init();
    spawnQueue--;
    amountSpawned++;
    readyToSpawn = false;
    coolDownTimer = coolDownTime;
    return newUnit;
  }
}
