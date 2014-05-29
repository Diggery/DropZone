using UnityEngine;
using System.Collections;

public class SecondaryWeapon : MonoBehaviour {
	/*
	UnitInventory unitInventory;

	public GameObject projectilePrefab;
	public GameObject muzzleFlashPrefab;

	Transform muzzle;
	float firingTimer;

	public bool autoFire = false;
	public bool fireWhenReady = true;

	float shotTimer;
	int shotsQueued;

	int burstCount;
	public int burstSize;

	public enum weaponState { warmingUp, readyToFire, coolingDown, empty };
	weaponState currentState = weaponState.readyToFire;

	float timer;
	public float warmUpTime;
	public float coolDownTime;

	public Transform target;

	public void SetInventory(UnitInventory inventory) {
		unitInventory = inventory;
	}
	
	void Update () {
		if (currentState == weaponState.empty && mechInventory.CheckMortarRounds() > 0) {
			StartCoolingDown();
		}

		if (timer > 0) {
			timer -= Time.deltaTime;
			if (timer < 0) ChangeState();
		}

		if (target) {
			Vector3 relativePos = target.position - transform.position;
			Quaternion goalRot = Quaternion.LookRotation(relativePos);
			goalRot *= Quaternion.AngleAxis(180, Vector3.up);
			transform.rotation = Quaternion.Slerp(transform.rotation, goalRot, Time.deltaTime * 5);
			if (currentState == weaponState.readyToFire && fireWhenReady) {
				fireWhenReady = autoFire;
				shotsQueued = burstCount;
			}
		}

		if (shotsQueued > 0) {
			shotTimer -= Time.deltaTime;
			if (shotTimer < 0) {
				shotTimer = 0.1f;
				Fire();
			}
		}

	}

	public void Attach(Transform attachPoint) {

		transform.parent = attachPoint;
		transform.localPosition = Vector3.zero;
		transform.localRotation = Quaternion.identity;
		muzzle = transform.Find("Muzzle");
		if (!muzzle) Debug.Log("Add a muzzle locator to the " + transform.name);

		burstCount = burstSize;
	}

	public void SetTarget(Transform newTarget) {
		fireWhenReady = true;
		if (target == newTarget) return;
		target = newTarget;
		if (burstCount < burstSize) {
			int rounds = mechInventory.GetMortarRounds(burstSize - burstCount);
			burstCount += rounds;
		}
		StartWarmingUp();
	}
	public void ClearTarget() {
		target = null;
	}

	public void Fire() {
		if (currentState != weaponState.readyToFire) return;

		if (burstCount < 0) {
			StartCoolingDown();
			return;
		}

		burstCount--;
		if (burstCount <= 0) StartCoolingDown();
		GameObject newProjectile = Instantiate(projectilePrefab, muzzle.position, muzzle.rotation) as GameObject;
		newProjectile.GetComponent<ProjectileControl>().SetUp(target);

	}

	public void ChangeState() {
		currentState = weaponState.readyToFire;
	}


	public void StartWarmingUp() {
		currentState = weaponState.warmingUp;
		timer = warmUpTime;
	}

	public void StartCoolingDown() {
		currentState = weaponState.coolingDown;
		timer = coolDownTime;
		shotsQueued = 0;
		if (mechInventory) print ("inventory is hrt");
		int rounds = mechInventory.GetMortarRounds(burstSize);
		if (rounds == 0) {
			print ("Out of Ammo");
			autoFire = false;
			currentState = weaponState.empty;
		}
		burstCount = rounds;
	}

	public bool IsReady() {
		return currentState == weaponState.readyToFire;
	}

	public bool HasAmmo() {
		return currentState != weaponState.empty;
	}
	*/
}
