using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class AISquadManager : MonoBehaviour {

  GameManager gameManager;
  AIOverlord aiOverlord;
  int spawnQueue = 0;
  float coolDownTime = 3;
  float coolDownTimer = 3;
  bool ReadyToSpawn {
    get { return coolDownTimer < 0; }
  }
  public int spawnLimit = 5;
  public int spawnReserves = 5;
  bool spawnReservesOut = false;
  public string unitType;
  public string teamTag = "Enemy";
  public bool autoFill = false;
  float morale = 0;
  float penaltyDeath = 3;
  float penaltyInjury = 0.5f;
  List<AIBrain> units = new List<AIBrain>();
  List<AIBrain> reserves = new List<AIBrain>();

  float retreatCoolDown = 15;

  public AISpawnPoint[] spawnPositions;
  public AISpawnPoint spawnReservesPosition;

  private void Start() {
    gameManager = GameManager.Instance;
    aiOverlord = gameManager.aiOverlord;
    aiOverlord.AddSquad(this);
  }

  void Update() {
    if (coolDownTimer > 0) {
      coolDownTimer -= Time.deltaTime;
    }

    if (ReadyToSpawn && (autoFill || spawnQueue > 0) && (units.Count < spawnLimit)) {
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

    if (morale > 0) {
      morale -= Time.deltaTime;
    }
  }

  public void RequestSpawn(int amount) {
    spawnQueue += amount;
  }

  AIBrain CreateUnit(string unitName, Vector3 pos, Quaternion rot) {

    CharacterEntry entry = gameManager.GetCharacter(unitName);
    GameObject newUnit = Instantiate(entry.prefab, pos, rot);
    newUnit.tag = teamTag;
    gameManager.UnitTypes.Add(teamTag);

    UnitControl unitControl = newUnit.GetComponent<UnitControl>().Init(entry.characterName);

    AIBrain brain = newUnit.AddComponent<AIBrain>().Init();
    brain.SquadManager = this;

    unitControl.Enemies.Add("Player");
    spawnQueue--;
    coolDownTimer = coolDownTime;
    return brain;
  }
  public void EnemySpotted(Vector3 attackerPos, AIBrain victim) { }

  public void UnitAttacked(Vector3 attackerPos, AIBrain victim) { }

  public void UnitInjured(UnitControl attacker, AIBrain victim) {
    if (spawnReservesPosition && !spawnReservesOut) StartCoroutine(SpawnReserves(attacker.transform.position));
    AdjustMorale(penaltyInjury);
  }

  public void UnitDead(AIBrain victim) {
    if (units.Contains(victim)) units.Remove(victim);
    aiOverlord.UnitDead();
    AdjustMorale(penaltyDeath);
  }

  public void UnitRemoved(AIBrain victim) {
    if (units.Contains(victim)) units.Remove(victim);
    if (reserves.Contains(victim)) reserves.Remove(victim);
  }

  public void UnitNeedOrders(AIBrain brain) {
    if (reserves.Contains(brain)) {
      brain.Leave(spawnReservesPosition.position);
      Debug.Log("Sending " + brain.name + " back to the reserves");
    }
  }

  IEnumerator SpawnReserves(Vector3 target) {
    spawnReservesOut = true;
    for (int i = 0; i < spawnReserves; i++) {
      yield return new WaitForSeconds(0.5f);

      Debug.Log("Spawning reserve");
      AIBrain newUnit = CreateUnit(unitType, spawnReservesPosition.position, transform.rotation);
      reserves.Add(newUnit);

      newUnit.MoveTo(target);
    }

    foreach (var unit in reserves) unit.State = "Searching";
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
  public Vector3 FindExit(AIBrain unit) {
    if (reserves.Contains(unit)) {
      return spawnReservesPosition.position;
    } else {
      int selector = Random.Range(0, spawnPositions.Length);
      return spawnPositions[selector].position;
    }
  }

  public void Retreat() {
    Debug.Log(gameObject.name + " is retreating");
    foreach (AIBrain unit in units) unit.Leave();
    foreach (AIBrain reserveUnit in reserves) reserveUnit.Leave();
    coolDownTimer = retreatCoolDown;
  }

  public void AdjustMorale(float amount) {
    morale += amount;
    if (morale > 1) Retreat();
  }
}