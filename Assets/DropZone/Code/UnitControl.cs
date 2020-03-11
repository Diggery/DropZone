using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Events;

public class UnitControl : MonoBehaviour {

  string unitName;
  public string UnitName {
    get { return unitName; }
    set {
      unitName = value;
      gameObject.name = "Unit-" + unitName + "_" + Random.value;
    }
  }

  GameManager gameManager;
  public bool autoInit;
  NavMeshAgent navAgent;
  Animator animator;
  EntryCharacter characterEntry;
  public List<string> inventory { get { return characterEntry.inventory; } }

  public RuntimeAnimatorController mainWeaponController;
  public RuntimeAnimatorController sideArmController;

  UnitIK unitIK;
  UnitTargeting targeting;

  public UIPlayerPanel PlayerPanel { get; set; }
  public RangedWeapon EquippedWeapon { get; set; }
  public RangedWeapon MainWeapon { get; set; }
  public RangedWeapon SideArm { get; set; }
  public MeleeWeapon Melee { get; set; }

  bool switchingToSideArm = false;
  bool switchingToMainWeapon = false;

  Interpolator.LerpVector LerpToPose = new Interpolator.LerpVector();
  Interpolator currentInterpolation;

  public Interactable CurrentInteractable { get; set; }



  bool isInteracting = false;
  public bool IsInteracting {
    get { return isInteracting; }
    set {
      isInteracting = value;

      if (isInteracting) {
        animator.SetTrigger("Interact");
        if (CurrentInteractable)
          FacePosition(CurrentInteractable.transform.position);
      } else {
        if (CurrentInteractable) {
          CurrentInteractable.FinishInteracting(this);
        }
      }
      animator.SetBool("IsInteracting", isInteracting);
    }
  }

  public bool HasMedkit {
    get {
      foreach (var item in inventory)
        if (item.Contains("Medkit")) return true;
      return false;
    }
  }

