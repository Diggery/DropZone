using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WeaponPickup : Interactable {

  Image background;
  Button button;
  Weapon weapon;
  public WeaponPickup Start() {
    Init("PickupUI");
    Debug.Log("Adding weapon pickup");
    button = UI.transform.Find("Button").GetComponent<Button>();
    button.onClick.AddListener(StartLooting);
    weapon = transform.GetComponent<Weapon>();

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
