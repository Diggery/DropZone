using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class UnitControl : MonoBehaviour {

  NavMeshAgent navAgent;

  public bool IsDestroyed {
    get { return false; }
  }

  public void Init() {
    navAgent = GetComponent<NavMeshAgent>();
  }

  void Update() {

  }

  public void MoveTo(Vector3 movePos) {
    navAgent.SetDestination(movePos);
  }
}
