using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class LoadSave : object {
	
	public static void SetGameMapSeed(int newSeed) {  
		PreviewLabs.PlayerPrefs.SetInt("GameMapSeed", newSeed);
	}
	
	public static int GetGameMapSeed() {  
		if (PreviewLabs.PlayerPrefs.HasKey("GameMapSeed")) {
			return PreviewLabs.PlayerPrefs.GetInt("GameMapSeed");
		}
		return -1;
	}
	public static void SetPauseSettings(bool[] settings) { 
		int index = 0; 
		foreach(bool setting in settings) {
			PreviewLabs.PlayerPrefs.SetInt("pauseSetting" + index.ToString(), setting?1:0);
			index++;
		}
	}
	
	public static bool[] GetPauseSettings() {  
		bool done = false;
		List<bool> settings = new List<bool>();
		int index = 0; 
		while(!done) {
			if (PreviewLabs.PlayerPrefs.HasKey("pauseSetting" + index.ToString())) {
				int setting = PreviewLabs.PlayerPrefs.GetInt("pauseSetting" + index.ToString());
				settings.Add((setting == 1));
			} else {
				done = true;
			}
			index++;
		}
		return settings.ToArray();
	}	
	
	public static bool DoesPlayerExist(string name) {
		return PreviewLabs.PlayerPrefs.HasKey(name);
	}
		
	
	public static float[] GetPlayerStats(string name) {
		float[] floatArray = new float[2];
		floatArray[0] = 5;
		floatArray[1] = 0;
		
		if (PreviewLabs.PlayerPrefs.HasKey(name)) {
			string statsString = PreviewLabs.PlayerPrefs.GetString(name);
			string[] stringArray = statsString.Split(","[0]);				
			for (int i = 0; i < stringArray.Length; i++) {
				floatArray[i] = float.Parse(stringArray[i]);
			}
		} else {
			Debug.Log("Error: No record for name");
		}
		return floatArray;
	}
	
	public static void SetPlayerStats(string name, float maxHealth, float armorRating) {
	
		if (PreviewLabs.PlayerPrefs.HasKey(name)) {
			PreviewLabs.PlayerPrefs.SetString( name, 
			                                   maxHealth + "," +
			                                   armorRating );	
		} else {
			Debug.Log("Error: No record for name");
		}
	}
	
	public static bool CreatePlayerStats(string name, float maxHealth, float armorRating) {
		if (PreviewLabs.PlayerPrefs.HasKey(name)) {
			Debug.Log(name + " already exists");
			return false;
		}	
		PreviewLabs.PlayerPrefs.SetString( name, 
			                                  maxHealth + "," +
			                                  armorRating );
		return true;	
	}
	
	public static void DeleteAll() {
		PreviewLabs.PlayerPrefs.DeleteAll();
		PreviewLabs.PlayerPrefs.Flush();
		Debug.Log ("level deleted");
	}
	
	public static void SaveAll() {
		Debug.Log("Saving Data");
		PreviewLabs.PlayerPrefs.Flush();
	}
}