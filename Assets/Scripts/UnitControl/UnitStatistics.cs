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
		5.0f,			//maxHealth
		0.75f 			//armorRating
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
	
	public static UnitStats GetPlayerStats(string playerName) {
	
		if (!LoadSave.DoesPlayerExist(playerName)) {
			LoadSave.CreatePlayerStats(playerName, 5.0f, 0.25f);
		}
	
	
		float[] stats = LoadSave.GetPlayerStats(playerName);
	
		float maxHealth = stats[0];
		float armorRating = stats[1];
		
		return new UnitStats(
			playerName, 		//name
			maxHealth,			//maxHealth
			armorRating 		//armorRating
		);	
	}
}
