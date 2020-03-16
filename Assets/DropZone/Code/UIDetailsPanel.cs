using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIDetailsPanel : MonoBehaviour {

  GameManager gameManager;
  UILayout uiLayout;
  RectTransform background;
  CanvasGroup group;
  RectTransform mainWeaponSlot;
  TextMeshProUGUI mainWeaponLabel;
  RectTransform sideArmSlot;
  TextMeshProUGUI sideArmLabel;
  RectTransform stats;
  RectTransform inventoryContainer;

  public Interpolator.LerpFloat openAnim;
  Vector2 openPos;
  Vector2 closePos;

  bool isOpen;
  public bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;
      if (isOpen) {
        Interpolator.Start(openAnim);
        group.gameObject.SetActive(true);
      } else {
        Interpolator.Reverse(openAnim);
      }
    }
  }

  public UnitControl CurrentPlayer { get; set; }


  public UIDetailsPanel Init() {
    gameManager = GameManager.Instance;
    background = GetComponent<RectTransform>();
    group = transform.Find("Group").GetComponent<CanvasGroup>();
    mainWeaponSlot = transform.Find("Group/MainWeapon").GetComponent<RectTransform>();
    mainWeaponLabel = transform.Find("Group/MainWeaponLabel").GetComponent<TextMeshProUGUI>();
    sideArmSlot = transform.Find("Group/SideArm").GetComponent<RectTransform>();
    sideArmLabel = transform.Find("Group/SideArmLabel").GetComponent<TextMeshProUGUI>();
    stats = transform.Find("Group/Stats").GetComponent<RectTransform>();
    inventoryContainer = transform.Find("Group/Inventory").GetComponent<RectTransform>();

    Button close = transform.Find("Group/Close").GetComponent<Button>();
    close.onClick.AddListener(() => IsOpen = false);

    openPos = Vector2.zero;
    closePos = new Vector2(background.rect.width, 0);
    openAnim.onTick = OnOpen;
    openAnim.onFinish = OnOpenFinish;
    IsOpen = false;

    return this;
  }

  public void Open(UnitControl player) {
    CurrentPlayer = player;
    IsOpen = true;
    ClearInventory();
    foreach (string item in player.Inventory) {
      AddInventoryItem(item);
    }
  }

  public void Close() {
    IsOpen = false;
  }

  void ClearInventory() {
    int oldItems = inventoryContainer.childCount;
    for (int i = oldItems - 1; i >= 0; i--) {
      Destroy(inventoryContainer.GetChild(i).gameObject);
    }
  }

  public void AddInventoryItem(string itemName) {
    GameObject itemPrefab = gameManager.GetPrefab("LootItem");
    GameObject item = Instantiate(itemPrefab, inventoryContainer.transform);
    item.name = itemName;
    Button itemButton = item.GetComponent<Button>();
    itemButton.onClick.AddListener(() => UseItem(itemButton));
  }


  void UseItem(Button buttonClicked) {
    if (CurrentPlayer.CurrentInteractable &&
      CurrentPlayer.CurrentInteractable.IsContainer) {
      Lootable lootable = (Lootable)CurrentPlayer.CurrentInteractable;
      if (lootable.AddItem(buttonClicked.name)) {
        Debug.Log("Sending " + buttonClicked.name + " to container");
        Destroy(buttonClicked.gameObject);
        CurrentPlayer.RemoveItem(buttonClicked.name);
      }
      return;
    }
    EntryItem itemEntry = gameManager.GetItem(buttonClicked.name);
  }

  void OnOpen(float amount) {
    group.alpha = amount;
    background.anchoredPosition = Vector2.Lerp(closePos, openPos, amount);
  }
  void OnOpenFinish(bool reverse) {
    group.alpha = reverse ? 0 : 1;
    group.gameObject.SetActive(!reverse);
    background.anchoredPosition = reverse ? closePos : openPos;
  }
}
