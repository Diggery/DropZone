using UnityEngine;
using System.Collections;

public class MechController : UnitController {
/*

	CharacterController characterController;
	PathMover pathMover;
	public Transform model;

	public Transform mainWeaponAttach;
	public Transform[] secondaryWeaponAttach;

	public TextMesh DebugText;

	public Animator animator;


	Transform upperBody;
	
	bool isMoving;
	public bool isCautious;

	TargetingControl targetingControl;
	MainWeapon mainWeapon;

	SecondaryWeapon[] secondaryWeapons;

	public Transform mainWeaponTarget;
	
	public GameObject dronePrefab;

	void Start () {

		targetingControl = GetComponent<TargetingControl>();

		characterController = GetComponent<CharacterController>();
		if (!characterController) return;

		pathMover = GetComponent<PathMover>();
		pathMover.SetUp();

		secondaryWeapons = new SecondaryWeapon[secondaryWeaponAttach.Length];
		MechInventory inventory = GetComponent<MechInventory>();
		inventory.CreateInventory();
		SetUpColliders();
	
	}
	
	void Update () {
		if (!characterController) return;
		float currentSpeed = characterController.velocity.magnitude;
		float maxSpeed = pathMover.GetMaxSpeed();
		animator.SetFloat("NormalizedVelocity", currentSpeed/maxSpeed);

		if (pathMover.HasPath()) {
			isMoving = true;
		} else {
			isMoving = false;
		}

		animator.SetBool("HasTarget", mainWeaponTarget);
	}
	
	public void MoveTo(Vector3 location) {
		animator.SetTrigger("StartMoving");
		pathMover.SetDestination(location);	
	}
	
	public bool IsMoving() {
		return isMoving;
	}
	
	public void DoneMoving() {
	}
	
	public void Idle() {
	}

	public Animator GetAnimator() {
		return animator;
	}

	public TargetingControl GetTargeting() {
		return GetComponent<TargetingControl>();
	}

	public MainWeapon GetMainWeapon() {
		return mainWeapon;
	}

	public void AddMainWeapon(MainWeapon weapon) {
		mainWeapon = weapon;
		weapon.Attach(mainWeaponAttach, this);
	}

	public void AddSecondaryWeapon(SecondaryWeapon weapon, int slot) {
		secondaryWeapons[slot] = weapon;
		weapon.Attach(secondaryWeaponAttach[slot]);
	}

	public void ReplaceMagazine() {
		mainWeapon.ReplaceMagazine();
	}
	public void SetMainTarget(GameObject target) {
		if (mainWeaponTarget == target.transform) {
			mainWeaponTarget = null;
		} else {
			mainWeapon.StartCoolingDown();
			targetingControl.SetTarget(target.transform);
			mainWeaponTarget = target.transform;
		}
	}

	public void SetSecondaryTarget(GameObject target) {
		secondaryWeapons[0].SetTarget(target.transform);
	}
	public void FireMainWeapon() {
		if (mainWeaponTarget) mainWeapon.Fire(mainWeaponTarget);
	}

	public void FireSecondaryWeapon() {
		secondaryWeapons[0].Fire();
	}

	public GameObject LaunchDrone() {
		GameObject newDrone = Instantiate(dronePrefab, transform.position + new Vector3 (0, 10, 0), Quaternion.AngleAxis(90, Vector3.right)) as GameObject;
		return newDrone;
	}

*/
}
