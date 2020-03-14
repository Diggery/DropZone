using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UILayout : MonoBehaviour {

  Button confirmButton;
  GameManager gameManager;

  RectTransform playerPanels;
  RectTransform controls;

  CanvasGroup pauseControlsGroup;
  Image pauseBackground;
  RectTransform pauseControls;
  TextMeshProUGUI pauseLabel;
  TextMeshProUGUI pauseReason;

  CanvasGroup optionsGroup;
  RectTransform options;
  public Sprite checkBoxEmpty;
  public Sprite checkBoxFilled;

  public Interpolator.LerpFloat openOptions;

  public Color normalColor = Color.green;
  public Color pauseColor = Color.red;
  public Interpolator.LerpColor pauseShift;

  string PauseLabel {
    set {
      pauseLabel.text = value;
    }
  }

  string PauseReason {
    set {
      pauseReason.text = value;
    }
  }

  bool optionsMenuOpen = false;
  bool OptionsMenuOpen {
    get { return optionsMenuOpen; }
    set {
      if (optionsMenuOpen == value) return;
      options.gameObject.SetActive(true);
      pauseControls.gameObject.SetActive(true);
      optionsMenuOpen = value;
      if (optionsMenuOpen) {
        Interpolator.Start(openOptions);
      } else {
        Interpolator.Reverse(openOptions);
      }
    }
  }

  void Start() {
    playerPanels = transform.Find("SideBar/PlayerPanels").GetComponent<RectTransform>();

    controls = transform.Find("Controls").GetComponent<RectTransform>();
    pauseControlsGroup = transform.Find("Controls/PauseControls").GetComponent<CanvasGroup>();
    pauseBackground = transform.Find("Controls/PauseControls").GetComponent<Image>();
    pauseControls = transform.Find("Controls/PauseControls").GetComponent<RectTransform>();
    pauseLabel = transform.Find("Controls/PauseControls/Label").GetComponent<TextMeshProUGUI>();
    pauseReason = transform.Find("Controls/PauseControls/Reason").GetComponent<TextMeshProUGUI>();

    Button pauseButton = pauseControlsGroup.GetComponent<Button>();
    pauseButton.onClick.AddListener(() => GameTime.TogglePause());

    Button optionsButton = 
      transform.Find("Controls/PauseControls/OptionsButton").GetComponent<Button>();
    optionsButton.onClick.AddListener(() => OptionsMenuOpen = true);

    optionsGroup = transform.Find("Controls/Options").GetComponent<CanvasGroup>();
    options = transform.Find("Controls/Options").GetComponent<RectTransform>();

    Button closeOptions =
      transform.Find("Controls/Options/Close/CloseButton").GetComponent<Button>();
    closeOptions.onClick.AddListener(() => OptionsMenuOpen = false);

    openOptions.onTick = OnOptionsOpen;
    openOptions.onFinish = OnOptionsFinish;

    GameTime.AddListener(ModeChange);

    SetUpOptions();

    optionsGroup.alpha = 0;
    options.transform.localScale = Vector3.one;
    options.gameObject.SetActive(false);

    pauseShift.onTickVector = (color) => pauseBackground.color = color;
    gameManager = GameManager.Instance;
    gameManager.SetUI(this);
  }
  
  public void AddPlayerPanel(UnitControl player) {
    GameObject panelPrefab = gameManager.GetPrefab("LootItem");
    GameObject panel = Instantiate(gameManager.GetPrefab("PlayerPanel"), playerPanels);
    panel.GetComponent<UIPlayerPanel>().Init(player);
  }

  void ModeChange(GameTime.TimeSetting setting, string target, string reason) {
    Color backgroundColor = pauseColor;
    switch (setting) {
      case GameTime.TimeSetting.Normal:
        PauseLabel = "Real-Time";
        PauseReason = "Press to Pause";
        backgroundColor = normalColor;
        break;
      case GameTime.TimeSetting.SlowMo:
        PauseLabel = "Tactical Pause";
        if (target.Equals("user")) {
          PauseReason = "Press to Resume";
        } else {
          PauseReason = reason + ": Waiting on command for " + target;
        }
        backgroundColor = pauseColor;
        break;
      case GameTime.TimeSetting.Stopped:
        PauseLabel = "Time Stopped";
        backgroundColor = Color.black;

        break;
    }
    pauseShift.startValue = pauseBackground.color;
    pauseShift.endValue = backgroundColor;
    Interpolator.Start(pauseShift);
  }

  void OnOptionsOpen(float amount) {
    pauseControlsGroup.alpha = 1 - amount;
    pauseControls.transform.localScale = Vector3.Lerp(Vector3.one, Vector3.one * 0.85f, amount);

    optionsGroup.alpha = amount;
    options.transform.localScale = Vector3.Lerp(Vector3.one * 1.15f, Vector3.one, amount);
  }
  
  void OnOptionsFinish(bool reversed) {
    pauseControlsGroup.alpha = reversed ? 1 : 0;
    pauseControls.transform.localScale = reversed ? Vector3.one : Vector3.one * 0.85f;
    pauseControls.gameObject.SetActive(reversed);

    optionsGroup.alpha = reversed ? 0 : 1;
    options.transform.localScale = reversed ? Vector3.one * 1.25f : Vector3.one;
    options.gameObject.SetActive(!reversed);
  }

  void SetOption(string settingName, Image checkBox, bool settingValue) {
    PlayerPrefs.SetInt(settingName, settingValue ? 1 : 0);
    GameTime.AutoPauseConfig(settingName, settingValue);
    checkBox.sprite = settingValue ? checkBoxFilled : checkBoxEmpty;
  }

  void SetUpOptions() {
    Transform optionsContainer = options.transform.Find("OptionContainer");
    foreach(Transform option in optionsContainer) {
      bool setting = PlayerPrefs.GetInt(option.name, 0) != 0;
      Toggle optionToggle = option.gameObject.AddComponent<Toggle>();
      optionToggle.isOn = setting;
      Image checkBox = option.transform.Find("CheckBox").GetComponent<Image>();
      optionToggle.onValueChanged.AddListener((value) => SetOption(option.name, checkBox, value));
      SetOption(option.name, checkBox,setting);
    }
  }
}
