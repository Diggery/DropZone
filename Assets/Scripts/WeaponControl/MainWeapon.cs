using UnityEngine;
using System.Collections;

public class MainWeapon : MonoBehaviour {

	UnitInventory unitInventory;

	public GameObject bulletTrailPrefab;
	public GameObject bulletHitPrefab;
	public GameObject muzzleFlashPrefab;
	
	public GameObject hitIndicator;
	public GameObject deflectIndicator;

	UnitController unitController;
	Animator animator;
	TargetingControl targeting;
	
	public float aimDrift = 0.0f;
	public float weaponDrift = 0.0f;
	public float aimBonus = 0.0f;
	public float aimSpread = 10.0f;
	
	public float range;

	bool coolingDown;
	public int burstSize = 5;
	int burstCount;
	public float burstCooldown = 2;
	float burstTimer = 0;

	bool reloading;
	public int magazineSize = 40;
	int magazineCount;
	float magDamage = 1.0f;
	float magRangeBonus = 5.0f;
	float magArmorPiercing = 0.25f;
	
	public float reloadTime = 2.0f;
	float reloadTimer;

	Transform muzzle;
	Transform magazine;

	Light muzzleLight;

	bool readyToFire;
	bool dead;

	public void SetInventory(UnitInventory inventory) {
		unitInventory = inventory;
	}

	public void Attach(Transform attachPoint, UnitController control) {

		unitController = control;
		animator = unitController.GetAnimator();

		targeting = unitController.GetTargeting();

		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;
		muzzle = transform.Find("Muzzle");
		if (!muzzle) Debug.Log("Add a muzzle locator to the gun");
		magazine = transform.Find("Magazine");
		if (!magazine) Debug.Log("Add a Magazine to the gun");

		muzzleLight = muzzle.Find ("MuzzleLight").GetComponent<Light>();
		if (!muzzleLight) Debug.Log("Add a light to the muzzle");

		burstCount = burstSize;
		magazineCount = magazineSize;
	}
	
	void Update () {
		if (dead) {
			if (muzzleLight) {
				Destroy(muzzleLight.gameObject);
			}
			return;
		}
		
		if (muzzleLight.intensity > 0.1f) {
			muzzleLight.intensity = Mathf.Lerp(muzzleLight.intensity, 0, Time.deltaTime * 10);
		} else {
			muzzleLight.intensity = 0;
		}

		if (reloading) {
			reloadTimer -= Time.deltaTime;
			if (reloadTimer < 0) {
				FinishReloading();
			}
			animator.SetBool("MainWeaponReady", false);

			return;
		}  
		
		if (coolingDown) {
			burstTimer -= Time.deltaTime;
			if (burstTimer < 0) {
				FinishCoolingDown();
			}
			animator.SetBool("MainWeaponReady", false);
			return;
		} 
		animator.SetBool("MainWeaponReady", true);

		if (unitController.HasTarget()) {
		
			AnimatorStateInfo animStateInfo = animator.GetCurrentAnimatorStateInfo(0);
			if (animStateInfo.IsName("HighCover.Cover_Aim_Right") ||
			    animStateInfo.IsName("HighCover.CoverOut_Aim_Right") ||
			    animStateInfo.IsName("HighCover.Cover_Aim_Left") ||
			    animStateInfo.IsName("HighCover.Cover_Aim_Left") ||
			    animStateInfo.IsName("HighCover.CoverOut_Aim_Left") ||
			    animStateInfo.IsName("NoCover.Aiming")) {
			    
				Fire();
				
			}
		}
	}

