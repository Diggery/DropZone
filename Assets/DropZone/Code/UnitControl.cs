using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class UnitControl : MonoBehaviour {

  public bool autoInit;
  NavMeshAgent navAgent;
  Renderer body;

  bool IsMoving { get; set; }

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
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 100);

    body = transform.Find("Body").GetComponent<Renderer>();
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
    pathComplete.Invoke();
    IsMoving = false;
  }

  public void Select(bool setting) {

  }

  public void SetColor(string state) {
    switch (state) {
      case "Idle":
        body.material.color = Color.gray;
        break;
      case "Moving":
        body.material.color = Color.blue;
        break;
      case "Attacking":
        body.material.color = Color.red;
        break;
    }
  }
}
