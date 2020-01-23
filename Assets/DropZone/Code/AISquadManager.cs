using System.Collections;
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
  public int spawnReserves = 5;
  bool spawnReservesOut = false;
  public string unitType;
  public string teamTag = "Enemy";
  public bool autoFill = false;
  List<AIBrain> units = new List<AIBrain>();
  List<AIBrain> reserves = new List<AIBrain>();

  public AISpawnPoint[] spawnPositions;
  public AISpawnPoint spawnReservesPosition;

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
      Vector3 position;
      if (spawnPositions.Length > 0) {
        position = spawnPositions[Random.Range(0, spawnPositions.Length)].position;
      } else {
        position = transform.position;
      }

      AIBrain newUnit = CreateUnit(unitType, position, transform.rotation);
      units.Add(newUnit);
      if (transform.childCount > 0) {
        List<Vector3> patrolRoute = new List<Vector3>();
        for (int i = 0; i < transform.childCount; i++) patrolRoute.Add(transform.GetChild(i).position);
        newUnit.AddPatrolRoute(patrolRoute);
      }
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

    unitControl.Enemies.Add("Player");
    spawnQueue--;
    amountSpawned++;
    readyToSpawn = false;
    coolDownTimer = coolDownTime;
    return brain;
  }
  public void EnemySpotted(UnitControl attacker, AIBrain victim) { }
  public void UnitAttacked(UnitControl attacker, AIBrain victim) { }
  public void UnitInjured(UnitControl attacker, AIBrain victim) {
    if (spawnReservesPosition && !spawnReservesOut) StartCoroutine(SpawnReserves(attacker.transform.position));
  }
  public void UnitNeedOrders(AIBrain unit) {
    if (reserves.Contains(unit)) {
      unit.State = "Retreating";
      unit.MoveTo(spawnReservesPosition.position);
      Debug.Log("Sending " + unit.name + " back to the reserves");
    }
  }

  IEnumerator SpawnReserves(Vector3 target) {
    spawnReservesOut = true;
    for (int i = 0; i < spawnReserves; i++) {
      Debug.Log("Spawning reserve");
      AIBrain newUnit = CreateUnit(unitType, spawnReservesPosition.position, transform.rotation);
      reserves.Add(newUnit);
    
      newUnit.MoveTo(target);
      yield return new WaitForSeconds(0.5f);
    }
  }

  void OnDrawGizmos() {
    Gizmos.color = Color.green;
    foreach (AISpawnPoint point in spawnPositions)
      Gizmos.DrawLine(transform.position, point.position);

    Gizmos.color = Color.yellow;
    Gizmos.DrawCube(transform.position, Vector3.one);

    Gizmos.color = Color.green;
    Gizmos.DrawSphere(transform.position + Vector3.up, 0.5f);

    Gizmos.color = Color.gray;
    Gizmos.DrawLine(transform.position, transform.GetChild(0).position);

    Gizmos.color = Color.red;

    if (transform.childCount > 1) {
      for (int i = 0; i < transform.childCount; i++) {
        if (i < transform.childCount) Gizmos.DrawSphere(transform.GetChild(i).position, 0.5f);

        Vector3 start = transform.GetChild(i).position;
        Vector3 end = transform.GetChild((i + 1) % transform.childCount).position;
        Gizmos.DrawLine(start, end);
      }
    }
  }
}