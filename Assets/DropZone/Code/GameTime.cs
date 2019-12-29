using System.Collections;
using UnityEngine;

public class GameTime : MonoBehaviour {

  public static GameTime Instance { get; private set; }

  public void Init() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this);
    }
  }

  bool gamePaused = false;

  public float currentDeltaTime = 0;
  float lastUpdateTime = 0;

  float currentTimeScale = 1.0f;

  float timeScaleGoal = 1.0f;

  public static float DeltaTime {
    get { return Instance.currentDeltaTime; }
  }

  public enum TimeSetting { Normal, SlowMo, Stopped }

  TimeSetting currentSetting = TimeSetting.Normal;
  public static TimeSetting Setting {
    get {
      return Instance.currentSetting;
    }
    set {
      Instance.currentSetting = value;
      switch (value) {
        case TimeSetting.Normal:
          Instance.timeScaleGoal = 1.0f;
          break;
        case TimeSetting.SlowMo:
          Instance.timeScaleGoal = 0.05f;
          break;
        case TimeSetting.Stopped:
          Instance.timeScaleGoal = 0.0f;
          break;
        default:
          Instance.timeScaleGoal = 1.0f;
          break;
      }
    }
  }

  void Update() {
    currentDeltaTime = Time.realtimeSinceStartup - lastUpdateTime;
    lastUpdateTime = Time.realtimeSinceStartup;

    currentTimeScale = Mathf.Lerp(currentTimeScale, timeScaleGoal, currentDeltaTime * 4);
    Time.timeScale = currentTimeScale;
  }
}