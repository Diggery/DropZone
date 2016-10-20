using UnityEngine;
using System.Collections;

public class InventoryObject : ScriptableObject {


	[System.Serializable]
	public class InventoryEntry {	
		public string name;
        public GameObject head;
        public GameObject mainWeapon;
        public GameObject sideArm;
		public GameObject equipment;
		public int magazines;
	}	

	public InventoryEntry[] entries;

    public GameObject GetHead(string unitName) {
        GameObject headObj = null;
        foreach (InventoryEntry entry in entries) {
            if (entry.name.Equals(unitName) && entry.head) {
                headObj = Instantiate(entry.head, Vector3.zero, Quaternion.identity) as GameObject;
                break;
            }
        }
        return headObj;
    }
	
	public GameObject GetMainWeapon(string unitName) {
		GameObject mainWeaponObj = null;
		foreach (InventoryEntry entry in entries) {
            if (entry.name.Equals(unitName) && entry.mainWeapon) {
				mainWeaponObj = Instantiate(entry.mainWeapon, Vector3.zero, Quaternion.identity) as GameObject;
				break;
			}
		}
		return mainWeaponObj;
	}

    public GameObject GetSideArm(string unitName) {
        GameObject sideArmObj = null;
        foreach (InventoryEntry entry in entries) {
            if (entry.name.Equals(unitName) && entry.sideArm) {
                sideArmObj = Instantiate(entry.sideArm, Vector3.zero, Quaternion.identity) as GameObject;
                break;
            }
        }
        return sideArmObj;
    }
	
	public GameObject GetEquipment(string unitName) {
		GameObject equipmentObj = null;
		foreach (InventoryEntry entry in entries) {
            if (entry.name.Equals(unitName) && entry.equipment) {
				equipmentObj = Instantiate(entry.equipment, Vector3.zero, Quaternion.identity) as GameObject;
				break;
			}
		}
		return equipmentObj;
	}
	
	public int GetMagazines(string unitName) {
		foreach (InventoryEntry entry in entries) {
			if (entry.name.Equals(unitName)) {
				return entry.magazines;
			}
		}
		return 0;
	}
}
