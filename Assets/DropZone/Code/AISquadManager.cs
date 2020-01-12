using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class AISquadManager : MonoBehaviour {

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

  void OnDrawGizmos() {
    Gizmos.color = Color.yellow;
    Gizmos.DrawCube(transform.position, Vector3.one);

    Gizmos.color = Color.red;

    if (transform.childCount > 1) {
      for (int i = 0; i <= transform.childCount; i++) {
        if (i < transform.childCount) Gizmos.DrawSphere(transform.GetChild(i).position, 0.5f);

        Vector3 start = (i == 0) ? transform.position : transform.GetChild(i - 1).position;
        Vector3 end = (i < transform.childCount) ? transform.GetChild(i).position : transform.position;
        Gizmos.DrawLine(start, end);
      }
    }
  }
}
