using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon : MonoBehaviour {

  UnitControl owner;
  Transform grip;
  Transform muzzle;
  Transform magazine;
  Light muzzleLight;

  bool readyToFire = false;
  int roundsInMagazine = 0;
  float fireRateTimer = 0;
  float fireRate = 0.5f;
  int burstCount = 3;
  int burstAmount = 3;
  float burstCooldown = 1.0f;
  float burstCooldownTimer = 1.0f;

  float range = 10;
  float spread = 10;

  public bool IsTwoHanded;
  public Vector3 gripOffset = Vector3.zero;
  public Vector3 stockOffset = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform stockPivot;
  Transform gripPivot;

  public Transform rightGrip;
  public Transform leftGrip;

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
  public void Init(Transform stockPivot, Transform gripPivot) {

    grip = transform.GetChild(0);

    this.stockPivot = stockPivot;
    this.gripPivot = gripPivot;

    muzzle = grip.Find("Muzzle");
    magazine = grip.Find("Magazine");
    muzzleLight = muzzle.GetComponent<Light>();
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
  }

  public void Equip(UnitControl owner) {
    this.owner = owner;
  }

  public void Fire() {
    if (!readyToFire) return;
    if (fireRateTimer > 0) return;
    if (burstCooldownTimer > 0) return;
    if (roundsInMagazine <= 0) return;

    roundsInMagazine--;

    burstCount--;
    roundsInMagazine--;

   // GameObject trailEffect = Instantiate(bulletTrail, muzzle.position, transform.rotation) as GameObject;
    muzzleLight.intensity = 1;

    Quaternion directionOffset = Quaternion.AngleAxis((Random.value - 0.5f) * shotSpread, Vector3.up);
    Vector3 direction = muzzle.forward;
    Ray trajectory = new Ray(muzzle.position, direction);

    if (Physics.Raycast(trajectory, out RaycastHit hit, range)) {
      distanceToTarget = Vector3.Distance(hit.point, muzzle.position);
      hitLocation = hit.point;

      Vector3 incomingVec = hit.point - muzzle.position;
      Vector3 reflectVec = Vector3.Reflect(incomingVec, hit.normal);

      UnitControl.DamageInfo damageInfo = GetDamageInfo(hit.distance, hit.point);

      string targetTag = hit.transform.root.tag;
      if (targetTag.Equals("Enemy") || targetTag.Equals("Player")) {

        if (targetTag.Equals(transform.tag)) {
          targeting.TargetMiss();
        } else {
          targeting.TargetHit();
          UnitControl targetControl = hit.transform.root.GetComponent<UnitControl>();
          float armorPenetrationRangeBonus = Mathf.Clamp01((1 - (hit.distance / range)) / 2.0f);
          float armorPenetrationChance = ((Random.value + armorPiercing) / 2.0f) + armorPenetrationRangeBonus;
          if (armorPenetrationChance > targetControl.GetArmorRating()) {
            targetControl.TakeDamage(damageInfo);
          } else {
            targetControl.HitDeflected(damageInfo);
          }

        }
      } else {
        targeting.TargetMiss();
        hit.transform.SendMessageUpwards("TakeDamage", damageInfo, SendMessageOptions.DontRequireReceiver);
      }

    } else {
      distanceToTarget = range * 1.25f;
      hitLocation = trajectory.GetPoint(range);
      targeting.TargetMiss();
    }

    trailEffect.transform.localScale = new Vector3(1.0f, 1.0f, distanceToTarget);
    Vector3 upVector = (transform.position - Camera.main.transform.position).normalized;
    trailEffect.transform.LookAt(hitLocation, upVector);
    targeting.PlayFireAnim();

  }

  void Reload(bool instant = false) {

  }
}