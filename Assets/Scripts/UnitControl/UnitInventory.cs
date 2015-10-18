using UnityEngine;
using System.Collections;

public class UnitInventory : MonoBehaviour {

	UnitController unitController;
	
	public InventoryObject intentoryObject;


	public int MagazineCount;
	public int MortarCount;

	public GameObject[] weapons;

	public void CreateInventory () {
		unitController = GetComponent<UnitController>();
				
		GameObject mainWeaponObj = intentoryObject.GetWeapon(gameObject.name);
		GameObject equipmentObj = intentoryObject.GetEquipment(gameObject.name);
		
		
		//GameObject mainWeaponObj = Instantiate(weapons[0], Vector3.zero, Quaternion.identity) as GameObject;
		MainWeapon mainWeapon = mainWeaponObj.GetComponent<MainWeapon>();
		mainWeapon.SetInventory(this);
		unitController.AddMainWeapon(mainWeapon);

		//GameObject equipmentObj = Instantiate(weapons[2], Vector3.zero, Quaternion.identity) as GameObject;
		Equipment equipment = equipmentObj.GetComponent<Equipment>();
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
}
