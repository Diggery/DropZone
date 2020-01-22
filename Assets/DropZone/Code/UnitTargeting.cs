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

  bool readyToFire;
  public bool ReadyToFire {
    get { return readyToFire; }
    set {
      readyToFire = value;
      animator.SetBool("ReadyToFire", readyToFire);
    }
  }

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
      ReadyToFire = false;
      CurrentTarget = ScanForTargets();
      if (CurrentTarget) unitControl.enemySpottedAlert.Invoke(CurrentTarget);
      animator.SetBool("TargetVisible", false);
      animator.SetBool("PeekLeft", false);
      animator.SetBool("PeekRight", false);
      return;
    }

    if (!TargetVisible) {
      UnitControl newTarget = ScanForTargets();
      if (newTarget) CurrentTarget = newTarget;
    }

    if (gameObject.tag.Equals("Enemy")) Debug.DrawLine(CurrentTarget.TargetPoint, unitControl.TargetPoint, Color.red);

    Vector3 targetDir = transform.InverseTransformPoint(CurrentTarget.transform.position).normalized;
    float angleToTarget = Vector3.Angle(targetDir, Vector3.forward) * Mathf.Sign(targetDir.x);
    animator.SetFloat("TargetDirection", angleToTarget);

    bool enemyVisible = TargetVisible;
    bool canPeekEnemyLeft = mapControl.IsPositionPeekableLeft(transform.position, CurrentTarget.transform.position);
    bool canPeekEnemyRight = mapControl.IsPositionPeekableRight(transform.position, CurrentTarget.transform.position);

    animator.SetBool("TargetVisible", enemyVisible);
    animator.SetBool("PeekLeft", unitControl.InCover && !enemyVisible && canPeekEnemyLeft);
    animator.SetBool("PeekRight", unitControl.InCover && !enemyVisible && canPeekEnemyRight);

    // if (enemyVisible || canPeekEnemyLeft || canPeekEnemyRight) {
    //   targetMemory = 25;
    // } else {
    //   targetMemory -= Time.deltaTime;
    //   if (targetMemory < 0) {
    //     CurrentTarget = null;
    //   }
    // }

    ReadyToFire =
      ((readyTimer < 0) &&
        !unitControl.MoveQueued &&
        unitControl.EquippedWeapon &&
        (!unitControl.IsMoving || !unitControl.EquippedWeapon.IsMainWeapon) &&
        unitControl.EquippedWeapon.IsReady &&
        (enemyVisible || canPeekEnemyLeft || canPeekEnemyRight || CheckEnemy));

    if (readyTimer > 0) readyTimer -= Time.deltaTime;

    if (ReadyToFire && IsAiming) {
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
        Debug.DrawLine(enemyTarget.TargetPoint, unitControl.TargetPoint, Color.gray);
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