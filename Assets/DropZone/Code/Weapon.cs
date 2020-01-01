using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Weapon : MonoBehaviour {

  UnitControl owner;
  UnitTargeting unitTargeting;
  Transform grip;
  Transform muzzle;
  Transform magazine;
  Light weaponFlash;
  Effect muzzleEffect;
  Rigidbody rbody;

  int roundsInMagazine = 0;
  float fireRateTimer = 0;
  float fireRate = 0.1f;
  int burstCount = 3;
  int burstAmount = 3;
  float burstCooldown = 0.5f;
  float burstCooldownTimer = 1.0f;
  bool reloading = false;

  float range = 10;
  float verticalSpread = 5;
  float horizontalSpread = 5;

  public bool IsTwoHanded;
  public Vector3 gripOffset = Vector3.zero;
  public Vector3 stockOffset = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform stockPivot;
  Transform gripPivot;
  SphereCollider pickUpCollision;

  public Transform rightGrip;
  public Transform leftGrip;

  public bool IsEquipped { get; set; }

  float blendAmount;
  public float GripBlend {
    set {
      blendAmount = value;
    }
  }

  Vector3 lookPos = Vector3.zero;
  Vector3 kickBack = Vector3.zero;
  public Vector3 LookPos {
    set { lookPos = value; }
  }

  public bool IsReady {
    get { return !reloading; }
  }

  public Vector3 MuzzlePos {
    get { return muzzle.position; }
  }

  public void Init(UnitControl owner, Transform stockPivot, Transform gripPivot) {
    this.owner = owner;
    rbody = GetComponent<Rigidbody>();
    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;
    unitTargeting = owner.gameObject.GetComponent<UnitTargeting>();

    grip = transform.GetChild(0);

    this.stockPivot = stockPivot;
    this.gripPivot = gripPivot;

    muzzle = grip.Find("Muzzle");
    magazine = grip.Find("Magazine");
    weaponFlash = muzzle.GetComponent<Light>();
    muzzleEffect = Instantiate(GameManager.Instance.GetPrefab("MuzzleFlash"), muzzle).GetComponent<Effect>();
    pickUpCollision = transform.Find("PickUp").GetComponent<SphereCollider>();
    pickUpCollision.enabled = false;
    InputRelay uiInput = pickUpCollision.gameObject.AddComponent<InputRelay>();
    uiInput.onClick.AddListener(OnClick);
    Reloaded(10, true);
  }

  void Update() {
    if (!owner) return;

    if (kickBack.sqrMagnitude > Mathf.Epsilon) {
      kickBack = Vector3.Lerp(kickBack, Vector3.zero, Time.deltaTime * 8);
    }
    if (blendAmount > 0) {
      Vector3 weaponLookPosition = stockPivot.TransformPoint(shoulderOffset);
      Quaternion weaponLookRotation = Quaternion.LookRotation((lookPos - transform.position).normalized);
      grip.localPosition = Vector3.Lerp(gripOffset, stockOffset, blendAmount);
      transform.position = Vector3.Lerp(gripPivot.position, weaponLookPosition + kickBack, blendAmount);
      transform.rotation = Quaternion.Lerp(gripPivot.rotation, weaponLookRotation, blendAmount);
    } else {
      grip.localPosition = gripOffset;
      transform.position = gripPivot.position;
      transform.rotation = gripPivot.rotation;
    }

    if (fireRateTimer > 0) fireRateTimer -= Time.deltaTime;
    if (burstCooldownTimer > 0) burstCooldownTimer -= Time.deltaTime;


    if (weaponFlash && weaponFlash.enabled) {
      weaponFlash.intensity = Mathf.Lerp(weaponFlash.intensity, 0.0f, Time.deltaTime * 8);
      if (weaponFlash.intensity < 0.05f)
        weaponFlash.enabled = false;
    }
  }

  public void Attack(UnitControl target) {

    if (fireRateTimer > 0) return;
    if (burstCooldownTimer > 0) return;
    if (reloading) return;
    if (roundsInMagazine <= 0) {
      EjectMagazine();
      return;
    }

    burstCount--;
    if (burstCount <= 0) {
      burstCount = burstAmount;
      burstCooldownTimer = burstCooldown;
    }
    roundsInMagazine--;
    fireRateTimer = fireRate;

    weaponFlash.enabled = true;
    weaponFlash.intensity = 5;
    muzzleEffect.Play();

    GameObject projectile = Instantiate(
      GameManager.Instance.GetPrefab("Projectile"),
      muzzle.position,
      muzzle.rotation
    ) as GameObject;

    Vector3 aimingDirection = muzzle.forward;

    float vOffset = Random.Range(-verticalSpread, verticalSpread);
    aimingDirection = Quaternion.AngleAxis(vOffset, Vector3.right) * aimingDirection;
    float hOffset = Random.Range(-horizontalSpread, horizontalSpread);
    aimingDirection = Quaternion.AngleAxis(hOffset, Vector3.up) * aimingDirection;

    DamageInfo damageInfo = new DamageInfo(0.5f, DamageType.Puncture, owner);
    projectile.GetComponent<Projectile>().Init(unitTargeting, aimingDirection, range, damageInfo);

    kickBack = muzzle.forward * -0.1f + (Vector3.up * Random.Range(-0.02f, 0.02f));

    target.AttackedBy(owner);

  }

  public virtual void Stowed() {
    IsEquipped = false;
  }

  public virtual void Drawn() {
    IsEquipped = true;
  }

  public virtual void Drop() {
    IsEquipped = false;
    owner = null;
    rbody.isKinematic = false;
    Vector3 torque = new Vector3(
      Random.Range(-1.0f, 1.0f),
      Random.Range(-1.0f, 1.0f),
      Random.Range(-1.0f, 1.0f)
    );
    Vector3 force = new Vector3( Random.Range(-1.0f, 1.0f), 1.0f, Random.Range(-1.0f, 1.0f));
    rbody.AddTorque(torque * 10, ForceMode.VelocityChange);
    rbody.AddForce(force, ForceMode.VelocityChange);
    GetComponent<BoxCollider>().enabled = true;
    pickUpCollision.enabled = true;
    grip.localPosition = Vector3.zero;

    Debug.Log("Dropping " + gameObject.name);
  }

  public virtual void PickUp(UnitControl newOwner) {
    this.owner = newOwner;

    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;
    pickUpCollision.enabled = false;

  }

  public void Reloaded(int magazineSize, bool instant = false) {
    reloading = false;
    roundsInMagazine = magazineSize;
    magazine.GetComponent<Renderer>().enabled = true;
  }

  public void EjectMagazine() {

    var oldMag = Instantiate(magazine.gameObject, magazine.position, magazine.rotation);
    oldMag.AddComponent<BoxCollider>();
    Rigidbody oldMagRB = oldMag.AddComponent<Rigidbody>();
    oldMagRB.isKinematic = false;
    oldMagRB.AddRelativeForce(-Vector3.up, ForceMode.Impulse);
    oldMagRB.AddRelativeTorque(Vector3.forward, ForceMode.Impulse);

    magazine.GetComponent<Renderer>().enabled = false;

    //if (magazines == 0) {
    //  return;
    //}
    //magazines--;
    reloading = true;

    owner.Reload();
  }

  void OnClick(PointerEventData eventData) {
    Debug.Log("Pick me UP");
  }
}