﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RangedWeapon : Weapon {

  Transform muzzle;
  Transform magazine;
  Transform grip;

  Light weaponFlash;
  Effect muzzleEffect;

  public Vector2 spread = new Vector2(5, 5);
  public float fireRate = 0.1f;
  public int burstCount = 3;
  public float burstCooldown = 0.5f;

  public int magazines { get; set; }
  int magazineSize = 15;
  int roundsInMagazine = 0;
  float fireRateTimer = 0;
  int burstAmount = 3;
  float burstCooldownTimer = 1.0f;

  public Vector3 gripOffset = Vector3.zero;
  public Vector3 stockOffset = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform stockPivot;
  Transform gripPivot;

  public Transform rightGrip;
  public Transform leftGrip;

  public bool Reloading { get; set; }

  bool disabled;
  public bool Disabled {
    get { return disabled; }
    set {
      Debug.Log(this.name + " is " + (value ? " disabled" : " enabled"));
      disabled = value;
    }
  }

  float blendAmount;
  public float GripBlend {
    set {
      blendAmount = value;
    }
  }

  Vector3 lookPos = Vector3.zero;
  Vector3 kickBack = Vector3.zero;

  public override bool IsReady {
    get { return !Reloading && !Disabled; }
  }

  public Vector3 LookPos {
    set { lookPos = value; }
  }
  public Vector3 MuzzlePos {
    get { return muzzle.position; }
  }

  public override void Init(UnitControl owner, Transform stowAttach) {
    base.Init(owner, stowAttach);
    grip = transform.GetChild(0);

    muzzle = grip.Find("Muzzle");
    magazine = grip.Find("Magazine");
    weaponFlash = muzzle.GetComponent<Light>();
    muzzleEffect = Instantiate(GameManager.Instance.GetPrefab("MuzzleFlash"), muzzle).GetComponent<Effect>();
    Reloaded(true);
  }

  public void SetGrips(Transform stockPivot, Transform gripAttach) {
    grip = transform.GetChild(0);

    this.stockPivot = stockPivot;
    this.gripPivot = gripAttach;
  }

  void Update() {
    if (!owner) return;
    if (kickBack.sqrMagnitude > Mathf.Epsilon) {
      kickBack = Vector3.Lerp(kickBack, Vector3.zero, Time.deltaTime * 8);
    }

    if (fireRateTimer > 0) fireRateTimer -= Time.deltaTime;
    if (burstCooldownTimer > 0) burstCooldownTimer -= Time.deltaTime;
    if (weaponFlash && weaponFlash.enabled) {
      weaponFlash.intensity = Mathf.Lerp(weaponFlash.intensity, 0.0f, Time.deltaTime * 8);
      if (weaponFlash.intensity < 0.05f)
        weaponFlash.enabled = false;
    }
    if (owner && !IsEquipped) {
      transform.position = stow.position;
      transform.rotation = stow.rotation;
      return;
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
  }
  public void Attack(UnitControl target) {
    if (fireRateTimer > 0) return;
    if (burstCooldownTimer > 0) return;
    if (Reloading) return;
    if (type == WeaponType.Main && roundsInMagazine <= 0) {
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

    float vOffset = Random.Range(-spread.x, spread.y);
    aimingDirection = Quaternion.AngleAxis(vOffset, Vector3.right) * aimingDirection;
    float hOffset = Random.Range(-spread.x, spread.y);
    aimingDirection = Quaternion.AngleAxis(hOffset, Vector3.up) * aimingDirection;

    DamageInfo damageInfo = new DamageInfo(damage, DamageType.Puncture, owner);
    projectile.GetComponent<Projectile>().Init(unitTargeting, aimingDirection, range, damageInfo);

    kickBack = muzzle.forward * -0.1f + (Vector3.up * Random.Range(-0.02f, 0.02f));

    target.AttackedBy(owner);

  }

  public override void Stow() {
    if (IsEquipped) owner.EquippedWeapon = null;
    base.Stow();
  }

  public override void Equip() {
    base.Equip();
    owner.EquippedWeapon = this;
    Disabled = false;
  }

  public override void Drop() {
    base.Drop();
    grip.localPosition = Vector3.zero;
  }
  public void Reloaded(bool instant = false) {
    Reloading = false;
    roundsInMagazine = magazineSize;
    magazines--;
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
    Reloading = true;

    if (type == WeaponType.Main && magazines <= 0) {
      owner.OutOfAmmo();
    } else {
      owner.Reload();
    }

  }
}
