using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIPlayerPanel : MonoBehaviour {

  GameManager gameManager;
  UnitControl player;
  CanvasGroup mainGroup;
  Button portrait;
  TextMeshProUGUI playerName;
  Button mainWeapon;
  Button sideArm;
  RectTransform hitsContainer;
  GameObject hitsPrefab;
  RectTransform magazineContainer;
  GameObject magazinePrefab;

  RectTransform inventoryGroup;
  RectTransform inventoryContainer;

  Vector2 inventoryOpenPos = new Vector2(0, 0);
  Vector2 inventoryClosedPos = new Vector2(0, -90);

  bool inventoryOpen = false;
  public bool InventoryOpen {
    get { return inventoryOpen; }
    set {
      if (inventoryOpen == value) return;
      inventoryOpen = value;
      if (inventoryOpen) {
        Interpolator.Start(openInventory);
      } else {
        Interpolator.Reverse(openInventory);
      }
    }
  }
  public Interpolator.LerpFloat openInventory;

  public void Init(UnitControl target) {
    player = target;
    player.PlayerPanel = this;
    gameManager = GameManager.Instance;
    mainGroup = transform.Find("MainGroup").GetComponent<CanvasGroup>();
    portrait = transform.Find("MainGroup/Portrait").GetComponent<Button>();
    portrait.onClick.AddListener(SelectPlayer);
    playerName = transform.Find("MainGroup/PlayerName").GetComponent<TextMeshProUGUI>();
    hitsContainer = transform.Find("MainGroup/Hits").GetComponent<RectTransform>();
    hitsPrefab = hitsContainer.GetChild(0).gameObject;
    hitsPrefab.transform.SetParent(mainGroup.transform);
    hitsPrefab.SetActive(false);

    mainWeapon = transform.Find("MainGroup/MainWeapon").GetComponent<Button>();
    mainWeapon.onClick.AddListener(SelectMainWeapon);
    sideArm = transform.Find("MainGroup/SideArm").GetComponent<Button>();
    sideArm.onClick.AddListener(SelectSideArm);
    magazineContainer = transform.Find("MainGroup/MainWeapon/Magazines").GetComponent<RectTransform>();
    magazinePrefab = magazineContainer.GetChild(0).gameObject;
    magazinePrefab.transform.SetParent(mainGroup.transform);
    magazinePrefab.SetActive(false);
    inventoryGroup = transform.Find("InventoryGroup").GetComponent<RectTransform>();
    inventoryGroup.GetComponent<Button>().onClick.AddListener(() => InventoryOpen = !InventoryOpen);
    inventoryContainer = transform.Find("InventoryGroup/Inventory").GetComponent<RectTransform>();


    openInventory.onTick = openInventoryTick;
    openInventory.onFinish = openInventoryFinish;

    playerName.text = player.UnitType;
    SetMagazines(player.MainWeapon.Magazines);
    SetMaxHits(Mathf.FloorToInt(player.MaxHits));
    Debug.Log("player panel set");

    ClearInventory();
    foreach (string item in player.inventory) {
      AddInventoryItem(item);
    }
  }

  public void SetMagazines(int amount, bool withEffect = false) {
    SetContainerContents(magazineContainer, magazinePrefab, amount, withEffect);
  }
  public void SetMaxHits(int amount) {
    SetContainerContents(hitsContainer, hitsPrefab, amount, false);
  }
  public void SetHits(int amount) {
  }
  public void MainWeaponEquipped() {

  }
  public void SideArmEquipped() {

  }
  public void Incapacitated() {
  }

  void SetContainerContents(RectTransform container, GameObject prefab, int amount, bool withEffect) {
    int currentAmount = container.childCount;
    if (currentAmount > amount) {
      for (int i = currentAmount; i > amount; i--) {
        Destroy(container.GetChild(i - 1).gameObject);
      }
    } else if (currentAmount < amount) {
      for (int i = 0; i < amount - currentAmount; i++) {
        GameObject newItem = Instantiate(prefab, container);
        newItem.SetActive(true);
      }
    } else {
      Debug.Log(container.name + " is already correct.");
    }
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
    Debug.Log("Using " + buttonClicked.name);
    if (player.CurrentLootable) {
      if (player.CurrentLootable.AddItem(buttonClicked.name)) {
        Destroy(buttonClicked.gameObject);
        player.RemoveLoot(buttonClicked.name);
      }
    }
  }

  void SelectPlayer() {
    gameManager.inputControl.SelectUnit(player);
  }
  void SelectMainWeapon() {
    player.DrawMainWeapon();
  }
  void SelectSideArm() {
    player.DrawSideArm();
  }



  void openInventoryTick(float amount) {
    inventoryGroup.anchoredPosition = Vector2.Lerp(inventoryClosedPos, inventoryOpenPos, amount);
    mainGroup.alpha = Mathf.Lerp(1.0f, 0.5f, amount);
  }
  void openInventoryFinish(bool reversed) {
    inventoryGroup.anchoredPosition = reversed ? inventoryClosedPos : inventoryOpenPos;
    mainGroup.alpha = reversed ? 1.0f : 0.5f;
  }

}
