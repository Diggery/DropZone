using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIOverlord : MonoBehaviour {

  List<AISquadManager> squads = new List<AISquadManager>();

  enum AIMode { Passive, Attacking, Retreating }
  AIMode mode = AIMode.Passive;

  float timeToNextWave = -1;
  float waveSetup = 10;

  float waveTimer = -1;
  float waveLength = 5;

  float retreatTimer = -1;
  float retreatLength = 5;


  Vector3? attackPosition;
  Vector3? rallyPosition;
  Vector3? retreatPosition;

  void Start() {

  }

  void Update() {
    switch (mode) {
      case AIMode.Passive:
        if (timeToNextWave > 0) {
          timeToNextWave -= Time.deltaTime;
          if (timeToNextWave < 0) StartWave();
        }
        break;
      case AIMode.Attacking:
        waveTimer -= Time.deltaTime;
        if (waveTimer < 0) EndWave();
        break;
      case AIMode.Retreating:
        retreatTimer -= Time.deltaTime;
        if (retreatTimer < 0) mode = AIMode.Passive;
        break;
    }
  }

  public void AddSquad(AISquadManager newSquad) {
    squads.Add(newSquad);
  }

  void SetupWave() {
    timeToNextWave = waveSetup;
  }

  void StartWave() {
    timeToNextWave = -1;
    waveTimer = waveLength;
    mode = AIMode.Attacking;
  }

  void EndWave() {
    mode = AIMode.Passive;
  }

  void retreat() {
    retreatTimer = retreatLength;
    mode = AIMode.Retreating;
  }

  public void UnitDead() {
    
  }
}
