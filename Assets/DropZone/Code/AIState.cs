using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class AIState : MonoBehaviour {

  protected UnitControl unitControl;
  protected MapControl mapControl;
  protected UnitTargeting targeting;
  protected Animator animator;
  protected AIBrain brain;
  protected NavMeshAgent navAgent;
  protected Rigidbody rbody;
  protected bool isActive = false;
  protected float timeInState = 0;
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
    mapControl = MapControl.Instance;
    targeting = GetComponent<UnitTargeting>();
    animator = GetComponent<Animator>();
    brain = GetComponent<AIBrain>();
    navAgent = GetComponent<NavMeshAgent>();
    rbody = GetComponent<Rigidbody>();
    terrainMask = LayerMask.GetMask("Terrain");
  }

  public virtual void StateEnter() {
    Debug.Log(gameObject.name + " is entering " + StateName + " state.");
    isActive = true;
    timeInState = 0;
  }

  public virtual void StateUpdate() {
    timeInState += Time.deltaTime;
  }

  public virtual void StateExit() {
    isActive = false;
  }

  private void OnCollisionEnter(Collision other) {}
  public virtual void OnAttacked(UnitControl attacker) { }
  public virtual void OnEnemySpotted(UnitControl attacker) { }
  public virtual void OnMoveComplete() { }
  public virtual void OnOutOfAmmo(UnitControl me) { 
   brain.Leave();
  }

  protected virtual void CollidedWithEnemy(UnitControl other) { }

}