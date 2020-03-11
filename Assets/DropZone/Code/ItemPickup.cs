using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemPickup : Interactable {

  Image background;

  public ItemPickup Start() {
    Init("PickupUI");

    loadingBar = UI.transform.Find("ReviveButton/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    UI.SetActive(false);
    return this;
  }

  // Update is called once per frame
  void Update() {

  }
}
