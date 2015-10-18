using UnityEngine;
using System.Collections;

public class InventoryObject : ScriptableObject {


	[System.Serializable]
	public class InventoryEntry {	
		public string name;
		public GameObject weapon;
		public GameObject equipment;
		public int magazines;
	}	

	public InventoryEntry[] entries;
	
	public string Test() {
		return entries[0].name;
	}
	
	public string AddEntry (string unitName) {
		return "Got it";
	
	}
	
	public GameObject GetWeapon(string unitName) {
		GameObject mainWeaponObj;
		foreach (InventoryEntry entry in entries) {
			if (entry.name.Equals(unitName)) {
				mainWeaponObj = Instantiate(entry.weapon, Vector3.zero, Quaternion.identity) as GameObject;
				return mainWeaponObj;
			}
		}
		mainWeaponObj = Instantiate(entries[0].weapon, Vector3.zero, Quaternion.identity) as GameObject;
		return mainWeaponObj;
	}
	
	public GameObject GetEquipment(string unitName) {
		GameObject equipmentObj;
		foreach (InventoryEntry entry in entries) {
			if (entry.name.Equals(unitName)) {
				equipmentObj = Instantiate(entry.equipment, Vector3.zero, Quaternion.identity) as GameObject;
				return equipmentObj;
			}
		}
		equipmentObj = Instantiate(entries[0].equipment, Vector3.zero, Quaternion.identity) as GameObject;
		return equipmentObj;
	}
	
	public int GetMagazines(string unitName) {
		foreach (InventoryEntry entry in entries) {
			if (entry.name.Equals(unitName)) {
				return entry.magazines;
			}
		}
		return entries[0].magazines;
		
	}
}
