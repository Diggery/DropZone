using System.Collections.Generic;
using System.IO;
using UnityEngine;

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
  List<AIBrain> units = new List<AIBrain>();

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
      AIBrain newUnit = CreateUnit(unitType, transform.position, transform.rotation);
      units.Add(newUnit);
    }

    if (Input.GetKeyDown(KeyCode.V)) {
      units[0].TakeCover();
    }
  }

  public void RequestSpawn(int amount) {
    spawnQueue += amount;
  }

  AIBrain CreateUnit(string unitName, Vector3 pos, Quaternion rot) {

    CharacterEntry entry = gameManager.GetCharacter(unitName);
    GameObject newUnit = GameObject.Instantiate(entry.prefab, pos, rot);
    newUnit.tag = teamTag;
    gameManager.UnitTypes.Add(teamTag);
    
    UnitControl unitControl = newUnit.GetComponent<UnitControl>().Init(entry.characterName);

    AIBrain brain = newUnit.AddComponent<AIBrain>().Init();
    brain.SquadManager = this;
    if (transform.childCount > 0) {
      List<Vector3> patrolRoute = new List<Vector3>();
      for (int i = 0; i < transform.childCount; i++) patrolRoute.Add(transform.GetChild(i).position);
      brain.AddPatrolRoute(patrolRoute);
    }
    unitControl.Enemies.Add("Player");
    spawnQueue--;
    amountSpawned++;
    readyToSpawn = false;
    coolDownTimer = coolDownTime;
    return brain;
  }

  public void UnitAttacked(UnitControl attacker, AIBrain victim) {

  }

  public void EnemySpotted(UnitControl attacker, AIBrain victim) {

  }

  void OnDrawGizmos() {
    Gizmos.color = Color.yellow;
    Gizmos.DrawCube(transform.position, Vector3.one);

    Gizmos.color = Color.gray;

    Gizmos.DrawLine(transform.position, transform.GetChild(0).position);

    Gizmos.color = Color.red;

    if (transform.childCount > 1) {
      for (int i = 0; i < transform.childCount; i++) {
        if (i < transform.childCount) Gizmos.DrawSphere(transform.GetChild(i).position, 0.5f);

        Vector3 start = transform.GetChild(i).position;
        Vector3 end = transform.GetChild((i + 1)% transform.childCount).position;
        Gizmos.DrawLine(start, end);
      }
    }
  }
}