  public bool HasTarget {
    get { return targeting.CurrentTarget; }
  }
  public Vector3 CurrentTargetPos {
    get { return targeting.CurrentTarget.TargetPoint; }
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
      if (navAgent.isActiveAndEnabled) navAgent.isStopped = !value;
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
        if (moveDestination.HasValue)
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
      navAgent.avoidancePriority =
        inCover ? Random.Range(0, 75) : 100;
    }
  }

  public bool IsSelected { get; set; } = false;

  [HideInInspector]
  public UnityEvent pathComplete = new UnityEvent();
  public class EnemyAlert : UnityEvent<UnitControl> { }
  public EnemyAlert attackedAlert = new EnemyAlert();
  public EnemyAlert enemySpottedAlert = new EnemyAlert();
  public EnemyAlert damageTaken = new EnemyAlert();
  public EnemyAlert outOfAmmo = new EnemyAlert();
  public EnemyAlert knockedOut = new EnemyAlert();
  public EnemyAlert removed = new EnemyAlert();

  public class NeedEquipment : UnityEvent<DroneTask, UnitControl> { }
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
  public float MaxArmor { get; set; }

  float hitPoints = 10;
  float armorPoints = 10;

  bool armorRegen = true;
  float armorCoolDown;
  float armorRegenTime = 5.0f;
  float armorRegenSpeed = 1.0f;

  public bool IgnoreCover { get; set; }
  public bool Reckless { get; set; }

  public bool IsInjured {
    get { return hitPoints < 3; }
  }

  public bool IsDead { get; set; }

  Vector3? moveDestination;
  public bool MoveQueued {
    get { return moveDestination != null; }
  }
  public bool IsPatrolling { get; set; }

  void Start() {
    if (autoInit) Init(gameObject.name);
  }

  public UnitControl Init(string newUnitName) {
    UnitName = newUnitName;
    gameManager = GameManager.Instance;
    navAgent = GetComponent<NavMeshAgent>();
    navAgent.avoidancePriority = Random.Range(0, 50);
    animator = GetComponent<Animator>();
    unitIK = gameObject.AddComponent<UnitIK>().Init();
    targeting = gameObject.AddComponent<UnitTargeting>().Init();
    gameObject.GetComponent<CharacterSetup>().Init();
    LerpToPose.onTickVector = LerpPoseTick;
    LerpToPose.onFinish = LerpPoseFinished;
    LerpToPose.duration = 0.5f;
    OccupyingPosition = transform.position;

    SkeletonConfig skelConfig = GetComponent<SkeletonConfig>();
    if (skelConfig) {
      skelConfig.Init();
      Destroy(skelConfig);
    }
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
    if (!IsDead) targeting.Process();

    if (animator) animator.SetFloat("Random", Random.value);

    if (armorCoolDown > 0) {
      armorCoolDown -= Time.deltaTime;
    }
    if (armorRegen && armorPoints < Mathf.Min(MaxArmor, hitPoints) && armorCoolDown < 0)
      RepairArmor(Time.deltaTime * armorRegenSpeed);
  }

  public void SetStats(EntryCharacter entry) {
    characterEntry = entry;
    targeting.VisualRange = entry.visualRange;
    targeting.MeleeRange = 1.75f;
    MaxHits = entry.hits;
    hitPoints = MaxHits;
    MoveSpeed = entry.speed;
    navAgent.speed = MoveSpeed;

    EntryArmor armor = entry.armor;
    MaxArmor = armor.armorPoints;
    armorPoints = Mathf.Min(MaxArmor, MaxHits);
    armorRegen = armor.canRegen;
    armorRegenTime = armor.armorRegenTime;
    armorRegenSpeed = armor.armorRegenTime;
}

  public void MoveTo(Vector3 movePos) {
    if (gameObject.tag.Equals("Player") && CurrentInteractable) {
      IsInteracting = false;
      CurrentInteractable = null;
    }

    movePos = gameManager.mapControl.GetCellPos(movePos);

    if (Vector3.Distance(transform.position, movePos) < 0.5f) return;

    if (inMovingState) {
      if (navAgent.isActiveAndEnabled) navAgent.SetDestination(movePos);
    } else {
      moveDestination = movePos;
    }

    OccupyingPosition = movePos;
    IsMoving = true;
  }

  public void MoveComplete() {
    MoveComplete(navAgent.destination);
  }

  public void MoveComplete(Vector3 EndPos) {
    if (gameObject.tag.Equals("Player")) {
      CurrentInteractable = gameManager.ActivateLootables(EndPos, this);
    }

    MapData.MapCell mapCell = gameManager.mapControl.GetMapCell(EndPos);

    InCover = mapCell.HasCover && !IgnoreCover;

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

    animator.ResetTrigger("UnderFire");
    animator.ResetTrigger("Dive");

    if (HasMedkit) {
      GameObject[] allUnits = GameObject.FindGameObjectsWithTag(gameObject.tag);
      foreach (GameObject unit in allUnits) {
        if (Vector3.Distance(unit.transform.position, transform.position) < targeting.MeleeRange) {
          Reviver reviver = unit.GetComponent<Reviver>();
          if (reviver) reviver.StartInteracting(this);
        }
      }
    }

    pathComplete.Invoke();
  }

  void FacePosition(Vector3 position) {
    Vector4 startValue = transform.position;
    float currentHeading = Vector3.Angle(transform.forward, Vector3.forward) * Mathf.Sign(transform.forward.x);
    startValue.w = currentHeading;
    LerpToPose.startValue = startValue;
    Vector4 endValue = startValue;
    endValue.y = startValue.y;
    endValue.w = Utils.HeadingToTarget(startValue, position);
    LerpToPose.endValue = endValue;
    currentInterpolation = Interpolator.Start(LerpToPose, gameObject.name + " is moving to cover");
  }

  public void AddWeapon(Weapon weapon) {

    switch (weapon.type) {
      case Weapon.WeaponType.Main:
        if (MainWeapon != null) MainWeapon.Drop();
        MainWeapon = (RangedWeapon) weapon;
        MainWeapon.Init(this, attachPoints["Backpack"], attachPoints["RightHand"]);
        MainWeapon.SetStockAttach(animator.GetBoneTransform(HumanBodyBones.Chest));
        MainWeapon.Equip();
        animator.runtimeAnimatorController = mainWeaponController;
        break;
      case Weapon.WeaponType.SideArm:
        if (SideArm != null) SideArm.Drop();
        SideArm = (RangedWeapon) weapon;
        SideArm.Init(this, attachPoints["LeftHip"], attachPoints["RightHand"]);
        SideArm.SetStockAttach(animator.GetBoneTransform(HumanBodyBones.Chest));
        if (!EquippedWeapon) {
          SideArm.Equip();
          animator.runtimeAnimatorController = sideArmController;
        } else {
          SideArm.Stow();
        }
        break;
      case Weapon.WeaponType.Melee:
        Melee = (MeleeWeapon) weapon;
        Melee.Init(this, attachPoints["RightHip"], attachPoints["RightHand"]);
        Melee.Stow();
        break;
    }
  }

  public void DrawMainWeapon() {
    if (switchingToMainWeapon || switchingToSideArm) return;
    if (!MainWeapon || MainWeapon == EquippedWeapon) return;
    if (EquippedWeapon) EquippedWeapon.Disabled = true;
    animator.SetTrigger("SwitchWeapon");
    switchingToMainWeapon = true;
  }

  public void DrawSideArm() {
    if (switchingToMainWeapon || switchingToSideArm) return;
    if (!SideArm || SideArm == EquippedWeapon) return;
    if (EquippedWeapon) EquippedWeapon.Disabled = true;
    animator.SetTrigger("SwitchWeapon");
    switchingToSideArm = true;
  }

  public void DrawMelee() {
    if (!Melee) {
      Debug.Log(gameObject.name + " doesn't have emelee weapon!");
      return;
    }
    if (EquippedWeapon) {
      EquippedWeapon.Disabled = true;
      EquippedWeapon.Stow();
    }

    Melee.Equip();
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
    targeting.TakeCover = true;
    float throughArmor = 0;
    if (info.damageAmount > armorPoints) {
      throughArmor = info.damageAmount - armorPoints;
      armorPoints = 0;
    } else {
      armorPoints -= info.damageAmount;
    }

    hitPoints -= throughArmor;

    if (hitPoints < 0) {
      Incapacitate(info);
    }
    if (!IsMoving && !InCover) {
      animator.SetInteger("AttackDirection", info.GetOrthagonalDirection(transform));
      animator.SetTrigger("Hit");
    }
    if (PlayerPanel) PlayerPanel.SetHits(armorPoints, hitPoints);
    if (IsInteracting) IsInteracting = false;
    armorCoolDown = armorRegenTime;
    damageTaken.Invoke(info.attacker);
  }

  public void RepairArmor(float amount) {
    armorPoints = Mathf.Clamp(armorPoints + amount, 0, hitPoints);
    if (PlayerPanel) PlayerPanel.SetHits(armorPoints, hitPoints);
  }

  public void TakeHealing(float amount) {
    Debug.Log("NICE: " + amount + " points of healing");
    hitPoints = Mathf.Min(MaxHits, hitPoints + amount);
    if (PlayerPanel) PlayerPanel.SetHits(armorPoints, hitPoints);
  }

  public void Incapacitate(DamageInfo info = null) {
    if (IsDead) return;
    IsDead = true;
    UnitControl attacker = info != null ? info.attacker : null;
    knockedOut.Invoke(attacker);
    IsMoving = false;
    hitPoints = -1;
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    Vector3 direction = info == null ? Vector3.up : info.GetDamageDirection(transform);
    skeleton.SwitchToRagdoll(direction);
    navAgent.enabled = false;

    if (EquippedWeapon) {
      EquippedWeapon.Drop();
      if (SideArm) SideArm.Equip();
      animator.runtimeAnimatorController = sideArmController;
      EquippedWeapon = null;
    }
    
    if (PlayerPanel) {
      PlayerPanel.Incapacitated();
      gameObject.AddComponent<Reviver>().Init(this);
    }

  }

  public bool AddItem(string itemName) {
    bool tookItem;
    switch (itemName) {
      case "Magazine":
        if (MainWeapon) {
          MainWeapon.Magazines++;
          if (PlayerPanel) PlayerPanel.SetMagazines(MainWeapon.Magazines);
          DrawMainWeapon();
        }
        tookItem = true;
        break;
      case "MedKit":
        tookItem = true;

        break;
      case "EnergyCell":
        tookItem = true;

        break;
      default:
        int currentInventorySlots = characterEntry.inventory.Count;
        tookItem = currentInventorySlots < characterEntry.maxInventory;
        if (tookItem) {
          characterEntry.inventory.Add(itemName);
          if (PlayerPanel) PlayerPanel.AddInventoryItem(itemName);
        }
        break;
    }
    return tookItem;
  }

  public bool RemoveItem(string lootName) {
    bool lootRemoved = characterEntry.inventory.Remove(lootName);
    return lootRemoved;
  }

  public void OutOfAmmo() {
    outOfAmmo.Invoke(this);
    if (SideArm) DrawSideArm();
    DroneTask task = new DroneTask("Magazine", transform.position, this);
    needsEquipment.Invoke(task, this);
  }

  public void Revive() {
    if (!IsDead) return;
    IsDead = false;
    hitPoints = 1;
    SkeletonControl skeleton = GetComponent<SkeletonControl>();
    skeleton.SwitchToAnimator();
    navAgent.enabled = true;
  }
  
  public void Reload() {
    animator.SetTrigger("Reload");
  }

  public void ReloadComplete() {
    EquippedWeapon.Reloaded();
    if (PlayerPanel) PlayerPanel.SetMagazines(EquippedWeapon.Magazines);
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
      case "EquipMelee":
        DrawMelee();
        break;
      case "MeleeAttack":
        targeting.MeleeAttack();
        break;
      case "StowWeapon":
        if (EquippedWeapon) EquippedWeapon.Stow();
        break;
      case "DrawWeapon":
        if (switchingToMainWeapon) {
          MainWeapon.Equip();
          if (PlayerPanel) PlayerPanel.MainWeaponEquipped();
          animator.runtimeAnimatorController = mainWeaponController;
        } else if (switchingToSideArm) {
          SideArm.Equip();
          if (PlayerPanel) PlayerPanel.SideArmEquipped();
          animator.runtimeAnimatorController = sideArmController;
        } else {
          if (MainWeapon) {
            MainWeapon.Equip();
            if (PlayerPanel) PlayerPanel.MainWeaponEquipped();
          } else if (SideArm) {
            SideArm.Equip();
            if (PlayerPanel) PlayerPanel.SideArmEquipped();
          }
        }
        switchingToMainWeapon = switchingToSideArm = false;
        if (EquippedWeapon && EquippedWeapon.IsEmpty) Reload();
        break;
      default:
        Debug.Log("Don't know what to do with a " + eventName + " event");
        break;
    }
  }

  public void Remove() {
    removed.Invoke(this);
    if (currentInterpolation) currentInterpolation.Cancel();
    if (MainWeapon) Destroy(MainWeapon.gameObject);
    if (SideArm) Destroy(SideArm.gameObject);
    Destroy(gameObject);
  }
}