using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour {

    protected UnitControl unitControl;
    protected Targeting targeting;

    Transform muzzle;
    Light muzzleLight;
    Transform magazine;

    public GameObject bulletTrail;

    public enum Type {
        MainWeapon,
        SideArm
    }

    [HideInInspector]
    public Type type;

    public int burstSize = 3;
    int burstCount = 3;


    protected int roundsInMagazine = 0;
    protected float armorPiercing = 0.25f;

    public float range = 25.0f;

    bool firing = false;
    public float fireRate = 0.0f;
    public float fireRateOffset = 0.1f;
    float fireRateTimer = 0.15f;

    bool coolingDown = false;
    public float coolDownTime = 1.0f;
    float coolDownTimer = 1.0f;

    bool reloading = false;
    public float reloadTime = 3.0f;
    float reloadTimer = 3.0f;

    float shotSpread = 5.0f;

    public float rangeBonus = 5.0f;

    void Start() {
    }

    void Update() {
        if (firing) {
            fireRateTimer -= Time.deltaTime;
            if (fireRateTimer < 0) firing = false;
        }         
        if (coolingDown) {
            coolDownTimer -= Time.deltaTime;
            if (coolDownTimer < 0) coolingDown = false;
        }
        if (reloading) {
            reloadTimer -= Time.deltaTime;
            if (reloadTimer < 0) reloading = false;
        }
    }

    public virtual void SetUp(Transform attachPoint, UnitControl _unitControl) {

        unitControl = _unitControl;
        targeting = unitControl.GetTargeting();

        transform.parent = attachPoint;
        transform.localPosition = Vector3.zero;
        transform.localRotation = Quaternion.identity;
        muzzle = transform.Find("Muzzle");
        if (!muzzle) Debug.Log("Add a muzzle locator to the gun");

        magazine = transform.Find("Magazine");
        if (!magazine) Debug.Log("Add a Magazine to the gun");

        muzzleLight = muzzle.Find("MuzzleLight").GetComponent<Light>();
        if (!muzzleLight) Debug.Log("Add a light to the muzzle");

        burstCount = burstSize;
        Attach(attachPoint);
    }

    public void Attach(Transform attachPoint) {
        transform.parent = attachPoint;
        transform.localPosition = Vector3.zero;
        transform.localRotation = Quaternion.identity;       
    }

    public float GetRange() {
        return range;
    }

    public bool IsReadyToFire() {
        return !reloading && !coolingDown && !firing;
    }

    public void Fire() {
        if (reloading || coolingDown || firing) return;

        if (burstCount <= 0) {
            CoolDown();
            return;
        }

        if (roundsInMagazine <= 0) {
            Reload();
            return;
        }

        firing = true;
        fireRateTimer = fireRate;
        if (fireRateOffset > 0) {
            fireRateTimer += Random.Range(0, fireRateOffset);
        }

        burstCount--;
        roundsInMagazine--;

        GameObject trailEffect = Instantiate(bulletTrail, muzzle.position, transform.rotation) as GameObject;
        muzzleLight.intensity = 1;

        Quaternion directionOffset = Quaternion.AngleAxis((Random.value - 0.5f) * shotSpread, Vector3.up);
        Vector3 targetDirection = targeting.GetTargetDirection();
        Vector3 direction = directionOffset * Vector3.Lerp(targetDirection, muzzle.forward, 0.5f).normalized;
        Ray trajectory = new Ray(muzzle.position, direction);
        RaycastHit hit;
        float distanceToTarget = 0.0f;
        Vector3 hitLocation;

        LayerMask playerMask;
        LayerMask ragdollMask;

        if (unitControl.tag.Equals("Player")) {
            playerMask = 1 << LayerMask.NameToLayer("Player");
            ragdollMask = 1 << LayerMask.NameToLayer("PlayerRagDoll");      
        } else {
            playerMask = 1 << LayerMask.NameToLayer("Enemy");
            ragdollMask = 1 << LayerMask.NameToLayer("EnemyRagDoll");       
        }

        LayerMask finalMask = playerMask | ragdollMask;
        finalMask = ~finalMask;

        if (Physics.Raycast(trajectory, out hit, range * 1.25f, finalMask)) {
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

    public void CoolDown() {
        coolDownTimer = coolDownTime;
        burstCount = burstSize;
        coolingDown = true;
    }

    protected virtual void Reload() {
        
        reloading = true;
        reloadTimer = reloadTime;
        targeting.Reload();

        //kick out old magazine
        GameObject oldMag = Instantiate(magazine.gameObject, magazine.position, magazine.rotation) as GameObject;
        oldMag.AddComponent<BoxCollider>();
        Rigidbody magBody = oldMag.AddComponent<Rigidbody>();
        magBody.mass = 100;
        magBody.AddForce(Vector3.down * 1000, ForceMode.Impulse);
        magazine.GetComponent<Renderer>().enabled = false;

    }

    protected virtual UnitControl.DamageInfo GetDamageInfo(float distance, Vector3 point) {
        float finalDamage = 1 + (Mathf.Pow(Mathf.Clamp01(1 - (distance / range)), 3));
        UnitControl.DamageInfo damageInfo = new UnitControl.DamageInfo(point, finalDamage, UnitControl.DamageInfo.DamageType.Projectile);
        return damageInfo;
    }

    public void FinishReload() {
        magazine.GetComponent<Renderer>().enabled = true;
    }
}
