﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitTargeting : MonoBehaviour {
  public bool showDebug;
  UnitControl unitControl;
  Animator animator;
  MapControl mapControl;
  LayerMask terrainMask;

  float visualRange = 1.0f;
  public float VisualRange {
    get { return visualRange; }
    set {
      visualRange = value;
      SqrVisualRange = visualRange * visualRange;
    }
  }
  float SqrVisualRange { get; set; }

  float meleeRange = 1.75f;
  public float MeleeRange {
    get { return meleeRange; }
    set {
      meleeRange = value;
      SqrMeleeRange = meleeRange * meleeRange;
    }
  }
  float SqrMeleeRange { get; set; }

  public bool InMeleeRange {
    get {
      if (!CurrentTarget) return false;
      return (CurrentTarget.TargetPoint - unitControl.TargetPoint).sqrMagnitude < SqrMeleeRange; 
    }
  }

  bool inMelee = false;
  bool InMelee {
    get {
      return inMelee;
    }
    set {
      if (unitControl.IsMoving) {
        inMelee = false;
        return;
      }
      if (value && !inMelee) animator.SetTrigger("UseMelee");
      if (!value && inMelee) {
        unitControl.Melee.Stow();
        unitControl.MoveComplete();
      }
      inMelee = value;
      animator.SetBool("InMeleeRange", inMelee);
    }
  }


  public UnitControl CurrentTarget { get; set; }
  public bool TargetVisible {
    get {
      if (!CurrentTarget) return false;
      return mapControl.PositionIsVisible(transform.position, CurrentTarget.TargetPoint, true);
    }
  }
  public UnitControl SecondaryTarget { get; set; }

  public bool IsAiming { get; set; }
  public bool CheckOnTarget {
    get {
      return checkOnTargetDuration > 0 && mapControl.IsPositionPeekableEitherWay(CurrentTarget.TargetPoint, unitControl.TargetPoint);
    }
  }
  public float checkOnTargetCoolDown = 5;
  public float checkOnTargetDuration = 5;

  public bool LineOfSightBlocked {
    get {
      return Physics.Linecast(unitControl.EquippedWeapon.MuzzlePos, CurrentTarget.TargetPoint, terrainMask);
    }
  }

  float targetIsBlockedTimer = 1;

  public UnitTargeting Init() {
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
      InMelee = false;
      return;
    }
    bool targetVisible = TargetVisible;
    UnitControl bestTarget = ScanForTargets();
    if ((!targetVisible && bestTarget)) CurrentTarget = bestTarget;
    if (bestTarget && ((CurrentTarget.transform.position - unitControl.TargetPoint).sqrMagnitude < SqrVisualRange * 0.5f)) {
      CurrentTarget = bestTarget;
    }

    //if (gameObject.tag.Equals("Player")) MapTester.DrawVisibleCells(transform.position, mapControl.mapData);
    // if (gameObject.tag.Equals("Player")) Debug.DrawLine(CurrentTarget.TargetPoint, unitControl.TargetPoint, Color.red);
    //if (gameObject.tag.Equals("Player") && mapControl.IsPositionPeekableEitherWay(CurrentTarget.TargetPoint, unitControl.TargetPoint)) 
    //  Debug.DrawLine(CurrentTarget.TargetPoint, unitControl.TargetPoint, Color.magenta);

    if (!targetVisible) {
      checkOnTargetCoolDown -= Time.deltaTime;
      if (checkOnTargetCoolDown < 0 && checkOnTargetDuration < 0) {
        checkOnTargetDuration = (Random.value * 3f) * 2.0f;
      }
      if (checkOnTargetDuration > 0) {
        checkOnTargetDuration -= Time.deltaTime;
      }
    } else {
      checkOnTargetCoolDown = (Random.value * 5f) + 3;
      checkOnTargetDuration = -1;
    }
    bool shouldCheck = CheckOnTarget;

    Vector3 targetDir = transform.InverseTransformPoint(CurrentTarget.transform.position).normalized;
    float angleToTarget = Vector3.Angle(targetDir, Vector3.forward) * Mathf.Sign(targetDir.x);

    bool leftPeekable = mapControl.IsPositionPeekableLeft(transform.position, CurrentTarget.TargetPoint);
    bool rightPeekable = mapControl.IsPositionPeekableRight(transform.position, CurrentTarget.TargetPoint);

    bool peekLeft = (leftPeekable && (angleToTarget <= 0 && angleToTarget >= -75)) ||
      (leftPeekable && Mathf.Abs(angleToTarget) <= 65) ||
      shouldCheck && mapControl.LeftIsOpen(transform.position) && Mathf.Abs(angleToTarget) <= 65;

    bool peekRight = (rightPeekable && (angleToTarget >= 0 && angleToTarget <= 75)) ||
      (rightPeekable && Mathf.Abs(angleToTarget) <= 65) ||
      shouldCheck && mapControl.RightIsOpen(transform.position) && Mathf.Abs(angleToTarget) <= 65;

    InMelee = targetVisible && InMeleeRange;
    if (InMelee) {
      float headingAngle = Utils.HeadingToTarget(unitControl.TargetPoint, CurrentTarget.TargetPoint);
      transform.rotation =
        Quaternion.Lerp(transform.rotation, Quaternion.AngleAxis(headingAngle, Vector3.up), Time.deltaTime * 8);
    }

    animator.SetFloat("TargetDirection", angleToTarget);
    animator.SetBool("TargetVisible", targetVisible);
    animator.SetBool("PeekLeft", peekLeft);
    animator.SetBool("PeekRight", peekRight);
    bool readyToFire =
      ((targetIsBlockedTimer < 0) &&
        !unitControl.MoveQueued &&
        unitControl.EquippedWeapon &&
        (!unitControl.IsMoving || unitControl.EquippedWeapon.type != Weapon.WeaponType.Main) &&
        unitControl.EquippedWeapon.IsReady &&
        (targetVisible || shouldCheck)) &&
        !InMelee;

    animator.SetBool("ReadyToFire", readyToFire);

    if (targetIsBlockedTimer > 0) targetIsBlockedTimer -= Time.deltaTime;

    if (readyToFire && IsAiming) {
      if (LineOfSightBlocked) {
        targetIsBlockedTimer = 1;
        return;
      }
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

  public void MeleeAttack() {
    DamageInfo damageInfo = new DamageInfo(unitControl.Melee.damage, DamageType.Puncture, unitControl);
    CurrentTarget.TakeDamage(damageInfo);
  }

  public void TargetHit() {

  }

  public void TargetMiss() {

  }
}