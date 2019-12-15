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

  bool readyToFire = false;
  int roundsInMagazine = 0;
  float fireRateTimer = 0;
  float fireRate = 0.15f;
  int burstCount = 3;
  int burstAmount = 3;
  float burstCooldown = 1.0f;
  float burstCooldownTimer = 1.0f;
  bool reloading = false;
  float reloadTimer = 1.0f;
  float reloadTime = 1.0f;

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
  public Vector3 LookPos {
    set { lookPos = value; }
  }
  public void Init(UnitControl owner, Transform stockPivot, Transform gripPivot) {
    this.owner = owner;
    targetControl = owner.gameObject.GetComponent<TargetControl>();

    grip = transform.GetChild(0);

    this.stockPivot = stockPivot;
    this.gripPivot = gripPivot;

    muzzle = grip.Find("Muzzle");
    magazine = grip.Find("Magazine");
    weaponFlash = muzzle.GetComponent<Light>();
    Reload(10, true);
  }

  void Update() {

    if (blendAmount > 0) {
      Vector3 weaponLookPosition = stockPivot.TransformPoint(shoulderOffset);
      Quaternion weaponLookRotation = Quaternion.LookRotation((lookPos - transform.position).normalized);
      grip.localPosition = Vector3.Lerp(gripOffset, stockOffset, blendAmount);
      transform.position = Vector3.Lerp(gripPivot.position, weaponLookPosition, blendAmount);
      transform.rotation = Quaternion.Lerp(gripPivot.rotation, weaponLookRotation, blendAmount);
    } else {
      grip.localPosition = gripOffset;
      transform.position = gripPivot.position;
      transform.rotation = gripPivot.rotation;
    }

    if (fireRateTimer > 0) fireRateTimer -= Time.deltaTime;
    if (burstCooldownTimer > 0) burstCooldownTimer -= Time.deltaTime;
    if (reloadTimer > 0) reloadTimer -= Time.deltaTime;

    if (weaponFlash && weaponFlash.enabled) {
      weaponFlash.intensity = Mathf.Lerp(weaponFlash.intensity, 0.0f, Time.deltaTime * 8);
      if (weaponFlash.intensity < 0.05f)
        weaponFlash.enabled = false;
    }
  }

  public void Attack(UnitControl target) {
    // if (!readyToFire) return;
    if (fireRateTimer > 0) return;
    if (burstCooldownTimer > 0) return;
    if (reloadTimer > 0) return;
    if (roundsInMagazine <= 0) {
      Reload(10);
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

    DamageInfo damageInfo = new DamageInfo(1, DamageType.Puncture, owner);
    projectile.GetComponent<Projectile>().Init(targetControl, aimingDirection, range, damageInfo);

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
    transform.SetParent(null);
    Rigidbody rb = GetComponent<Rigidbody>();
    rb.isKinematic = false;
    Vector3 torque = new Vector3(
        Random.Range(-1.0f, 1.0f),
        Random.Range(-1.0f, 1.0f),
        Random.Range(-1.0f, 1.0f)
    );
    rb.AddTorque(torque * 10, ForceMode.VelocityChange);
    GetComponent<BoxCollider>().enabled = true;
    Debug.Log("Dropping " + gameObject.name);

  }

  public void Reload(int magazineSize, bool instant = false) {
    if (!instant) EjectMagazine();
    reloadTimer = instant ? -1 : 1.0f;
    roundsInMagazine = magazineSize;
    magazine.GetComponent<Renderer>().enabled = true;
    Debug.Log("Reloaded");
  }

  public void EjectMagazine() {

    GameObject oldMag = Instantiate(magazine.gameObject,
                                    magazine.position,
                                    magazine.rotation);

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

    owner.Reload();
    Debug.Log("Ejecting Magazine");
  }
}