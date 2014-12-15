using UnityEngine;
using System.Collections;

public static class UnitStatistics : object {

	public class UnitStats {	
		public string name;
		public float maxHealth;
		public float armorRating;
		
		public UnitStats(string name, float maxHealth, float armorRating) {
			this.name = name;
			this.maxHealth = maxHealth;
			this.armorRating = armorRating;
		}
	}
	
	static UnitStats soldierStats = new UnitStats(
		"Soldier", 		//name
		5.0f, 			//maxHealth
		0.5f 			//armorRating
		);
	
	static UnitStats captainStats = new UnitStats(
		"Captain", 		//name
		10.0f,			//maxHealth
		0.5f 			//armorRating
		);
	
	
	
	public static UnitStats GetUnitStats(string unitName) {
		UnitStats stats = null;
		switch (unitName) {
		
			case "Soldier" :
				stats = soldierStats;
				break;
				
			case "Captain" :
				stats = captainStats;
				break;
		}
		
		if (stats == null) {
			Debug.Log("Can't find unit type, returning soldier");
			return soldierStats;
		}
		
		return stats;
	}
}
