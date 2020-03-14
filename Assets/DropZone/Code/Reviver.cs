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

  public override bool CheckStatus(UnitControl user, Vector3 pos) {
    bool inRange = base.CheckStatus(user, pos);
    return inRange && user.HasMedkit;
  }

  public void StartRevive() {
    if (!currentUser) return;
    if (currentUser.IsInteracting) return;

    loadingTimer = loadingTime;
    loadingBar.fillAmount = 0;
    loadingBar.enabled = true;
    currentUser.IsInteracting = true;
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