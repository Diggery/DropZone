using UnityEngine;
using System.Collections;

public class Inventory : MonoBehaviour {

    UnitControl unitControl;

    public InventoryObject intentoryObject;

    public int MagazineCount;

    public GameObject[] weapons;

    public void AttachHead() {
        if (!unitControl) unitControl = GetComponent<UnitControl>();

        GameObject headObj = intentoryObject.GetHead(gameObject.name);
        Transform headAttach = transform.Find("Rig:Head_Attach");

        if (!headAttach)
            Debug.Log("Can't find Rig:Head_Attach to attach the head to!");
        
        headObj.transform.parent = headAttach;
        headObj.transform.localPosition = Vector3.zero;
        headObj.transform.localRotation = Quaternion.identity;
    }

    public void CreateInventory() {
        if (!unitControl) unitControl = GetComponent<UnitControl>();

        GameObject mainWeaponObj = intentoryObject.GetMainWeapon(gameObject.name);

        if (mainWeaponObj) {
            Weapon mainWeapon = mainWeaponObj.GetComponent<Weapon>();
            unitControl.SetMainWeapon(mainWeapon);
        }

        GameObject sideArmObj = intentoryObject.GetSideArm(gameObject.name);
        if (sideArmObj) {
            Weapon sideArm = sideArmObj.GetComponent<Weapon>();
            unitControl.SetSideArm(sideArm);           
        }

        GameObject equipmentObj = intentoryObject.GetEquipment(gameObject.name);
        if (equipmentObj) {
            Equipment equipment = equipmentObj.GetComponent<Equipment>();
            unitControl.SetEquipment(equipment);
        }
    }

    public class Magazine {
        public int capacity;
        public float damage;
        public float armorPiercing;

        public enum Type {
            Projectile,
            Energy,
            Explosive}
        ;

        public Type type;

        public Magazine(int capacity, float damage, float armorPiercing, Type type) {
            this.capacity = capacity;
            this.damage = damage;
            this.armorPiercing = armorPiercing;
            this.type = type;
        }
    }

    public int GetMagazineCount() {
        return MagazineCount;
    }

    public Magazine GetMagazine() {
        if (MagazineCount > 0) {
            MagazineCount--;
            return new Magazine(25, 1.0f, 0.25f, Magazine.Type.Projectile);
        } else {
            return null;
        }
    }

    public void AddMagazine(int amount) {
        MagazineCount += amount;
    }
}
