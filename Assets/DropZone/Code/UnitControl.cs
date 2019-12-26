using System.Collections;
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
      gameObject.name = "Unit-" + unitType;
    }
  }

  GameManager gameManager;
  public bool autoInit;
  NavMeshAgent navAgent;
  Animator animator;
  UnitIK unitIK;

  TargetControl targetControl;
  Interpolator.LerpVector LerpToPose = new Interpolator.LerpVector();

  public bool HasTarget {
    get { return targetControl.CurrentTarget; }
  }
  public Vector3 CurrentTargetPos {
    get { return targetControl.CurrentTarget.TargetPoint; }
  }
  public Vector3 TargetPoint {
    get { return attachPoints["TargetPoint"].position; }
  }

  List<string> enemies = new List<string>();
  public List<string> Enemies {
    get {
      return enemies;
    }
  }

  Dictionary<string, Transform> attachPoints = new Dictionary<string, Transform>();

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
        if (moveDestination != null) navAgent.SetDestination(moveDestination.Value);
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

  bool isSelected = false;
  public bool IsSelected {
    get { return isSelected; }
    set {
      isSelected = value;
    }
  }

  [HideInInspector]
  public UnityEvent pathComplete = new UnityEvent();

  public bool IsPathComplete {
    get {
      return Vector3.Distance(navAgent.destination, navAgent.transform.position) <= navAgent.stoppingDistance;
    }
  }

  float maxHits = 5;
  float hits = 5;
  public bool IsDead {
    get { return hits < 0; }
  }

  Vector3? moveDestination;

  void Start() {
    if (autoInit)Init(gameObject.name);
  }

  public UnitControl Init(string unitType) {
    UnitType = unitType;
    gameManager = GameManager.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 100);
    animator = GetComponent<Animator>();
    unitIK = GetComponent<UnitIK>().Init();
    targetControl = gameObject.AddComponent<TargetControl>();
    gameObject.GetComponent<CharacterSetup>().Init();
    LerpToPose.onTickVector = LerpPoseTick;
    LerpToPose.onFinish = LerpPoseFinished;
    LerpToPose.duration = 0.5f;
    SkeletonConfig skelConfig = GetComponent<SkeletonConfig>();
    if (skelConfig)skelConfig.Init();
    return this;
  }

  void Update() {
    if (moveDestination == null && InMovingState && IsPathComplete) {
      MoveComplete();
    }
  }

  public void MoveTo(Vector3 movePos) {
    Debug.Log("Moving to " + movePos);
    animator.SetBool("LeftOpen", false);
    animator.SetBool("RightOpen", false);

    if (inMovingState) {
      navAgent.SetDestination(movePos);
    } else {
      moveDestination = movePos;
    }

    IsMoving = true;
  }

  public void MoveComplete() {

    MapData.MapCell mapCell = gameManager.GetMapCell(transform.position);

    pathComplete.Invoke();
    InCover = mapCell.HasCover;
    if (InCover) {
      animator.SetBool("LeftOpen", mapCell.CanPeekLeft);
      animator.SetBool("RightOpen", mapCell.CanPeekRight);
    }

    IsMoving = false;

    Vector4 startValue = transform.position;
    float currentHeading = Vector3.Angle(transform.forward, Vector3.forward) * Mathf.Sign(transform.forward.x);
    startValue.w = currentHeading;
    LerpToPose.startValue = startValue;
    Vector4 endValue = mapCell.mapPos;
    endValue.y = startValue.y;
    endValue.w = gameManager.mapControl.GetCoverHeading(mapCell);
    LerpToPose.endValue = endValue;
    Interpolator.Start(LerpToPose);
  }

  public bool EquipMainWeapon(Weapon weapon) {
    weapon.Init(this, animator.GetBoneTransform(HumanBodyBones.Chest), attachPoints["RightHand"]);
    unitIK.EquippedWeapon = weapon;
    targetControl.EquippedWeapon = weapon;
    return true;
  }

  public void SetAttachPoint(string name, Transform point) {
    if (!attachPoints.ContainsKey(name))
      attachPoints.Add(name, point);
  }

  public void TakeDamage(DamageInfo info) {
    Debug.Log("OUCH: " + info.damageAmount + " points of damage");
    hits -= info.damageAmount;
    if (hits < 0) {
      Die(info);
    }
  }

  public void Die(DamageInfo info = null) {
    hits = -1;
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    Vector3 direction = info == null ? Vector3.up : info.GetDamageDirection(transform);
    skeleton.SwitchToRagdoll(direction);
  }

  public void Revive() {
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    skeleton.SwitchToAnimator();
  }

  public void Reload() {
    animator.SetTrigger("Reload");
  }

  void LerpPoseTick(Vector4 amount) {
    transform.position = amount;
    transform.rotation = Quaternion.AngleAxis(amount.w, Vector3.up);
  }

  void LerpPoseFinished(bool reverse) { }
}