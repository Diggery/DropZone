using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour {

  UnitControl owner;
  TargetControl targetControl;
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
  float reloadTimer = 1.0f;
  float reloadTime = 2.0f;

  float range = 10;
  float verticalSpread = 10;
  float horizontalSpread = 10;

  public bool IsTwoHanded;
  public Vector3 gripOffset = Vector3.zero;
  public Vector3 stockOffset = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform stockPivot;
  Transform gripPivot;

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
    get { return (reloadTimer <= 0); }
  }

  public Vector3 MuzzlePos {
    get { return muzzle.position; }
  }

  public void Init(UnitControl owner, Transform stockPivot, Transform gripPivot) {
    this.owner = owner;
    rbody = GetComponent<Rigidbody>();
    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;
    targetControl = owner.gameObject.GetComponent<TargetControl>();

    grip = transform.GetChild(0);

    this.stockPivot = stockPivot;
    this.gripPivot = gripPivot;

    muzzle = grip.Find("Muzzle");
    magazine = grip.Find("Magazine");
    weaponFlash = muzzle.GetComponent<Light>();
    muzzleEffect = Instantiate(GameManager.Instance.GetPrefab("MuzzleFlash"), muzzle).GetComponent<Effect>();
    Reload(10, true);
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

    if (fireRateTimer > 0)fireRateTimer -= Time.deltaTime;
    if (burstCooldownTimer > 0)burstCooldownTimer -= Time.deltaTime;
    if (reloadTimer > 0) {
      reloadTimer -= Time.deltaTime;
      if (reloadTimer < 0)Reload(15);
    }

    if (weaponFlash && weaponFlash.enabled) {
      weaponFlash.intensity = Mathf.Lerp(weaponFlash.intensity, 0.0f, Time.deltaTime * 8);
      if (weaponFlash.intensity < 0.05f)
        weaponFlash.enabled = false;
    }
  }

  public void Attack(UnitControl target) {

    if (fireRateTimer > 0)return;
    if (burstCooldownTimer > 0)return;
    if (reloadTimer > 0)return;
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
    )as GameObject;

    Vector3 aimingDirection = muzzle.forward;

    float vOffset = Random.Range(-verticalSpread, verticalSpread);
    aimingDirection = Quaternion.AngleAxis(vOffset, Vector3.right) * aimingDirection;
    float hOffset = Random.Range(-horizontalSpread, horizontalSpread);
    aimingDirection = Quaternion.AngleAxis(hOffset, Vector3.up) * aimingDirection;

    DamageInfo damageInfo = new DamageInfo(5, DamageType.Puncture, owner);
    projectile.GetComponent<Projectile>().Init(targetControl, aimingDirection, range, damageInfo);

    kickBack = muzzle.forward * -0.1f + (Vector3.up * Random.Range(-0.02f, 0.02f));

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
    rbody.AddTorque(torque * 10, ForceMode.VelocityChange);
    GetComponent<BoxCollider>().enabled = true;
    Debug.Log("Dropping " + gameObject.name);
  }

  public virtual void PickUp(UnitControl newOwner) {
    this.owner = newOwner;

    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;

  }

  public void Reload(int magazineSize, bool instant = false) {
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

    reloadTimer = reloadTime;

    owner.Reload();
  }
}