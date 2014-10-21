using UnityEngine;
using System.Collections;

public class UnitController : MonoBehaviour {

	CharacterController characterController;

	public Transform model;

	public Transform targetCollision;
	public Animator animator;
	bool isMoving;
	PathMover pathMover;

	TargetingControl targetingControl;
	MapControl mapControl;

	MainWeapon mainWeapon;
	public Transform mainWeaponAttach;
	Transform mainWeaponTarget;

	CoverPoint currentCoverPoint;


	void Start () {
		animator = GetComponentInChildren<Animator>();

		characterController = GetComponent<CharacterController>();
		if (!characterController) return;

		GameObject mapObj = GameObject.Find("Map");
		mapControl = mapObj.GetComponent<MapControl>();

		pathMover = GetComponent<PathMover>();
		pathMover.Init(mapControl);

		targetingControl = GetComponent<TargetingControl>();
		targetingControl.Init(mapControl, animator);

		//secondaryWeapons = new SecondaryWeapon[secondaryWeaponAttach.Length];
		UnitInventory inventory = GetComponent<UnitInventory>();
		inventory.CreateInventory();
		//SetUpColliders();
		
	}

	void Update() {
		//give the animator a random number
		animator.SetFloat("Random", Random.value);

		float currentVelocity = characterController.velocity.magnitude;
		animator.SetFloat("Velocity", currentVelocity);
		if (currentVelocity > 0.01f) {
			isMoving = true;
		} else {
			isMoving = false;
		}

		animator.SetBool("HasTarget", mainWeaponTarget);
	}

	public void SetUpColliders() {
		Collider[] collisionObjs = transform.GetComponentsInChildren<Collider>();
		foreach (Collider obj in collisionObjs) {
			obj.gameObject.AddComponent<InputRepeater>().SetTarget(transform);
		}
	}

	public Animator GetAnimator() {
		return animator;
	}


	public bool IsMoving() {
		return isMoving;
	}
	public bool HasTarget() {
		if (mainWeaponTarget) return true;
		return false;
	}

	public void MoveTo(Vector3 location) {
		animator.SetTrigger("StartMoving");
		pathMover.SetDestination(location);	
		currentCoverPoint = null;
	}

	public MainWeapon GetMainWeapon() {
		return mainWeapon;
	}
	
	public void AddMainWeapon(MainWeapon weapon) {
		mainWeapon = weapon;
		weapon.Attach(mainWeaponAttach, this);
	}

	public TargetingControl GetTargeting() {
		return GetComponent<TargetingControl>();
	}

	public Transform GetTargetCenter() {
		if (!targetCollision) {
			return transform;
		}
		return targetCollision;
	}


	public Vector3 GetTargetOffset() {
		if (!targetCollision) return transform.position;
		BoxCollider collision = targetCollision.GetComponent<BoxCollider>();
		if (!collision) return Vector3.zero;
		return collision.center;
	}

	public Vector3 GetTargetPosition() {
		if (!targetCollision) return transform.position;
		BoxCollider collision = targetCollision.GetComponent<BoxCollider>();
		if (!collision) return Vector3.zero;
		return collision.center + targetCollision.position;
	}

	public void Hit(Vector4 damageInfo, Transform location) {
		print ("hit " + location.name);
	}

	public void SetMainTarget(GameObject target) {
		if (mainWeaponTarget == target.transform) {
			mainWeaponTarget = null;
		} else {
			print ("Setting target to " + target.name);
			mainWeapon.StartCoolingDown();
			targetingControl.SetTarget(target.transform);
			mainWeaponTarget = target.transform;
		}
	}
	
	public void ClearMainTarget() {
		mainWeaponTarget = null;
		targetingControl.ClearTarget();
	}
	
	public void FireMainWeapon() {
		if (mainWeaponTarget) mainWeapon.Fire(mainWeaponTarget);
	}

	public void ReplaceMagazine() {
		mainWeapon.ReplaceMagazine();
	}

	public void tap(TouchManager.TapEvent touchEvent) {
		Events.Send(gameObject, "UnitSelected", this);
	}

	public void FinishedMove(CoverPoint coverPoint) {

		if (coverPoint) {
			print ("Got a Point");
			animator.SetTrigger("EnterCover");
			currentCoverPoint = coverPoint;
		} else {
			print ("NoCoverHere");
		}
	}

	public CoverPoint GetCoverPoint() {
		return currentCoverPoint;
	}



	public void RotateTo(Quaternion goal) {
		pathMover.RotateTo (goal);
	}
}
