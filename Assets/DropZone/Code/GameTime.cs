using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameTime : MonoBehaviour {

  public static GameTime Instance { get; private set; }

  public Dictionary<string, bool> timeConfig = new Dictionary<string, bool>();

  public void Init() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this);
    }
  }

  public float currentDeltaTime = 0;
  float lastUpdateTime = 0;

  float currentTimeScale = 1.0f;

  float timeScaleGoal = 1.0f;

  public static float DeltaTime {
    get { return Instance.currentDeltaTime; }
  }

  public enum TimeSetting { Normal, SlowMo, Stopped }

  TimeSetting autoSetting = TimeSetting.Normal;
  TimeSetting manualSetting = TimeSetting.Normal;

  static TimeSetting AutoSetting {
    get {
      return Instance.autoSetting;
    }
    set {
      Instance.autoSetting = value;
      if (ManualSetting.Equals(TimeSetting.Normal)) Instance.SetTime(value);
    }
  }

  public static TimeSetting ManualSetting {
    get {
      return Instance.manualSetting;
    }
    set {
      Instance.manualSetting = value;
      Instance.SetTime(value);
    }
  }

  void SetTime(TimeSetting setting) {
    switch (setting) {
      case TimeSetting.Normal:
        timeScaleGoal = 1.0f;
        break;
      case TimeSetting.SlowMo:
       timeScaleGoal = 0.05f;
        break;
      case TimeSetting.Stopped:
        timeScaleGoal = 0.0f;
        break;
      default:
        timeScaleGoal = 1.0f;
        break;
    }
  }



  void Update() {
    currentDeltaTime = Time.realtimeSinceStartup - lastUpdateTime;
    lastUpdateTime = Time.realtimeSinceStartup;

    currentTimeScale = Mathf.Lerp(currentTimeScale, timeScaleGoal, currentDeltaTime * 4);
    Time.timeScale = currentTimeScale;
  }

  public static void TogglePause() {
    if (Instance.manualSetting.Equals(TimeSetting.Normal)) {
      ManualSetting = TimeSetting.SlowMo;
      return;
    }
    if (Instance.manualSetting.Equals(TimeSetting.SlowMo)) {
      ManualSetting = TimeSetting.Normal;
      return;
    }
  }

  public static void AutoPause(string type, TimeSetting setting) {
    if (Instance.timeConfig.ContainsKey(type) && Instance.timeConfig[type]) AutoSetting = setting;
  }

  public static void AutoPauseConfig(string type, bool setting) {
    Instance.timeConfig[type] = setting;
  }
}