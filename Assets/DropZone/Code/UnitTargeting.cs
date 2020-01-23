using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitTargeting : MonoBehaviour {
  public bool showDebug;

  float visualRange = 1.0f;
  public float VisualRange {
    get { return visualRange; }
    set {
      visualRange = value;
      SqrVisualRange = visualRange * visualRange;
    }
  }
  float SqrVisualRange { get; set; }

  UnitControl unitControl;
  Animator animator;
  MapControl mapControl;
  LayerMask terrainMask;

  UnitControl currentTarget;
  public UnitControl CurrentTarget {
    get { return currentTarget; }
    set {
      if (currentTarget && !value) Debug.Log("Clearing target");
      currentTarget = value;
    }
  }
  public bool TargetVisible {
    get { 
      if (!CurrentTarget) return false;
      return mapControl.PositionIsVisible(transform.position, CurrentTarget.TargetPoint, true); 
      }
  }
  public UnitControl SecondaryTarget { get; set; }
  float targetMemory = 1.0f;

  public bool IsAiming { get; set; }
  public bool CheckEnemy { get; set; }

  public bool LineOfSightBlocked {
    get {
      return Physics.Linecast(unitControl.EquippedWeapon.MuzzlePos, CurrentTarget.TargetPoint, terrainMask);
    }
  }

  float readyTimer = 1;

  public UnitTargeting Init() {
    SqrVisualRange = VisualRange * VisualRange;
    unitControl = GetComponent<UnitControl>();
    animator = GetComponent<Animator>();
    mapControl = GameManager.Instance.mapControl;
    terrainMask = LayerMask.GetMask("Terrain");
    return this;
  }

  public void Process() {

    if (!CurrentTarget || CurrentTarget.IsDead) {
      CurrentTarget = ScanForTargets();
      if (CurrentTarget) unitControl.enemySpottedAlert.Invoke(CurrentTarget);

      animator.SetBool("TargetVisible", false);
      animator.SetBool("PeekLeft", false);
      animator.SetBool("PeekRight", false);
      animator.SetBool("ReadyToFire", false);
      return;
    }

    if (!TargetVisible) {
      UnitControl newTarget = ScanForTargets();
      if (newTarget) CurrentTarget = newTarget;
    }


    if (gameObject.tag.Equals("Player")) MapTester.DrawVisibleCells(transform.position, mapControl.mapData);

    // if (gameObject.tag.Equals("Player")) Debug.DrawLine(CurrentTarget.TargetPoint, unitControl.TargetPoint, Color.red);

    Vector3 targetDir = transform.InverseTransformPoint(CurrentTarget.transform.position).normalized;
    float angleToTarget = Vector3.Angle(targetDir, Vector3.forward) * Mathf.Sign(targetDir.x);

    bool enemyVisible = TargetVisible;

    bool leftPeekable = mapControl.IsPositionPeekableLeft(transform.position, CurrentTarget.TargetPoint);
    bool rightPeekable = mapControl.IsPositionPeekableRight(transform.position, CurrentTarget.TargetPoint);

    bool peekLeft = (leftPeekable && (angleToTarget <= 0 && angleToTarget >= -75)) ||
      ((leftPeekable && !rightPeekable) && Mathf.Abs(angleToTarget) <= 45);

    bool peekRight = (rightPeekable && (angleToTarget >= 0 && angleToTarget <= 75)) ||
      ((rightPeekable && !leftPeekable) && Mathf.Abs(angleToTarget) <= 45);


    if (enemyVisible) Debug.DrawLine(unitControl.TargetPoint, CurrentTarget.TargetPoint, Color.white);

    animator.SetFloat("TargetDirection", angleToTarget);
    animator.SetBool("TargetVisible", enemyVisible);
    animator.SetBool("PeekLeft", peekLeft);
    animator.SetBool("PeekRight", peekRight);


    // if (enemyVisible || canPeekEnemyLeft || canPeekEnemyRight) {
    //   targetMemory = 25;
    // } else {
    //   targetMemory -= Time.deltaTime;
    //   if (targetMemory < 0) {
    //     CurrentTarget = null;
    //   }
    // }

    bool readyToFire =
      ((readyTimer < 0) &&
        !unitControl.MoveQueued &&
        unitControl.EquippedWeapon &&
        (!unitControl.IsMoving || !unitControl.EquippedWeapon.IsMainWeapon) &&
        unitControl.EquippedWeapon.IsReady &&
        (enemyVisible || CheckEnemy));

    animator.SetBool("ReadyToFire", readyToFire);


    if (readyTimer > 0) readyTimer -= Time.deltaTime;

    if (readyToFire && IsAiming) {
      if (LineOfSightBlocked) readyTimer = 1;
      unitControl.EquippedWeapon.Attack(CurrentTarget);
    }
  }

  public UnitControl ScanForTargets() {
    if (showDebug) Debug.Log("Scanning...");
    List<GameObject> possibleTargets = new List<GameObject>();

    foreach (var enemyType in unitControl.Enemies) {
      possibleTargets.AddRange(GameObject.FindGameObjectsWithTag(enemyType));
    }

    float closestDistance = Mathf.Infinity;
    UnitControl closestTarget = null;
    if (showDebug) Debug.Log("Looking through " + possibleTargets.Count + " targets");

    foreach (GameObject target in possibleTargets) {

      UnitControl enemyTarget = target.GetComponent<UnitControl>();
      if (!enemyTarget || enemyTarget.IsDead) {
        continue;
      }

      float targetDistance = (enemyTarget.TargetPoint - transform.position).sqrMagnitude;

      if (targetDistance > SqrVisualRange) {
        if (showDebug) Debug.Log("targets is outside of visual range");
       // Debug.DrawLine(enemyTarget.TargetPoint, unitControl.TargetPoint, Color.gray);
        continue;
      }

      if (closestTarget && closestDistance < targetDistance) continue;

      bool enemyVisible = mapControl.PositionIsVisible(transform.position, enemyTarget.TargetPoint) ||
        mapControl.IsPositionPeekable(transform.position, enemyTarget.TargetPoint);

      if (enemyVisible) {
        closestTarget = enemyTarget;
        closestDistance = targetDistance;
      }
    }
    return closestTarget;
  }

  public void TargetHit() {

  }

  public void TargetMiss() {

  }
}