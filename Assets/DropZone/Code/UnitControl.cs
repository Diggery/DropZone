using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class UnitControl : MonoBehaviour {

  GameManager gameManager;


  public bool autoInit;
  NavMeshAgent navAgent;

  bool IsMoving { get; set; }

  bool isSelected = false;
  public bool IsSelected {
    get { return isSelected; } 
    set {
      Debug.Log(gameObject.name + " is Selected");
      isSelected = value; 
    } 
  }

  [HideInInspector]
  public UnityEvent pathComplete = new UnityEvent();

  public bool IsPathComplete {
    get {
      if (Vector3.Distance(navAgent.destination, navAgent.transform.position) <= navAgent.stoppingDistance) {
        return (!navAgent.hasPath || navAgent.velocity.sqrMagnitude == 0f);
      }
      return false;
    }
  }

  public bool IsDestroyed {
    get { return false; }
  }

  void Start() {
    if (autoInit) Init();
  }

  public void Init() {
    gameManager = GameManager.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 100);

  }

  void Update() {
    if (IsMoving && IsPathComplete) {
      MoveComplete();
    }
  }

  public void MoveTo(Vector3 movePos) {
    navAgent.SetDestination(movePos);
    IsMoving = true;
  }

  public void MoveComplete() {
    Quaternion newOrientation = gameManager.mapControl.GetCoverOrientation(gameManager.GetMapCell(transform.position));
    pathComplete.Invoke();
    IsMoving = false;
    Debug.Log("Move Complete");
    transform.rotation = newOrientation;
  }

}
