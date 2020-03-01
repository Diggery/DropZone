using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TimeModeChange : UnityEvent<GameTime.TimeSetting, string, string> { }

public class GameTime : MonoBehaviour {

  public static GameTime Instance { get; private set; }

  public Dictionary<string, bool> timeConfig = new Dictionary<string, bool>();

  public TimeModeChange modeChanged = new TimeModeChange();

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

  void SetTime(TimeSetting setting, string target, string reason) {
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

    modeChanged.Invoke(setting, target, reason);
  }

  void Update() {
    currentDeltaTime = Time.realtimeSinceStartup - lastUpdateTime;
    lastUpdateTime = Time.realtimeSinceStartup;

    currentTimeScale = Mathf.Lerp(currentTimeScale, timeScaleGoal, currentDeltaTime * 4);
    Time.timeScale = currentTimeScale;
  }

  public static void AutoPause(string type, TimeSetting setting, string target) {
    if (Instance.timeConfig.ContainsKey(type) && Instance.timeConfig[type]) {
      Debug.Log("Autopausing on " + type);

      Instance.autoSetting = setting;
      if (Instance.manualSetting.Equals(TimeSetting.Normal))
        Instance.SetTime(setting, target, type);
    }
  }

  public static void AddListener(UnityAction<TimeSetting, string, string> newListener) {
    Instance.modeChanged.AddListener(newListener);
  }

  public static void TogglePause() {
    if (Instance.autoSetting != TimeSetting.Normal) {
      Instance.manualSetting = TimeSetting.Normal;
    } else if (Instance.manualSetting.Equals(TimeSetting.Normal)) {
      Instance.manualSetting = TimeSetting.SlowMo;
    } else if (Instance.manualSetting.Equals(TimeSetting.SlowMo)) {
      Instance.manualSetting = TimeSetting.Normal;
    }

    Instance.SetTime(Instance.manualSetting, "user", "user");
  }
  public static void AutoPauseConfig(string type, bool setting) {
    Debug.Log("setting up " + type + " to " + setting);
    Instance.timeConfig[type] = setting;
  }
}