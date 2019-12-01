using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class UnitState : MonoBehaviour {

  protected UnitControl unitControl;
  protected Animator animator;
  protected UnitBrain brain;
  protected NavMeshAgent navAgent;
  protected Rigidbody rbody;
  protected bool isActive = false;
  public bool IsActive {
    get { return IsActive; }
    set { IsActive = value; }
  }

  protected LayerMask terrainMask;

  protected string stateName = "none";
  public string StateName {
    get { return stateName; }
  }

  public bool AttackNearbyTargets { get; set; }
  public bool TurnTowardsTarget { get; set; }
  public bool MoveToNearbyTargets { get; set; }

  public virtual void StateInit() {
    unitControl = GetComponent<UnitControl>();
    animator = GetComponent<Animator>();
    brain = GetComponent<UnitBrain>();
    navAgent = GetComponent<NavMeshAgent>();
    rbody = GetComponent<Rigidbody>();
    terrainMask = LayerMask.GetMask("Terrain");
  }

  public virtual void StateEnter() {
    isActive = true;
    Debug.Log(gameObject.name + "------>  Entering " + stateName + " state.");
  }

  public virtual void StateUpdate() { }

  public virtual void StateExit() {
    isActive = false;
    Debug.Log(gameObject.name + "------>  Exiting " + stateName + " state.");
  }

private void OnCollisionEnter(Collision other) {
    UnitControl control = other.gameObject.GetComponent<UnitControl>();
  }

  protected virtual void CollidedWithEnemy(UnitControl other) { }

}
