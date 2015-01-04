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