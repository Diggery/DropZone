using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.AI;

public class AIBrain : MonoBehaviour {
  public bool isBrainDead = false;
  Dictionary<string, AIState> states = new Dictionary<string, AIState>();
  public AIState CurrentState { get; set; }
  public string State {
    get {
      return CurrentState.StateName;
    }

    set {
      if (CurrentState && value.Equals(CurrentState.StateName)) return;

      if (states.ContainsKey(value)) {
        if (CurrentState) CurrentState.StateExit();
        CurrentState = states[value];
        CurrentState.StateEnter();
      } else {
        Debug.Log("There is no state called " + value);
      }
    }
  }

  UnitControl unitControl;
  MapControl mapControl;
  public UnitControl CurrentTarget { get; set; }

  float visualRange = 15;
  float SqrVisualRange { get; set; }
  public bool showDebug;

  void Start() {
    unitControl = GetComponent<UnitControl>();
    mapControl = MapControl.Instance;
    SqrVisualRange = visualRange * visualRange;
    unitControl.pathComplete.AddListener(MoveComplete);

    gameObject.AddComponent<AIStateIdle>();
    gameObject.AddComponent<AIStateMoving>();
    gameObject.AddComponent<AIStateAttacking>();

    StartCoroutine(GatherStates());
  }

  IEnumerator GatherStates() {
    yield return new WaitForEndOfFrame();
    AIState[] newStates = GetComponents<AIState>();
    foreach (AIState state in newStates) {
      state.StateInit();
      states.Add(state.StateName, state);
    }
    State = "Idle";
  }

  void Update() {
    if (isBrainDead) return;
    
    if (CurrentState)
      CurrentState.StateUpdate();
  }

  public void MoveTo(Vector3 mapPos) {
    State = "Moving";
    unitControl.MoveTo(mapPos);
  }

  public void MoveToSafeSpot(UnitControl closestEnenmy) {
    if (FindSafePos(transform.position, visualRange, gameObject.tag, out Vector3 safePos)) {
      MoveTo(safePos);
    } else {
      Debug.Log("Can't Find a safe space");
      AttackTarget(closestEnenmy);
    }
  }

  void MoveComplete() {
    State = "Idle";
  }

  public void AttackTarget(UnitControl enemy) {
    CurrentTarget = enemy;
    State = "Attacking";
  }

  public bool FindSafePos(Vector3 searchPos, float searchRange, string tag, out Vector3 safePos) {
    GameObject[] targets;

    if (tag.Equals("Player")) {
      targets = GameObject.FindGameObjectsWithTag("Enemy");
    } else if (tag.Equals("Enemy")) {
      targets = GameObject.FindGameObjectsWithTag("Player");
    } else {
      safePos = searchPos;
      return false;
    }

    List<MapData.MapCell> cellsInRange = mapControl.mapData.GetMapArea(searchPos, Mathf.RoundToInt(searchRange));

    Dictionary<MapData.MapCell, float> scoredCells = new Dictionary<MapData.MapCell, float>();

    foreach (MapData.MapCell cell in cellsInRange) {
      bool isVisible = false;
      float cellScore = Mathf.Infinity;

      foreach (GameObject target in targets) {
        if (mapControl.IsPositionVisible(target.transform.position, cell.mapPos, true)) {
          isVisible = true;
        }
        float distanceFromSearch = (cell.mapPos - searchPos).sqrMagnitude + Random.Range(0, SqrVisualRange);
        float distanceFromTarget = Mathf.Max(SqrVisualRange - (cell.mapPos - target.transform.position).sqrMagnitude, 0);
        cellScore = Mathf.Min(cellScore, distanceFromSearch + distanceFromTarget);
      }
      scoredCells.Add(cell, (isVisible || cell.isCollision) ? Mathf.Infinity : cellScore);
    }

    if (scoredCells.Count < 1) {
      safePos = searchPos;
      return false;
    }

    safePos = scoredCells.OrderBy(element => element.Value).First().Key.mapPos;

    return true;
  }
}
