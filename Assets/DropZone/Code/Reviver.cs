using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Reviver : Interactable {

  UnitControl helper;
  UnitControl victim;

  float reviveTime = 1f;
  float reviveTimer = 0;

  Image background;
  Button reviveButton;
  Image loadingBar;

  public Reviver Init(UnitControl victim) {
    base.Init("ReviverUI");
    this.victim = victim;

    reviveButton = UI.transform.Find("ReviveButton").GetComponent<Button>();
    reviveButton.onClick.AddListener(StartRevive);

    background = reviveButton.GetComponent<Image>();

    loadingBar = UI.transform.Find("ReviveButton/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    UI.SetActive(false);
    return this;
  }

  void Update() {
    if (!UI) return;
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
    if (helper) helper.IsInteracting = true;

  }

  public void FinishRevive() {
    if (!helper) return;
    Debug.Log("Finishing");
    helper.IsInteracting = false;
    if (helper.RemoveItem("Medkit")) {
      victim.Revive();
      Destroy(UI);
      Destroy(this);
    } else {
      background.color = Color.red;
    }
  }

}