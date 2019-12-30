using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class Spawner : MonoBehaviour {

  GameManager gameManager;
  int amountSpawned = 0;
  int spawnQueue = 0;
  float coolDownTime = 1;
  float coolDownTimer = 3;
  bool readyToSpawn = true;

  public int spawnLimit = 5;
  public string unitType;
  public string teamTag = "Enemy";

  public bool autoFill = false;

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

    if (readyToSpawn && (autoFill || spawnQueue > 0) && (amountSpawned < spawnLimit)) {
      CreateUnit(unitType, transform.position, transform.rotation);
    }
  }

  public void RequestSpawn(int amount) {
    spawnQueue += amount;
  }

  GameObject CreateUnit(string unitName, Vector3 pos, Quaternion rot) {

    CharacterEntry entry = gameManager.GetCharacter(unitName);
    GameObject newUnit = GameObject.Instantiate(entry.prefab, pos, rot);
    newUnit.tag = teamTag;

    UnitControl unitControl = newUnit.GetComponent<UnitControl>().Init(entry.characterName);

    AIBrain brain = newUnit.AddComponent<AIBrain>().Init();
    //brain.FindSafePos(transform.position, 10, );

    unitControl.Enemies.Add("Player");
    spawnQueue--;
    amountSpawned++;
    readyToSpawn = false;
    coolDownTimer = coolDownTime;
    return newUnit;
  }
}
