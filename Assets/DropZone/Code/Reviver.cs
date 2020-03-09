using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Reviver : MonoBehaviour {

  GameObject UI;
  Transform viewCamera;
  UnitControl helper;
  UnitControl victim;

  bool isActive = false;
  bool IsActive {
    get { return isActive; }
    set {
      isActive = value;
      UI.SetActive(true);
    }
  }

  float reviveTime = 1f;
  float reviveTimer = 0;

  RectTransform uiBackground;
  Button reviveButton;
  Image loadingBar;

  public Reviver(UnitControl helper, UnitControl victim) {
    this.helper = helper;
    this.victim = victim;

    GameObject uiPrefab = GameManager.Instance.GetPrefab("LootableUI");
    UI = Instantiate(uiPrefab, transform);
    UI.transform.localPosition = Vector3.up;

    viewCamera = Camera.main.transform;

    uiBackground = UI.transform.Find("Background").GetComponent<RectTransform>();
    reviveButton = UI.transform.Find("Background/ReviveButton").GetComponent<Button>();
    reviveButton.onClick.AddListener(StartRevive);

    loadingBar = UI.transform.Find("Background/ReviveButton/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    UI.SetActive(false);

  }

  void Update() {
    UI.transform.rotation = viewCamera.rotation;
    if (reviveTimer > 0) {
      reviveTimer -= Time.deltaTime;
      loadingBar.fillAmount = reviveTimer / reviveTime;
      if (reviveTimer < 0) FinishRevive();
    }
  }

  public void StartRevive() {

  }

  public void FinishRevive() {

  }

}