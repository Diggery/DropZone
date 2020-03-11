using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Reviver : Interactable {

  UnitControl victim;

  Button reviveButton;
  Image background;

  public Reviver Init(UnitControl victim) {
    base.Init("ReviverUI");
    this.victim = victim;
    reviveButton = UI.transform.Find("Button").GetComponent<Button>();
    reviveButton.onClick.AddListener(StartRevive);
    background = reviveButton.GetComponent<Image>();
    return this;
  }

  public override void StartInteracting(UnitControl helper) {
    currentUser = helper;
    IsOpen = true;
  }

  public void StartRevive() {
    loadingTimer = loadingTime;
    loadingBar.fillAmount = 0;
    loadingBar.enabled = true;
    if (currentUser) currentUser.IsInteracting = true;
  }

  protected override void LoadingComplete() {
    if (!currentUser) return;
    Debug.Log("Finishing");
    currentUser.IsInteracting = false;
    if (currentUser.RemoveItem("Medkit")) {
      victim.Revive();
      Destroy(UI);
      Destroy(this);
    } else {
      background.color = Color.red;
    }
  }

}