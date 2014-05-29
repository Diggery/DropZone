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
		animator.SetFloat("Velocity", characterController.velocity.magnitude);
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

	public void MoveTo(Vector3 location) {
		animator.SetTrigger("StartMoving");
		pathMover.SetDestination(location);	
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

	/// <summary>
	/// Gets the target offset.
	/// </summary>
	/// <returns>The target offset.</returns>
	public Vector3 GetTargetOffset() {
		if (!targetCollision) return transform.position;
		BoxCollider collision = targetCollision.GetComponent<BoxCollider>();
		if (!collision) return Vector3.zero;
		return collision.center;
	}

	public void Hit(Vector4 damageInfo, Transform location) {
		print ("hit " + location.name);
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
//			Vector3 targetPos = GameObject.FindGameObjectWithTag("Enemy").transform.position;
//			if (coverPoint.IsPositionVisible(targetPos)) {
//				Debug.DrawLine(coverPoint.transform.position, targetPos,  Color.green, 100);
//				
//			} else {
//				Debug.DrawLine(coverPoint.transform.position, targetPos,  Color.red, 100);
//			}
		} else {
			print ("NoCoverHere");
		}

	}


}
