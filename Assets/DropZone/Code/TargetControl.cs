using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TargetControl : MonoBehaviour {
  public bool showDebug;
  float visualRange = 15;
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

    if (!CurrentTarget || CurrentTarget.IsDead) {
      ReadyToFire = false;
      CurrentTarget = ScanForTargets();
      return;
    }

    Vector3 targetDir = transform.InverseTransformPoint(CurrentTarget.transform.position).normalized;
    float angleToTarget = Vector3.Angle(targetDir, Vector3.forward) * Mathf.Sign(targetDir.x);
    animator.SetFloat("TargetDirection", angleToTarget);

    bool enemyVisible = mapControl.IsPositionVisible(transform.position, CurrentTarget.transform.position);
    bool enemyPeekable = mapControl.IsPositionPeekable(transform.position, CurrentTarget.transform.position);

    animator.SetBool("HasTarget", enemyVisible);

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

    ReadyToFire = !unitControl.IsMoving && EquippedWeapon.IsReady && (readyTimer < 0) && (enemyVisible || enemyPeekable);

    if (readyTimer > 0)readyTimer -= Time.deltaTime;

    if (ReadyToFire && IsAiming) {
      if (LineOfSightBlocked)readyTimer = 1;
      EquippedWeapon.Attack(CurrentTarget);
    }

    //MapTester.DrawVisibleCells(transform.position, mapControl.mapData);
  }

  public UnitControl ScanForTargets() {
    if (showDebug)Debug.Log("Scanning...");
    List<GameObject> possibleTargets = new List<GameObject>();

    foreach (var enemyType in unitControl.Enemies) {
      possibleTargets.AddRange(GameObject.FindGameObjectsWithTag(enemyType));
    }

    float closestDistance = Mathf.Infinity;
    UnitControl closestTarget = null;
    if (showDebug) Debug.Log("Looking through " + possibleTargets.Count + " targets");

    foreach (GameObject target in possibleTargets) {

      UnitControl targetControl = target.GetComponent<UnitControl>();
      if (!targetControl || targetControl.IsDead) {
        continue;
      }
      
      Debug.DrawLine(targetControl.TargetPoint + (Vector3.up * 2), targetControl.TargetPoint, Color.blue);

      float targetDistance = (targetControl.TargetPoint - transform.position).sqrMagnitude;

      if (targetDistance > SqrVisualRange) {
        if (showDebug)Debug.Log("targets is outside of visual range");
        continue;
      }

      if (closestTarget && closestDistance < targetDistance)continue;

      bool enemyVisible = mapControl.IsPositionVisible(transform.position, targetControl.TargetPoint) ||
        mapControl.IsPositionPeekable(transform.position, targetControl.TargetPoint);

      if (enemyVisible) {
        closestTarget = targetControl;
        closestDistance = targetDistance;
        if (showDebug) {
          Debug.DrawLine(transform.position + (Vector3.up * 1.25f), targetControl.TargetPoint + (Vector3.up * 1.25f), Color.green);
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