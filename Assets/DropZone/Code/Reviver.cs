using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Reviver : Interactable {

  GameObject UI;
  Transform viewCamera;
  UnitControl helper;
  UnitControl victim;

  bool isOpen = false;
  bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;
      UI.SetActive(true);
    }
  }

  float reviveTime = 1f;
  float reviveTimer = 0;

  RectTransform uiBackground;
  Button reviveButton;
  Image loadingBar;

  public Reviver Init(UnitControl victim) {
    this.victim = victim;

    GameObject uiPrefab = GameManager.Instance.GetPrefab("ReviverUI");
    UI = Instantiate(uiPrefab, transform);
    UI.transform.localPosition = Vector3.up;

    viewCamera = Camera.main.transform;

    reviveButton = UI.transform.Find("ReviveButton").GetComponent<Button>();
    reviveButton.onClick.AddListener(StartRevive);

    loadingBar = UI.transform.Find("ReviveButton/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    UI.SetActive(false);
    return this;
  }

  void Update() {
    UI.transform.rotation = viewCamera.rotation;
    if (reviveTimer > 0) {
      reviveTimer -= Time.deltaTime;
      loadingBar.fillAmount = reviveTimer / reviveTime;
      if (reviveTimer < 0) FinishRevive();
    }
  }

  public override void StartInteracting(UnitControl helper) {
    this.helper = helper;
    IsOpen = true;
  }

  public void StartRevive() {
    reviveTimer = reviveTime;
    loadingBar.fillAmount = 0;
    loadingBar.enabled = true;
  }

  public void FinishRevive() {
    victim.Revive();
  }

}