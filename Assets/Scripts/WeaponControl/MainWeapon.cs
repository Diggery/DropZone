using UnityEngine;
using System.Collections;

public class MainWeapon : MonoBehaviour {

	UnitInventory unitInventory;

	public GameObject bulletTrailPrefab;
	public GameObject bulletHitPrefab;
	public GameObject muzzleFlashPrefab;

	UnitController unitController;
	Animator animator;
	TargetingControl targeting;

	public float aimDrift = 0.0f;
	public float weaponDrift = 0.0f;
	public float aimBonus = 0.0f;

	public float range;

	bool coolingDown;
	public int burstSize = 5;
	int burstCount;
	public float burstCooldown = 2;
	float burstTimer = 0;

	bool reloading;
	public int magazineSize = 40;
	int magazineCount;
	public float reloadTime = 2.0f;
	float reloadTimer;

	Transform muzzle;
	Transform magazine;

	Light muzzleLight;

	bool readyToFire;
	
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

		if (reloading) {
			reloadTimer -= Time.deltaTime;
			if (reloadTimer < 0) {
				FinishReloading();
			}
			animator.SetBool("MainWeaponReady", false);
		} else if (coolingDown) {
			burstTimer -= Time.deltaTime;
			if (burstTimer < 0) {
				FinishCoolingDown();
			}
			animator.SetBool("MainWeaponReady", false);
		} else {
			animator.SetBool("MainWeaponReady", true);

		}

		if (muzzleLight.intensity > 0.1f) {
			muzzleLight.intensity = Mathf.Lerp(muzzleLight.intensity, 0, Time.deltaTime * 10);
		} else {
			muzzleLight.intensity = 0;
		}
	}

	public void Fire(Transform target) {
		if (reloading || coolingDown) return;

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

		Instantiate(muzzleFlashPrefab, muzzle.position + (muzzle.forward * 1.0f), transform.rotation);

		GameObject bulletTrail = Instantiate(bulletTrailPrefab, muzzle.position, transform.rotation) as GameObject;
		muzzleLight.intensity = 1;
		Ray trajectory = new Ray(muzzle.position, muzzle.forward);
		RaycastHit hit;
		float distanceToTarget = 0.0f;
		Vector3 hitLocation;
		if (Physics.Raycast(trajectory, out hit, range)) {
			distanceToTarget = Vector3.Distance(hit.point, muzzle.position);
			hitLocation = hit.point;
			Vector4 damageInfo = new Vector4(hit.point.x, hit.point.y, hit.point.z, 0.15f);
			hit.transform.SendMessage("TakeDamage", damageInfo, SendMessageOptions.DontRequireReceiver);

			Vector3 incomingVec = hit.point - muzzle.position;
			Vector3 reflectVec = Vector3.Reflect(incomingVec, hit.normal);

			Quaternion hitRotation = Quaternion.LookRotation(reflectVec);
			hitRotation *= Quaternion.AngleAxis(90, Vector3.right);

			if (!hit.transform.tag.Equals("Shield")) Instantiate(bulletHitPrefab, hit.point, hitRotation);


		} else {
			distanceToTarget = range;
			hitLocation = trajectory.GetPoint(range);
		}

		bulletTrail.transform.localScale = new Vector3(5.0f, 5.0f, distanceToTarget);
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

}









