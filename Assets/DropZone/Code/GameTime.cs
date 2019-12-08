using UnityEngine;
using System.Collections;

public class GameTime : MonoBehaviour {

	static GameTime instance;
	static bool gamePaused = false;

	public float currentDeltaTime = 0;
	float lastUpdateTime = 0;
	
	float currentTimeScale = 1.0f;
	float timeScaleGoal = 1.0f;
	
	
	static void Initialize() {
		if (!instance) {
			GameObject go = new GameObject("GameTime");
			instance = go.AddComponent(typeof(GameTime)) as GameTime;
		}
	}
	public static float time { 
		get { 
			if (!instance) {
				Initialize();
			}
			if (instance) 
				return instance.lastUpdateTime;
			return 0;
		}	
	}
		
	public static float deltaTime { 
		get { 
			if (!instance) {
				Initialize();
			}
			if (instance) 
				return instance.currentDeltaTime;
			return 0;
		}
	}
		
	void Update() {
		currentDeltaTime = Time.realtimeSinceStartup - lastUpdateTime;
		lastUpdateTime = Time.realtimeSinceStartup;
				
		currentTimeScale = Mathf.Lerp(currentTimeScale, timeScaleGoal, currentDeltaTime * 4);
		Time.timeScale = currentTimeScale;
		
    
	}
}
