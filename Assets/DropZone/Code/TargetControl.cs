﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TargetControl : MonoBehaviour {
  public bool showDebug;
  float visualRange = 10;
  float SqrVisualRange { get; set; }

  UnitControl unitControl;
  Animator animator;
  MapControl mapControl;
  LayerMask terrainMask;

  public UnitControl CurrentTarget { get; set; }
  float targetMemory = 1.0f;

  public Weapon EquippedWeapon { get; set; }
  public bool IsAiming { get; set; }

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
      return Physics.Linecast(EquippedWeapon.MuzzlePos, CurrentTarget.TargetPoint, terrainMask); 
    }
  }

  float readyTimer = 1;

void Start() {
    SqrVisualRange = visualRange * visualRange;
    unitControl = GetComponent<UnitControl>();
    animator = GetComponent<Animator>();
    mapControl = GameManager.Instance.mapControl;
    terrainMask = LayerMask.GetMask("Terrain");
  }

  void Update() {
    if (!CurrentTarget) {
      CurrentTarget = ScanForTargets();
      return;
    }

    Vector3 targetDir = transform.InverseTransformPoint(CurrentTarget.transform.position).normalized;
    float angleToTarget = Vector3.Angle(targetDir, Vector3.forward) * Mathf.Sign(targetDir.x);
    animator.SetFloat("TargetDirection", angleToTarget);
    bool enemyVisible = mapControl.IsPositionVisible(transform.position, CurrentTarget.transform.position);
    bool enemyPeekable = mapControl.IsPositionPeekable(transform.position, CurrentTarget.transform.position);

    animator.SetBool("EnemyVisible", enemyVisible);

    if (unitControl.InCover) {
      animator.SetBool("UsePeeking", !enemyVisible && enemyPeekable);
    }


    if (enemyVisible || enemyPeekable) {
      targetMemory = 1;
    } else {
      targetMemory -= Time.deltaTime;
      if (targetMemory < 0) {
        CurrentTarget = null;
      }
    }

    if (readyTimer > 0) readyTimer -= Time.deltaTime;

    ReadyToFire = EquippedWeapon.IsReady && (readyTimer < 0);

    if (ReadyToFire && IsAiming) {
      if (LineOfSightBlocked) readyTimer = 1;
      EquippedWeapon.Attack(CurrentTarget);
    }

    MapTester.DrawVisibleCells(transform.position, mapControl.mapData);
  }

  public UnitControl ScanForTargets() {
    if (showDebug) Debug.Log("Scanning...");

    GameObject[] possibleTargets = GameObject.FindGameObjectsWithTag("Enemy");
    float closestDistance = Mathf.Infinity;
    UnitControl closestTarget = null;
    if (showDebug) Debug.Log("Looking through " + possibleTargets.Length + " targets");

    foreach (GameObject target in possibleTargets) {

      UnitControl targetControl = target.GetComponent<UnitControl>();
      if (!targetControl || targetControl.IsDestroyed) {
        Debug.Log("targets has no control, or is destyroyed");
        continue;
      }

      float targetDistance = (target.transform.position - transform.position).sqrMagnitude;

      if (targetDistance > SqrVisualRange) {
        if (showDebug) Debug.Log("targets is outside of visual range");
        continue;
      }

      if (closestTarget && closestDistance < targetDistance) continue;

      Ray ray = new Ray(
        transform.position + (Vector3.up * 1.25f),
        (target.transform.position - transform.position).normalized
      );
      if (!Physics.Linecast(transform.position + (Vector3.up * 1.25f), target.transform.position + (Vector3.up * 1.25f), out RaycastHit hit, terrainMask)) {
        closestTarget = targetControl;
        closestDistance = targetDistance;
        if (showDebug) {
          Debug.DrawLine(transform.position + (Vector3.up * 1.25f), target.transform.position + (Vector3.up * 1.25f), Color.green);

        }
      } else {
        if (showDebug) {
          Debug.Log("targets is blocked by " + hit.transform.name);
          Debug.DrawLine(transform.position + (Vector3.up * 1.25f), target.transform.position + (Vector3.up * 1.25f), Color.red);
        }
      }
    }
    return closestTarget;
  }

  public void TargetHit() {

  }

  public void TargetMiss() {

  }
}