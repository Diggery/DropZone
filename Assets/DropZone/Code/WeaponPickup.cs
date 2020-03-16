using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class WeaponPickup : Interactable {

  Button button;
  Weapon weapon;
  public WeaponPickup Start() {
    base.Init("InteractableUI");
    button = UI.transform.Find("Button").GetComponent<Button>();
    button.onClick.AddListener(StartLooting);
    weapon = transform.GetComponent<Weapon>();
    TextMeshProUGUI label = button.transform.Find("Label").GetComponent<TextMeshProUGUI>();
    label.text = "Pick Up";

    UI.SetActive(false);
    return this;
  }

  public void StartLooting() {
    loadingTimer = loadingTime;
    loadingBar.fillAmount = 0;
    loadingBar.enabled = true;
    if (currentUser) currentUser.IsInteracting = true;
  }

  protected override void LoadingComplete() {
    currentUser.AddWeapon(weapon);
    currentUser.IsInteracting = false;
    Destroy(UI);
    Destroy(this);
  }
}