	public void Fire() {
	
		if (reloading || coolingDown) return;
		animator.SetTrigger("FireMainWeapon");
		if (burstCount < 1) {
			StartCoolingDown();
			return;
		}

		if (magazineCount < 1) {
			StartReloading();
			return;
		}

		targeting.AddDrift(aimDrift - aimBonus);
		targeting.RaiseAim(weaponDrift - aimBonus);

		Instantiate(muzzleFlashPrefab, muzzle.position + (muzzle.forward * 0.15f), transform.rotation);

		GameObject bulletTrail = Instantiate(bulletTrailPrefab, muzzle.position, transform.rotation) as GameObject;
		muzzleLight.intensity = 1;

		Quaternion directionOffset = Quaternion.AngleAxis((Random.value - 0.5f) * aimSpread, Vector3.up);
		Vector3 direction = directionOffset * muzzle.forward;
		Ray trajectory = new Ray(muzzle.position, direction);
		RaycastHit hit;
		float distanceToTarget = 0.0f;
		Vector3 hitLocation;
		LayerMask playerMask = 1 << LayerMask.NameToLayer("Player");
		playerMask = ~playerMask;

		if (Physics.Raycast(trajectory, out hit, range * 1.25f, playerMask)) {
			distanceToTarget = Vector3.Distance(hit.point, muzzle.position);
			hitLocation = hit.point;
			
			Vector3 incomingVec = hit.point - muzzle.position;
			Vector3 reflectVec = Vector3.Reflect(incomingVec, hit.normal);

			Quaternion hitRotation = Quaternion.LookRotation(reflectVec);
			hitRotation *= Quaternion.AngleAxis(90, Vector3.right);

			if (!hit.transform.tag.Equals("Shield")) Instantiate(bulletHitPrefab, hit.point, hitRotation);
			float damage = magDamage + (Mathf.Pow(Mathf.Clamp01(1 - (hit.distance / range)), 3) * magRangeBonus);
			Vector4 damageInfo = new Vector4(hit.point.x, hit.point.y, hit.point.z, damage);
			
			string targetTag = hit.transform.root.tag;
			if (targetTag.Equals("Enemy") || targetTag.Equals("Player")) {
				
				if (targetTag.Equals(transform.tag)) {
					targeting.TargetMiss();
				} else {
					targeting.TargetHit();
					UnitController targetController = hit.transform.root.GetComponent<UnitController>();
					float armorPenetrationRangeBonus = Mathf.Clamp01((1 - (hit.distance / range)) / 2.0f);
					float armorPenetrationChance = ((Random.value + magArmorPiercing) / 2.0f) + armorPenetrationRangeBonus;
					if (armorPenetrationChance > targetController.GetArmorRating()) {
						hit.transform.SendMessageUpwards("TakeDamage", damageInfo, SendMessageOptions.DontRequireReceiver);
						GameObject indicator = Instantiate(hitIndicator, hit.point, Quaternion.identity) as GameObject;
						indicator.GetComponent<IndicatorMover>().Launch(incomingVec);
					} else {
						hit.transform.SendMessageUpwards("HitDeflected", damageInfo, SendMessageOptions.DontRequireReceiver);
						GameObject indicator = Instantiate(deflectIndicator, hit.point, Quaternion.identity) as GameObject;
						indicator.GetComponent<IndicatorMover>().Launch(incomingVec);
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

		bulletTrail.transform.localScale = new Vector3(1.0f, 1.0f, distanceToTarget);
		Vector3 upVector = (transform.position - Camera.main.transform.position).normalized;
		bulletTrail.transform.LookAt(hitLocation, upVector);

		burstCount--;
		if (burstCount < 1) StartCoolingDown();

		magazineCount--;
		if (magazineCount < 1) StartReloading();

	}
	
	public void StartCoolingDown() {
		coolingDown = true;
		burstTimer = burstCooldown;
	}
	public void FinishCoolingDown() {
		coolingDown = false;
		burstCount = Mathf.Min(burstSize, magazineCount);
	}

	public void StartReloading() {

		if (!unitInventory.HasMagazine()) {
			print ("out of ammo");
			return;
		}

		animator.SetTrigger("Reload");
		reloading = true;
		reloadTimer = reloadTime;


		//kick out old magazine
		GameObject oldMag = Instantiate(magazine.gameObject, magazine.position, magazine.rotation) as GameObject;
		oldMag.AddComponent<BoxCollider>();
		Rigidbody magBody = oldMag.AddComponent<Rigidbody>();
		magBody.mass = 100;
		magBody.AddForce(Vector3.down * 1000, ForceMode.Impulse);
		magazine.renderer.enabled = false;

	}

	public void ReplaceMagazine() {
		magazine.renderer.enabled = true;

	}

	public void FinishReloading() {
		reloading = false;
		magazineCount = magazineSize;
	}
	
	public void DropItem() {
		dead = true;
		rigidbody.isKinematic = false;
		rigidbody.useGravity = true;
		GetComponent<Collider>().enabled = true;
		transform.parent = null;
		rigidbody.AddForce(Vector3.up  * 10);
		Vector3 rotVector = Vector3.forward;
		rotVector = Quaternion.AngleAxis(Random.Range(-45, 45), Vector3.right) * rotVector;
		rigidbody.AddRelativeTorque(rotVector  * 100);
		gameObject.layer = LayerMask.NameToLayer("RagDoll");
		
	}

}









