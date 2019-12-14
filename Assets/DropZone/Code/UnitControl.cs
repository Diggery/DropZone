using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class UnitControl : MonoBehaviour {

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
    get { return targetControl.CurrentTarget.transform.position; }
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
      Debug.Log(gameObject.name + " is Selected");
      isSelected = value;
    }
  }

  [HideInInspector]
  public UnityEvent pathComplete = new UnityEvent();

  public bool IsPathComplete {
    get {
      if (Vector3.Distance(navAgent.destination, navAgent.transform.position) <= navAgent.stoppingDistance) {
        return (!navAgent.hasPath || navAgent.velocity.sqrMagnitude == 0f);
      }
      return false;
    }
  }

  public bool IsDestroyed {
    get { return false; }
  }

  void Start() {
    if (autoInit)Init();
  }

  public void Init() {
    gameManager = GameManager.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 100);
    animator = GetComponent<Animator>();
    unitIK = GetComponent<UnitIK>().Init();
    targetControl = gameObject.AddComponent<TargetControl>();
    gameObject.GetComponent<CharacterSetup>().Init();
    LerpToPose.onTickVector = LerpPoseTick;
    LerpToPose.duration = 0.5f;
  }

  void Update() {
    if (IsMoving && IsPathComplete) {
      MoveComplete();
    }
  }

  public void MoveTo(Vector3 movePos) {
    animator.SetBool("LeftOpen", false);
    animator.SetBool("RightOpen", false);
    navAgent.SetDestination(movePos);
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
    weapon.Init(animator.GetBoneTransform(HumanBodyBones.Chest), attachPoints["RightHand"]);
    unitIK.EquippedWeapon = weapon;
    return true;
  }

  public void SetAttachPoint(string name, Transform point) {
    if (!attachPoints.ContainsKey(name))
      attachPoints.Add(name, point);
  }

  void LerpPoseTick(Vector4 amount) {
    Debug.Log("Lerpsing to " + amount);
    transform.position = amount;
    transform.rotation = Quaternion.AngleAxis(amount.w, Vector3.up);

  }
}