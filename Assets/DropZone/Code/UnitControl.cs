﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class UnitControl : MonoBehaviour {

  string unitType;
  public string UnitType {
    get { return unitType; }
    set {
      unitType = value;
      gameObject.name = "Unit-" + unitType + "_" + Random.value;
    }
  }

  GameManager gameManager;
  public bool autoInit;
  NavMeshAgent navAgent;
  Animator animator;
  public RuntimeAnimatorController mainWeaponController;
  public RuntimeAnimatorController sideArmController;

  UnitIK unitIK;
  UnitTargeting targetControl;

  public Weapon EquippedWeapon { get; set; }
  public Weapon MainWeapon { get; set; }
  public Weapon SideArm { get; set; }

  bool switchingToSideArm = false;
  bool switchingToMainWeapon = false;

  Interpolator.LerpVector LerpToPose = new Interpolator.LerpVector();
  Interpolator currentInterpolation;

  public bool HasTarget {
    get { return targetControl.CurrentTarget; }
  }
  public Vector3 CurrentTargetPos {
    get { return targetControl.CurrentTarget.TargetPoint; }
  }
  public Vector3 TargetPoint {
    get { return attachPoints["TargetPoint"].position; }
  }

  public Vector3 OccupyingPosition { get; set; }

  public List<string> Enemies { get; } = new List<string>();

  Dictionary<string, Transform> attachPoints = new Dictionary<string, Transform>();

  float surpiseCoolDown = 1.0f;

  bool isMoving;
  public bool IsMoving {
    get {
      return isMoving;
    }
    set {
      isMoving = value;
      animator.SetBool("IsMoving", isMoving);
      navAgent.isStopped = !value;
    }
  }

  bool inMovingState;
  public bool InMovingState {
    get {
      return isMoving;
    }
    set {
      inMovingState = value;
      if (inMovingState) {
        navAgent.SetDestination(moveDestination.Value);
        moveDestination = null;
      }
    }
  }

  bool inCover = false;
  public bool InCover {
    get {
      return inCover;
    }
    set {
      inCover = value;
      animator.SetBool("InCover", inCover);
    }
  }

  public bool IsSelected { get; set; } = false;

  [HideInInspector]
  public UnityEvent pathComplete = new UnityEvent();

  public class EnemyAlert : UnityEvent<UnitControl> { }
  public EnemyAlert attackedAlert = new EnemyAlert();
  public EnemyAlert enemySpottedAlert = new EnemyAlert();
  public EnemyAlert damageTaken = new EnemyAlert();

  public class NeedEquipment : UnityEvent<HelperDrone.DroneTask, UnitControl> { }
  public NeedEquipment needsEquipment = new NeedEquipment();

  public bool IsPathComplete {
    get {
      return !IsPatrolling && navAgent.hasPath && Vector3.Distance(navAgent.destination, transform.position) <= navAgent.stoppingDistance;
    }
  }

  public float DistanceToDesitination {
    get { return Vector3.Distance(navAgent.destination, navAgent.transform.position); }
  }

  public NavMeshPath CurrentPath {
    get { return navAgent.path; }
  }

  public float MoveSpeed { get; set; }
  public float MaxHits { get; set; }

  float hitpoints = 10;

  public bool IsInjured {
    get { return hitpoints < 3; }
  }

  public bool IsDead {
    get { return hitpoints < 0; }
  }

  Vector3? moveDestination;
  public bool MoveQueued {
    get { return moveDestination != null; }
  }
  public bool IsPatrolling { get; set; }

  void Start() {
    if (autoInit) Init(gameObject.name);
  }

  public UnitControl Init(string unitType) {
    UnitType = unitType;
    gameManager = GameManager.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 100);
    animator = GetComponent<Animator>();
    unitIK = GetComponent<UnitIK>().Init();
    targetControl = gameObject.AddComponent<UnitTargeting>().Init();
    gameObject.GetComponent<CharacterSetup>().Init();
    LerpToPose.onTickVector = LerpPoseTick;
    LerpToPose.onFinish = LerpPoseFinished;
    LerpToPose.duration = 0.5f;
    OccupyingPosition = transform.position;

    SkeletonConfig skelConfig = GetComponent<SkeletonConfig>();
    if (skelConfig) skelConfig.Init();
    return this;
  }

  void Update() {

    // suprise timer for ducking incoming fire
    if (surpiseCoolDown > 0) {
      surpiseCoolDown -= Time.deltaTime;
      if (IsMoving) {
        // dive if we are close and still suprised
        LayerMask terrainMask = LayerMask.GetMask("Terrain");

        //bool wayIsClear = !IsDead && !Physics.Linecast(transform.position + Vector3.up, navAgent.destination + Vector3.up, terrainMask);
        //if (wayIsClear && IsMoving && (DistanceToDesitination < 2.5f && DistanceToDesitination > 2.0f)) animator.SetTrigger("Dive");
      }
    }

    //check for if we are done moving
    if (moveDestination == null && InMovingState && IsPathComplete) MoveComplete();

    // dont target anything if we are incapacitated
    if (!IsDead) targetControl.Process();
  }

  public void SetStats(float maxHits, float visualRange, float speed) {
    targetControl.VisualRange = visualRange;
    this.MaxHits = maxHits;
    this.hitpoints = maxHits;
    this.MoveSpeed = speed;
    navAgent.speed = MoveSpeed;
  }

  public void MoveTo(Vector3 movePos) {
    animator.ResetTrigger("UnderFire");
    animator.ResetTrigger("Dive");

    movePos = gameManager.mapControl.GetCellPos(movePos);

    if (Vector3.Distance(transform.position, movePos) < 0.5f) return;

    if (inMovingState) {
      navAgent.SetDestination(movePos);
    } else {
      moveDestination = movePos;
    }

    OccupyingPosition = movePos;
    IsMoving = true;
  }

  public void MoveComplete() {

    MapData.MapCell mapCell = gameManager.mapControl.GetMapCell(navAgent.destination);

    InCover = mapCell.HasCover;

    IsMoving = false;

    Vector4 startValue = transform.position;
    float currentHeading = Vector3.Angle(transform.forward, Vector3.forward) * Mathf.Sign(transform.forward.x);
    startValue.w = currentHeading;
    LerpToPose.startValue = startValue;
    Vector4 endValue = mapCell.mapPos;
    endValue.y = startValue.y;
    endValue.w = InCover ? gameManager.mapControl.GetCoverHeading(mapCell) : currentHeading;
    LerpToPose.endValue = endValue;
    currentInterpolation = Interpolator.Start(LerpToPose, gameObject.name + " is moving to cover");

    pathComplete.Invoke();
  }

  public void AddWeapon(Weapon weapon) {
    if (weapon.IsMainWeapon) {
      if (MainWeapon != null) MainWeapon.Drop();
      MainWeapon = weapon;
      weapon.Init(this, animator.GetBoneTransform(HumanBodyBones.Chest), attachPoints["RightHand"], attachPoints["Backpack"]);
      weapon.Equip();
      animator.runtimeAnimatorController = mainWeaponController;
    } else {
      if (SideArm != null) SideArm.Drop();
      SideArm = weapon;
      weapon.Init(this, animator.GetBoneTransform(HumanBodyBones.Chest), attachPoints["RightHand"], attachPoints["LeftHip"]);
      if (!EquippedWeapon) {
        weapon.Equip();
        animator.runtimeAnimatorController = sideArmController;
      } else {
        weapon.Stow();
      }
    }
  }

  public void DrawMainWeapon() {
    if (switchingToMainWeapon || switchingToSideArm) return;
    if (!MainWeapon || MainWeapon == EquippedWeapon) return;
    if (EquippedWeapon) EquippedWeapon.Disabled = true;
    Reload();
    switchingToMainWeapon = true;
  }

  public void DrawSideArm() {
    if (switchingToMainWeapon || switchingToSideArm) return;
    if (!SideArm || SideArm == EquippedWeapon) return;
    if (EquippedWeapon) EquippedWeapon.Disabled = true;
    Reload();
    switchingToSideArm = true;
  }

  public void SetAttachPoint(string name, Transform point) {
    if (!attachPoints.ContainsKey(name))
      attachPoints.Add(name, point);
  }

  public void AttackedBy(UnitControl attacker) {
    if (surpiseCoolDown < 0) {
      animator.SetTrigger("UnderFire");
      surpiseCoolDown = 1.0f;
    }
    attackedAlert.Invoke(attacker);
  }

  public void TakeDamage(DamageInfo info) {
     hitpoints -= info.damageAmount;
    if (hitpoints < 0) {
      Incapacitate(info);
    }
    if (!IsMoving && !InCover) {
      animator.SetInteger("AttackDirection", info.GetOrthagonalDirection(transform));
      animator.SetTrigger("Hit");
    }
    damageTaken.Invoke(info.attacker);
  }

  public void TakeHealing(float amount) {
    Debug.Log("NICE: " + amount + " points of healing");
    hitpoints = Mathf.Min(MaxHits, hitpoints + amount);
  }

  public void Incapacitate(DamageInfo info = null) {
    hitpoints = -1;
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    Vector3 direction = info == null ? Vector3.up : info.GetDamageDirection(transform);
    skeleton.SwitchToRagdoll(direction);
    navAgent.enabled = false;
    if (EquippedWeapon) {
      EquippedWeapon.Drop();
      EquippedWeapon = null;
    }
  }

  public void OutOfAmmo() {
    Debug.Log(gameObject.name + " is out of ammo");
    if (SideArm) DrawSideArm();
    HelperDrone.DroneTask task = new HelperDrone.DroneTask("Ammo", transform.position, this);
    needsEquipment.Invoke(task, this);
  }

  public void Revive() {
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    skeleton.SwitchToAnimator();
    navAgent.enabled = true;
  }

  public void Reload() {
    animator.SetTrigger("Reload");
  }

  public void ReloadComplete() {
    if (switchingToMainWeapon || switchingToSideArm) {
      if (EquippedWeapon) EquippedWeapon.Stow();
      if (switchingToMainWeapon) {
        MainWeapon.Equip();
        animator.runtimeAnimatorController = mainWeaponController;
      }
      if (switchingToSideArm) {
        SideArm.Equip();
        animator.runtimeAnimatorController = sideArmController;
      }
      switchingToMainWeapon = switchingToSideArm = false;
      return;
    }
    EquippedWeapon.Reloaded();
  }

  void LerpPoseTick(Vector4 amount) {
    transform.position = amount;
    transform.rotation = Quaternion.AngleAxis(amount.w, Vector3.up);
  }

  void LerpPoseFinished(bool reverse) { }

  public void AnimEvent(string eventName) {
    switch (eventName) {
      case "ReloadComplete":
        ReloadComplete();
        break;
      default:
        Debug.Log("Don't know what to do with a " + eventName + " event");
        break;
    }
  }

  public void Remove() {
    Debug.Log("Removing Unit");
    if (currentInterpolation) currentInterpolation.Cancel();
    if (MainWeapon) Destroy(MainWeapon.gameObject);
    if (SideArm) Destroy(SideArm.gameObject);
    Destroy(gameObject);
  }
}