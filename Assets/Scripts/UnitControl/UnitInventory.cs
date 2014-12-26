using UnityEngine;
using System.Collections;

public class UnitInventory : MonoBehaviour {

	UnitController unitController;


	public int MagazineCount;
	public int MortarCount;

	public GameObject[] weapons;

	public void CreateInventory () {
		unitController = GetComponent<UnitController>();

		GameObject mainWeaponObj = Instantiate(GetWeapon("AssaultRifle"), Vector3.zero, Quaternion.identity) as GameObject;
		MainWeapon mainWeapon = mainWeaponObj.GetComponent<MainWeapon>();
		mainWeapon.SetInventory(this);
		unitController.AddMainWeapon(mainWeapon);

		GameObject equipmentObj = Instantiate(GetWeapon("FragGrenade"), Vector3.zero, Quaternion.identity) as GameObject;
		Equipment equipment = equipmentObj.GetComponent<Equipment>();
		equipment.SetInventory(this);
		unitController.AddEquipment(equipment);
	}
	
	void Update () {
	
	}

	public int CheckMagazineCount() {
		return MagazineCount;
	}
	
	public bool HasMagazine() {
		if (MagazineCount > 0) {
			MagazineCount--;
			return true;
		} else {
			return false;
		}
	}
	
	public void AddMagazine(int amount) {
		MagazineCount += amount;
	}


	public GameObject GetWeapon(string weaponName) {
		foreach (GameObject weapon in weapons) 
			if (weapon.name.Equals(weaponName)) return weapon;
		Debug.Log ("Weapon not found");
		return null;
	}
}
