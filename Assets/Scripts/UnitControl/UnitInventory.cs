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

		//GameObject secondaryWeaponObj = Instantiate(GetWeapon("MortarMarkI"), Vector3.zero, Quaternion.identity) as GameObject;
		//SecondaryWeapon secondaryWeapon = secondaryWeaponObj.GetComponent<SecondaryWeapon>();
		//secondaryWeapon.SetInventory(this);
		//mechController.AddSecondaryWeapon(secondaryWeapon, 0);


	}
	
	void Update () {
	
	}

	public int CheckMortarRounds() {
		return MortarCount;
	}

	public int GetMortarRounds(int amount) {
		int givenAmount = 0;
		if (amount < MortarCount) {
			givenAmount = amount;
			MortarCount -= amount;
		} else {
			givenAmount = MortarCount;
			MortarCount = 0;
		}
		return givenAmount;
	}

	public void AddMortarRounds(int amount) {
		MortarCount += amount;
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
