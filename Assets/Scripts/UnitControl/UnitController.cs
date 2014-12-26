using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class UnitController : MonoBehaviour {

	CharacterController characterController;
	
	public Transform targetCollision;
	public GameObject headModel;
	
	public string unitName = "NoName";
	
	float maxHealth = 5.0f;
	float health = 5.0f;
	float armorRating = 0.0f;
	
	float deathTimer = 10.0f;
	public bool dead;
	public bool dummy;
	public EnemyCaptain enemyCaptain;
	
	Animator animator;
	bool isMoving;
	PathMover pathMover;

	TargetingControl targetingControl;
	MapControl mapControl;

	Transform rightHandAttach;
	Transform leftHandAttach;

	MainWeapon mainWeapon;
	Transform mainWeaponTarget;
	
	List<Equipment> equipments = new List<Equipment>();

	CoverPoint currentCoverPoint;
	public Vector3 currentDestination;

	public bool selected;
	public GameObject unitSelectArt;
	
	public bool useColorFader;

	Spawner spawner;
	float lifeTime;	
	
	void Start () {
	
		if (useColorFader) {
			UnitColorFade colorFade = gameObject.AddComponent<UnitColorFade>();
			if (headModel) colorFade.SetHeadRenderer(headModel.renderer);
		}
		
		animator = GetComponent<Animator> ();

		characterController = GetComponent<CharacterController> ();
		if (!characterController)
				return;

		GameObject mapObj = GameObject.Find ("Map");
		mapControl = mapObj.GetComponent<MapControl> ();
		if (!mapControl) 
			Debug.Log (transform.name + " can't find the map.");

		pathMover = GetComponent<PathMover> ();
		
		if (!pathMover) {
			Debug.Log (transform.name + " can't find thier path mover.");
		} else {
			pathMover.SetUp(mapControl);
		}

		targetingControl = GetComponent<TargetingControl>();
		targetingControl.SetUp(mapControl, animator);

		UnitInventory inventory = GetComponent<UnitInventory>();
		inventory.CreateInventory();

		if (!dummy) gameObject.AddComponent<UnitBehaviors>().SetUp(this, mapControl);
		
		GameObject unitSelect = Instantiate(unitSelectArt) as GameObject;
		unitSelect.GetComponent<UnitSelect>().SetUp(this);	
		

	}
	
	public void SetStats(UnitStatistics.UnitStats stats) {
	
		gameObject.name = stats.name + " " + gameObject.GetInstanceID();
		
		maxHealth = stats.maxHealth;
		health = maxHealth;
		armorRating = stats.armorRating;
	}
	
	public void SetAttachPoints(Transform rightHand, Transform leftHand) {
		rightHandAttach = rightHand;
		leftHandAttach = leftHand;		
	}
	
	void Update() {
	
		if (dead) {
			deathTimer -= Time.deltaTime;
			if (deathTimer < 0) Destroy(gameObject);
		}
		
		if (dummy) return;
			
		if (mainWeaponTarget && mainWeaponTarget.tag.Equals("Dead"))
			ClearMainTarget();
			
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
		
		lifeTime += Time.deltaTime;

	}

	public void SetUpColliders() {
		Collider[] collisionObjs = transform.GetComponentsInChildren<Collider>();
		foreach (Collider obj in collisionObjs) {
			obj.gameObject.AddComponent<InputRepeater>().SetTarget(transform);
		}
	}
	public void SetSpawner(Spawner _spawner) {
		spawner = _spawner;
	}
	public Spawner GetSpawner() {
		return spawner;
	}
	public void SetEnemyCaptain(EnemyCaptain newCaptain) {
		enemyCaptain = newCaptain;
	}
	public void RemoveEnemyCaptain() {
		enemyCaptain = null;
		GetComponent<EnemyAI>().ResetAI();
	}

	public Animator GetAnimator() {
		if (!animator) 
			Debug.Log("No Animator to get");
		return animator;
	}
	public void Spawn(Vector3 rallyPoint) {
		if (!animator) 
			animator = GetComponent<Animator> ();
		animator.SetTrigger("Spawning");
		DelayedMove delayedMove = gameObject.AddComponent<DelayedMove>();
		if (enemyCaptain) {
			delayedMove.SetUp(enemyCaptain.transform.position, 1.5f);
		} else {
			delayedMove.SetUp(rallyPoint, 1.5f);
		}
		
	}

	public bool IsMoving() {
		return isMoving;
	}
	public bool HasTarget() {
		if (mainWeaponTarget) return true;
		return false;
	}

	public void MoveTo(Vector3 location) {
		
		if ((location - transform.position).magnitude < mapControl.GetGridSize() / 3) return; // quit if the path is too short

		MapControl.MapDataPoint newMapCell = mapControl.GetMapData(location);
		
		if (newMapCell.isCollision) return; // dont want to move into collision
		
		if ( !pathMover.HasPath() ) animator.SetTrigger("StartMoving");
		
		pathMover.StartPath(location);

		MapControl.MapDataPoint currentMapCell = mapControl.GetMapData(transform.position);
		currentMapCell.isClaimed = false;
		currentMapCell.isOccupied = false;
		
		currentCoverPoint = null;
		currentDestination = location;
		animator.SetInteger ("InCover", 0);
	}
	

	
	public void AddMainWeapon(MainWeapon weapon) {
		targetingControl.SetWeaponRange(weapon.range);
		mainWeapon = weapon;
		weapon.Attach(rightHandAttach, this);
	}
	
	public MainWeapon GetMainWeapon() {
		return mainWeapon;
	}
		
	public void AddEquipment(Equipment equipment) {
		if (!equipments.Contains(equipment)) equipments.Add(equipment);
		equipment.Attach(leftHandAttach, this);
	}
	
	public void RemoveEquipment(Equipment equipment) {
		if (equipments.Contains(equipment)) equipments.Remove(equipment);
	}
	
	public Equipment GetEquipment(string name) {
		Equipment item = null;
		foreach(Equipment equipment in equipments) {
			if (equipment.name.Equals(name)) item = equipment;
		}
		return item;
	}
	
	public Equipment[] GetAllEquipment() {
		return equipments.ToArray();
	}
	
	public void CancelEquipment() {
		foreach(Equipment equipment in equipments) {
			equipment.Cancel();
		}
	}	
	
	public TargetingControl GetTargeting() {
		return GetComponent<TargetingControl>();
	}

	public void SetTargetCollision(Transform newTargetCollision) {
		targetCollision = newTargetCollision;
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
			mainWeapon.StartCoolingDown();
			targetingControl.SetTarget(target.transform);
			mainWeaponTarget = target.transform;
		}
	}
	
	public void ClearMainTarget() {
		mainWeaponTarget = null;
		targetingControl.ClearTarget();
	}
	
	public void ReplaceMagazine() {
		mainWeapon.ReplaceMagazine();
	}

	public void tap(TouchManager.TapEvent touchEvent) {
		Events.Send(gameObject, "UnitSelected", this);
	}

	public void Select() {
		if (dead) return;
		selected = true;
	}

	public void Deselect() {
		selected = false;
		pathMover.ClearPathLine();
		CancelEquipment();
	}

	public void FinishedMove(MapControl.MapDataPoint mapCell) {

		if (mapCell.coverPoint) {
			
			currentCoverPoint = mapCell.coverPoint;
			bool rightSideOfMap = transform.position.x > ((float)mapControl.GetMapSize().x/2.0f);
						
			if (currentCoverPoint.IsLeftSideClear()) {
				animator.SetInteger ("InCover", 1);
			} else if (currentCoverPoint.IsRightSideClear()) {
				animator.SetInteger ("InCover", 2);
			} else {
				if (rightSideOfMap) {
					animator.SetInteger ("InCover", 1);
				} else {
					animator.SetInteger ("InCover", 2);
				}
			}
			
		} else {
			animator.SetTrigger("StopMoving");
		}
		
		SendMessage("MoveComplete", SendMessageOptions.DontRequireReceiver);
		
	}

	public CoverPoint GetCurrentCoverPoint() {
		return currentCoverPoint;
	}



	public void RotateTo(Quaternion goal) {
		pathMover.RotateTo (goal);
	}

	public float GetArmorRating() {
		return armorRating;
	}
	
	public float GetHealth() {
		return health;
	}
	
	public float GetNormalizedHealth() {
		return health/maxHealth;
	}
	
	
	UnitPane unitPane;
	public void SetUnitPane(UnitPane _unitPane) {
		unitPane = _unitPane;
	}
	
	public void TakeDamage(Vector4 damageInfo) {
		if (dead || dummy) return;
		
		if (!HasTarget()) 
			targetingControl.ScanForTargets();
			
		if (unitPane) unitPane.TakeDamage();	
	
		health -= damageInfo.w;

		if (health < 0) 
			Die ();
	}


	public void Die() {
		if (dead) return;
		Deselect();
		
		MapControl.MapDataPoint currentMapCell = mapControl.GetMapData(transform.position);
		currentMapCell.isClaimed = false;
		currentMapCell.isOccupied = false;
		
		transform.tag = "Dead";
		transform.name += " is dead!";
		dead = true;
		GetComponent<RagDollControl>().enableRagDoll ();
		
		if (spawner) spawner.SpawnedUnitDead(lifeTime);
		
		
		//clean up some components
		Destroy(GetComponent<LineDrawer>());
		Destroy(GetComponent<UnitBehaviors>());
		Destroy(GetComponent<EnemyAI>());
		Destroy(GetComponent<EnemyCaptain>());
		
		//drop anything being held
		gameObject.BroadcastMessage("DropItem", SendMessageOptions.DontRequireReceiver);
	}
	
	void OnDestroy() {
		if (mainWeapon) Destroy(mainWeapon.gameObject);
	}
}
