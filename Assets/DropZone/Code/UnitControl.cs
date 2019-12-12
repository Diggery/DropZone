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

  public bool HasTarget {
    get { return targetControl.CurrentTarget; }
  }
  public Vector3 CurrentTargetPos {
    get { return targetControl.CurrentTarget.transform.position; }
  }

  Dictionary<string, Transform> attachPoints = new Dictionary<string, Transform>();

  bool isMoving;
  bool IsMoving {
    get {
      return isMoving;
    }
    set {
      isMoving = value;
      animator.SetBool("IsMoving", isMoving);
    }
  }

  bool inCover = false;
  bool InCover {
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
  }

  void Update() {
    if (IsMoving && IsPathComplete) {
      MoveComplete();
    }
  }

  public void MoveTo(Vector3 movePos) {
    navAgent.SetDestination(movePos);
    IsMoving = true;
  }

  public void MoveComplete() {
    MapData.MapCell mapCell = gameManager.GetMapCell(transform.position);
    Quaternion newOrientation = gameManager.mapControl.GetCoverOrientation(mapCell);
    pathComplete.Invoke();
    InCover = mapCell.HasCover;
    IsMoving = false;
    Debug.Log("Move Complete, in cover:  " + InCover);
    transform.rotation = newOrientation;
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
}