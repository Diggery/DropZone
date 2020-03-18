using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UIPlayerPanel : MonoBehaviour {

  GameManager gameManager;
  UnitControl player;
  UIDetailsPanel detailsPanel;

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


  public Color shieldColor = Color.blue;
  public Color healthColor = Color.red;
  public Color emptyColor = Color.black;

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
  public void Init(UnitControl target, UIDetailsPanel details) {
    player = target;
    detailsPanel = details;
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

    Button detailsButton = transform.Find("Details").GetComponent<Button>();
    detailsButton.onClick.AddListener(OpenDetails);

    flashPanel.endValue = panelBackground.color;
    flashPanel.onTickVector = color => panelBackground.color = color;
    flashSelector.onTickVector = color => selectIndicator.color = color;
    flashMagazines.onTickVector = color => magazinePanel.color = color;
    playerName.text = player.UnitName;
    SetMagazines(player.MainWeapon.Magazines);
    SetMaxHits(player.MaxHits);
    SetHits(player.MaxArmor, player.MaxHits);
    Interpolator.Start(flashPanel);

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
  }

  public void OpenDetails() {
    detailsPanel.Open(player);
  }
  public void CloseDetails() {
    detailsPanel.Close();
  }
  public void ToggleDetails() {
    if (detailsPanel.IsOpen) {
      detailsPanel.Close();
    } else {
      detailsPanel.Open(player);
    }
  }

  public void AddInventoryItem(string itemName) {
    if(detailsPanel.IsOpen && detailsPanel.CurrentPlayer.Equals(player)) {
      detailsPanel.AddInventoryItem(itemName);
    }
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

  void SelectPlayer() {
    gameManager.inputControl.SelectUnit(player);
  }
  void SelectMainWeapon() {
    player.DrawMainWeapon();
  }
  void SelectSideArm() {
    player.DrawSideArm();
  }
}
