using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class UnitControl : MonoBehaviour {

    Targeting targeting;
    InputControl inputControl;
    UnitMover unitMover;

    Weapon mainWeapon;
    Weapon sideArm;
    Equipment equipment;
    Inventory inventory;

    Transform weaponAttach;
    Transform holsterAttach;
    Transform backAttach;
    Transform torso;

    Animator animator;

    MapDataPoint currentMapData;

    public  bool dummy = false;
    [HideInInspector]
    public  bool dead = false;

    public void SetAttachPoint() {
        weaponAttach = transform.Find("Rig:RightHand_Attach");
        holsterAttach = transform.Find("Rig:Holster_Attach");
        backAttach = transform.Find("Rig:Back_Attach");
        torso = transform.Find("Rig:Spine2_Skel");
    }

    void Start() {
        animator = GetComponent<Animator>();
        inventory = GetComponent<Inventory>();
        unitMover = GetComponent<UnitMover>();
        inputControl = InputControl.GetInstance();
       
    }

    void Update() {
        animator.SetFloat("random", Random.value);

        if (Input.GetKeyDown("space")) {
            mainWeapon.Fire();
        }

    }

    public Targeting GetTargeting() {
        if (!targeting) targeting = GetComponent<Targeting>();
        return targeting;
    }

    public Inventory GetInventory() {
        if (!inventory) inventory = GetComponent<Inventory>();
        return inventory;
    }


    public Transform GetAimTarget() {
        return torso;
    }

    public float GetArmorRating() {
        return 0;
    }

    public void SetCurrentMapData(MapDataPoint mapData) {
        currentMapData = mapData;
    }

    public MapDataPoint GetCurrentMapData() {
        return currentMapData;
    }

    public void ToggleWeapon(string type) {
        Weapon currentWeapon = targeting.GetCurrentWeapon();
        if (type.Equals("MainWeapon")) {
            if (currentWeapon.type == Weapon.Type.MainWeapon) {
                print("stowing mainweapon");
                mainWeapon.Attach(backAttach);

            } else {
                print("pulling mainweapons");
                mainWeapon.Attach(weaponAttach);
                targeting.SetCurrentWeapon(mainWeapon);               
            }
        } else if (type.Equals("SideArm")) {
            if (currentWeapon.type == Weapon.Type.SideArm) {
                print("stowing sidearm");
                sideArm.Attach(holsterAttach);
            } else {
                print("pulling sidearm");
                sideArm.Attach(weaponAttach);
                targeting.SetCurrentWeapon(sideArm);               
            }
        } else {
            Debug.Log(type + " is not a type of weapon");
        }
    }

    public void SetMainWeapon(Weapon _mainWeapon) {
        mainWeapon = _mainWeapon;
        mainWeapon.SetUp(weaponAttach, this);
        targeting.SetCurrentWeapon(mainWeapon);
    }

    public void SetSideArm(Weapon _sideArm) {
        sideArm = _sideArm;
        sideArm.SetUp(holsterAttach, this);
    }

    public void SetEquipment(Equipment _equipment) {
        equipment = _equipment;
    }

    public void HitDeflected(DamageInfo damage) {

    }

    public void MoveTo(Vector3 mapPos) {
        unitMover.StartPath(mapPos);
    }

    public void OnPointerDown(PointerEventData eventData) {
        inputControl.SetSelectedUnit(this);
    }

    public void TakeDamage(DamageInfo damage) {
        
    }

    public class DamageInfo {
        public Vector3 hitPos;
        public float damage;

        public enum DamageType {
            Projectile,
            Energy,
            Explosive}
        ;

        public DamageType damageType;

        public DamageInfo(Vector3 hitPos, float damage, DamageType damageType) {
            this.hitPos = hitPos;
            this.damage = damage;
            this.damageType = damageType;
        }
    }

    public void ShowPath(Vector3 mapPos) {
        unitMover.UpdateTempPath(mapPos);
    }
}
