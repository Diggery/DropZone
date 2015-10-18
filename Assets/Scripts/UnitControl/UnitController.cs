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
	
	float healTimer = 5;
	float healCoolDown = 1;
	float healTimeOut = 5;
	
	public bool dead;
	public bool dummy;
	public bool showDebug;
	
	public EnemyCaptain enemyCaptain;
	
	
	Animator animator;
	bool isMoving;
	PathMover pathMover;
	
	DragControl dragControl = null;

	TargetingControl targetingControl;
	MapControl mapControl;
	GameControl gameControl;
	
	Transform rightHandAttach;
	Transform leftHandAttach;

	MainWeapon mainWeapon;
	Transform mainWeaponTarget;
	
	Equipment equipment;

	CoverPoint currentCoverPoint;
	public Vector3 currentDestination;

	public bool selected;
	public GameObject unitSelectArt;
	GameObject unitSelect;
	
	public bool useColorFader;

	

	Spawner spawner;
	
	//timers 
	float lifeTime;	
	float deathTimer = 10.0f;
	float alertCooldown = -1.0f;	
	
	void Start () {
		
		if (useColorFader) {
			UnitColorFade colorFade = gameObject.AddComponent<UnitColorFade>();
			if (headModel) colorFade.SetHeadRenderer(headModel.GetComponent<Renderer>());
		}
		
		animator = GetComponent<Animator> ();

		characterController = GetComponent<CharacterController> ();
		if (!characterController)
				return;

		GameObject mapObj = GameObject.Find ("Map");
		mapControl = mapObj.GetComponent<MapControl> ();
		if (!mapControl) Debug.Log (transform.name + " can't find the map.");		
		gameControl = mapObj.GetComponent<GameControl> ();
		if (!gameControl) Debug.Log (transform.name + " can't find the game control.");		
		
		
		// add input handlers		
		InputControl inputControl = mapObj.GetComponent<InputControl> ();
		if (!inputControl) 
			Debug.Log (transform.name + " can't find the inputControl.");
		gameObject.AddComponent<UnitInput>().SetInputControl(inputControl, this);
		//
		
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
		
		unitSelect = Instantiate(unitSelectArt) as GameObject;
		unitSelect.GetComponent<UnitSelect>().SetUp(this);	
	}
	
	public void SetStats(UnitStatistics.UnitStats stats) {
	
		gameObject.name = stats.name;
		
		maxHealth = stats.maxHealth;
		health = maxHealth;
		armorRating = stats.armorRating;
	}
	
	public void SetAttachPoints(Transform rightHand, Transform leftHand) {
		rightHandAttach = rightHand;
		leftHandAttach = leftHand;		
	}
	
	public Transform GetAttachPoint(string name) {
	
		switch (name) {
		case "RightHand" :
			return rightHandAttach;
			
		case "LeftHand" :
			return leftHandAttach;
			
		case "Target" :
			return targetCollision;
		}
		
		return targetCollision;
	}
	
	void Update() {
	
		if (dead) {
			deathTimer -= Time.deltaTime;
	
			//if (deathTimer < 0) Destroy(gameObject);
			
		}
		
		if (dummy) return;
			
		if (mainWeaponTarget && mainWeaponTarget.tag.Equals("Dead"))
			ClearMainTarget();
			
		//give the animator a random number
		animator.SetFloat("Random", Random.value);

		float currentVelocity = characterController.velocity.magnitude;
		
		animator.SetFloat("Velocity", currentVelocity);
		animator.SetBool("HasTarget", mainWeaponTarget);
		
		lifeTime += Time.deltaTime;
		if (alertCooldown > 0) alertCooldown -= Time.deltaTime;
		
		if (!dead && health < maxHealth) {
			healTimer -= Time.deltaTime;
			if (healTimer < 0) {
				gameObject.SendMessage("Heal", 0.5f);
			}
		}

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
	public void IsMoving(bool state) {
		isMoving = state;
	}
	public bool IsMoving() {
		return isMoving;
	}
	public bool HasTarget() {
		if (mainWeaponTarget) return true;
		return false;
	}

	public void MoveTo(Vector3 location) {
	
		if (showDebug) {
			GameObject[] debugMarkers = GameObject.FindGameObjectsWithTag("DebugMarker");
			foreach (GameObject marker in debugMarkers) Destroy(marker);
		}
		
		if (!mapControl.IsValidLocation(location)) {
			print ("invalid location");
			return;
		} 
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
		
		
		// if they are trying to start draggin someone then you tell them to move before the get there.. stop it.
		if (dragControl) {
			if (dragControl.GetDragMarker().IsMarkerWaiting()) {
				dragControl.GetDragMarker().CancelDragging();
			}
		}
	}
	
	public void AddMainWeapon(MainWeapon weapon) {
		targetingControl.SetWeaponRange(weapon.range);
		mainWeapon = weapon;
		weapon.Attach(rightHandAttach, this);
	}
	
	public MainWeapon GetMainWeapon() {
		return mainWeapon;
	}
		
	public void AddEquipment(Equipment _equipment) {
		equipment = _equipment;
		equipment.Attach(leftHandAttach, this);
	}
	
	public Equipment GetEquipment() {
		return equipment;
	}
	
	public MainWeapon GetWeapon() {
		return mainWeapon;
	}
	
	public void CancelEquipment() {
		equipment.Cancel();
	}	
	
	public void TriggerEquipment() {
		equipment.Trigger();
	}	
		
	public void RemoveEquipment(Equipment _equipment) {
		equipment = null;
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

	public void Hit(DamageInfo damageInfo, Transform location) {
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

	public void Select() {
		if (dead) return;
		unitSelect.SendMessage("Select");
		selected = true;
	}
	public void OpenPane() {
		if (unitPane) 
			unitPane.Open ();
	}
		
	public void Deselect() {
		selected = false;
		pathMover.ClearPathLine();
		if (equipment) CancelEquipment();
	}
	
	public void StopMoving() {
		pathMover.FinishPath(transform.position);
	}

	public void FinishedMove(MapControl.MapDataPoint mapCell) {

		if (mapCell.coverPoint) {
			SetCoverState(mapCell.coverPoint);
		} else {
			animator.SetTrigger("StopMoving");
		}
		
		if (showDebug) {
			mapControl.MarkAllVisible(mapCell.mapPos, targetingControl.GetWeaponRange());
		}
		
		SendMessage("MoveComplete", SendMessageOptions.DontRequireReceiver);
	}

	public void SetCoverState() {
		SetCoverState(GetNewCoverPoint());
	}
	
	public void SetCoverState(CoverPoint coverPoint) {
		currentCoverPoint = coverPoint;	
		if (coverPoint.IsLowCover()) {
			animator.SetInteger ("InCover", 3);
		} else {
			
			bool rightSideOfMap = transform.position.x > ((float)mapControl.GetMapSize().x/2.0f);
			
			if (coverPoint.IsLeftSideClear()) {
				animator.SetInteger ("InCover", 1);
			} else if (coverPoint.IsRightSideClear()) {
				animator.SetInteger ("InCover", 2);
			} else {
				if (rightSideOfMap) {
					animator.SetInteger ("InCover", 1);
				} else {
					animator.SetInteger ("InCover", 2);
				}
			}
		}		
	}

	public CoverPoint GetNewCoverPoint() {
		return mapControl.GetCoverPoint(transform.position);
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
	
	public class DamageInfo {
		public Vector3 hitPos;
		public float damage;
		public enum DamageType { Projectile, Energy, Explosive };
		public DamageType damageType;
		
		public DamageInfo(Vector3 hitPos, float damage, DamageType damageType) {
			this.hitPos = hitPos;
			this.damage = damage;
			this.damageType = damageType;
		}
	}	
	
	public void TakeDamage(DamageInfo damageInfo) {
		if (dead || dummy) return;
		
		if (!HasTarget()) 
			targetingControl.ScanForTargets();
			
		if (unitPane) unitPane.TakeDamage();	
	
		health -= damageInfo.damage;
		
		if (health < 0) {  //if health is less than 0 die
			Die (damageInfo);
		} else if (tag.Equals("Player") && alertCooldown < 0) { // warn the game control if injured, but not too often
		 	alertCooldown = 2.0f;
			if (GetNormalizedHealth() < 0.5) {
				gameControl.SquadieInjured(this);
			} else {
				gameControl.SquadieHit(this);
			}
		}
		healTimer = healTimeOut;
	}
	
	public void Heal(float amount) {
		if (unitPane) unitPane.Heal();	
		health = Mathf.Min(health + amount, maxHealth);
		healTimer = healCoolDown;
	}
	
	// -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // 
	// A few functions to control when someone is getting dragged
	
	public void StartDragging(DragControl _dragControl) {
		dragControl = _dragControl;
		animator.SetBool("IsDragging", true);
	}
	
	public void PauseDragging() {
		if (!dragControl) {
			StopDragging();
			return;		
		}
		if (gameControl.CheckEvacRange(dragControl)) {
			StopDragging();
			return;
		}
			
		dragControl.StopDragging();
	}
	
	public bool IsDragging() {
		if (dragControl) {
			return true;
		}
	
		return false;
	}
	
	public void ResumeDragging() {
		if (!dragControl) {
			StopDragging();
			return;
		}
		dragControl.StartDragging();
	}
	
	public void StopDragging() {
		if (dragControl) dragControl.StopDragging();
		dragControl = null;
		animator.SetBool("IsDragging", false);
	}
	// -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- // -- 
	
	public void Die() {
		Die(new DamageInfo(Vector3.down, 5, DamageInfo.DamageType.Projectile));
	}
	
	public void Die(DamageInfo damageInfo) {
		if (dead) return;
		
		//if its a player, tell the game control about it
		if (tag.Equals("Player")) {
			gameControl.SquadieDead(this);

		}
		Events.Send(gameObject, "DeselectUnit", this);
		
		Vector3 direction = damageInfo.hitPos;
		
		MapControl.MapDataPoint currentMapCell = mapControl.GetMapData(transform.position);
		currentMapCell.isClaimed = false;
		currentMapCell.isOccupied = false;
		
		transform.tag = "Dead";
		transform.name += " is dead!";
		dead = true;
		RagDollControl ragdoll = GetComponent<RagDollControl>();
		if (damageInfo.damageType == DamageInfo.DamageType.Explosive) {
			direction.y += 0.75f;
			ragdoll.enableRagDoll (direction * 100);
		} else {
			ragdoll.enableRagDoll ();
		}
		
		
		if (spawner) spawner.SpawnedUnitDead(lifeTime);
		
		
		//clean up some components
		Destroy(GetComponent<LineDrawer>());
		Destroy(GetComponent<UnitBehaviors>());
		Destroy(GetComponent<EnemyAI>());
		Destroy(GetComponent<EnemyCaptain>());
		
		//drop anything being held
		gameObject.BroadcastMessage("DropItem", SendMessageOptions.DontRequireReceiver);
		
		//stop dragging anything
		StopDragging();
		
	}
	
	void OnDestroy() {
		if (mainWeapon) Destroy(mainWeapon.gameObject);
	}
	
	public void OnCollisionEnter(Collision collision) {
		print ("Collion");
	
		if (collision.transform.tag.Equals("LowWall")) {
			print ("Low Wall");
		}
	}
}
