using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIState : MonoBehaviour {

  protected UnitControl unitControl;
  protected UnitTargeting targetControl;
  protected Animator animator;
  protected AIBrain brain;
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
    targetControl = GetComponent<UnitTargeting>();
    animator = GetComponent<Animator>();
    brain = GetComponent<AIBrain>();
    navAgent = GetComponent<NavMeshAgent>();
    rbody = GetComponent<Rigidbody>();
    terrainMask = LayerMask.GetMask("Terrain");
  }

  public virtual void StateEnter() {
    isActive = true;
  }

  public virtual void StateUpdate() { }

  public virtual void StateExit() {
    isActive = false;
  }

  private void OnCollisionEnter(Collision other) {
    UnitControl control = other.gameObject.GetComponent<UnitControl>();
  }

  public virtual void OnAttacked(UnitControl attacker) {
  }

  protected virtual void CollidedWithEnemy(UnitControl other) { }

}
