using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIPlayerPanel : MonoBehaviour {

  GameManager gameManager;
  UnitControl player;

  Image panelBackground;
  CanvasGroup mainGroup;
  TextMeshProUGUI playerName;
  Button mainWeapon;
  Button sideArm;
  RectTransform hitsContainer;
  GameObject hitsPrefab;
  RectTransform magazineInUse;
  Image magazinePanel;
  TextMeshProUGUI magazineCounter;
  RectTransform magazineContainer;
  GameObject magazinePrefab;
  Image selectIndicator;

  RectTransform inventoryGroup;
  RectTransform inventoryContainer;

  Vector2 inventoryOpenPos = new Vector2(-280, 0);
  Vector2 inventoryClosedPos = new Vector2(0, 0);

  public Color shieldColor = Color.blue;
  public Color healthColor = Color.red;
  public Color emptyColor = Color.black;

  bool inventoryOpen = false;
  public bool InventoryOpen {
    get { return inventoryOpen; }
    set {
      if (inventoryOpen == value) return;
      inventoryOpen = value;
      if (inventoryOpen) {
        GameTime.AutoPause("InventoryOpened", GameTime.TimeSetting.SlowMo, player.UnitName);
        Interpolator.Start(openInventory);
      } else {
        GameTime.AutoPause("InventoryOpened", GameTime.TimeSetting.Normal, player.UnitName);
        Interpolator.Reverse(openInventory);
      }
    }
  }
  public Interpolator.LerpFloat openInventory;
  public Interpolator.LerpColor flashPanel;
  public Interpolator.LerpColor flashSelector;
  public Interpolator.LerpColor flashMagazines;

  bool isSelected;
  public bool IsSelected {
    get { return IsSelected; }
    set {
      isSelected = value;
      flashSelector.startValue = isSelected ? Color.white : selectIndicator.color;
      flashSelector.endValue = isSelected ? Color.red : Color.clear;
      if (isSelected) Interpolator.Start(flashPanel);
      Interpolator.Start(flashSelector);
    }
  }
  public void Init(UnitControl target) {
    player = target;
    player.PlayerPanel = this;
    gameManager = GameManager.Instance;
    panelBackground = transform.Find("MainGroup").GetComponent<Image>();
    mainGroup = transform.Find("MainGroup").GetComponent<CanvasGroup>();
    mainGroup.GetComponent<Button>().onClick.AddListener(SelectPlayer);

    selectIndicator = transform.Find("MainGroup/Selector").GetComponent<Image>();
    playerName = transform.Find("MainGroup/PlayerName").GetComponent<TextMeshProUGUI>();
    hitsContainer = transform.Find("MainGroup/Hits").GetComponent<RectTransform>();
    hitsPrefab = hitsContainer.GetChild(0).gameObject;
    hitsPrefab.transform.SetParent(mainGroup.transform);
    hitsPrefab.SetActive(false);

    mainWeapon = transform.Find("MainGroup/MainWeapon").GetComponent<Button>();
    mainWeapon.onClick.AddListener(SelectMainWeapon);
    sideArm = transform.Find("MainGroup/SideArm").GetComponent<Button>();
    sideArm.onClick.AddListener(SelectSideArm);
    magazineInUse = mainWeapon.transform.Find("Magazines/InUse").GetComponent<RectTransform>();
    magazinePanel = mainWeapon.transform.Find("Magazines").GetComponent<Image>();
    magazineCounter = mainWeapon.transform.Find("Magazines/Counter").GetComponent<TextMeshProUGUI>();
    magazineContainer = mainWeapon.transform.Find("Magazines/Container").GetComponent<RectTransform>();
    magazinePrefab = magazineContainer.GetChild(0).gameObject;
    magazinePrefab.transform.SetParent(mainGroup.transform);
    magazinePrefab.SetActive(false);
    inventoryGroup = transform.Find("InventoryGroup").GetComponent<RectTransform>();
    inventoryGroup.GetComponent<Button>().onClick.AddListener(() => ToggleInventory()); 
     inventoryContainer = transform.Find("InventoryGroup/Inventory").GetComponent<RectTransform>();

    openInventory.onTick = openInventoryTick;
    openInventory.onFinish = openInventoryFinish;
    inventoryClosedPos = inventoryGroup.anchoredPosition;
    flashPanel.onTickVector = color => panelBackground.color = color;
    flashSelector.onTickVector = color => selectIndicator.color = color;
    flashMagazines.onTickVector = color => magazinePanel.color = color;
    playerName.text = player.UnitName;
    SetMagazines(player.MainWeapon.Magazines);
    SetMaxHits(player.MaxHits);
    SetHits(player.MaxArmor, player.MaxHits);
    Interpolator.Start(flashPanel);

    ClearInventory();
    foreach (string item in player.Inventory) {
      AddInventoryItem(item);
    }

    IsSelected = false;
  }

  public void SetMagazines(int amount, bool withEffect = false) {
    Interpolator.Start(flashMagazines);
    SetContainerContents(magazineContainer, magazinePrefab, amount, withEffect);
  }

  public void SetMaxHits(float amount) {
    SetContainerContents(hitsContainer, hitsPrefab, Mathf.CeilToInt(amount), false);
  }

  public void SetAmmoCount(int amount) {
    magazineCounter.text = amount.ToString();
  }
  public void SetHits(float armorPoints, float hitPoints) {
    if (armorPoints <= 0) Interpolator.Start(flashPanel);
    int armor = Mathf.CeilToInt(armorPoints);
    int hits = Mathf.CeilToInt(hitPoints);
    for (int i = 0; i < hitsContainer.childCount; i++) {
      int counter = hitsContainer.childCount - 1 - i;
      Image hitMarker = hitsContainer.GetChild(counter).GetComponent<Image>();
      if (i < armor) {
        hitMarker.color = shieldColor;
      } else if (i < hits) {
        hitMarker.color = healthColor;
      } else {
        hitMarker.color = emptyColor;
      }
    }

    float amount = hitPoints / (float)hitsContainer.childCount;
  }

  public void ToggleInventory() {
    InventoryOpen = !InventoryOpen;
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
    if (player.CurrentInteractable && player.CurrentInteractable.IsContainer) {
      Lootable lootable = (Lootable)player.CurrentInteractable;
      if (lootable.AddItem(buttonClicked.name)) {
        Debug.Log("Sending " + buttonClicked.name + " to container");
        Destroy(buttonClicked.gameObject);
        player.RemoveItem(buttonClicked.name);
      }
      return;
    }

    EntryItem itemEntry = gameManager.GetItem(buttonClicked.name);

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
    mainGroup.transform.localScale = Vector3.Lerp(Vector3.one, Vector3.one * 0.75f, amount);
    mainGroup.alpha = Mathf.Lerp(1.0f, 0.15f, amount);
  }
  void openInventoryFinish(bool reversed) {
    inventoryGroup.anchoredPosition = reversed ? inventoryClosedPos : inventoryOpenPos;
    mainGroup.alpha = reversed ? 1.0f : 0.15f;
  }

}
