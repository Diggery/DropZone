using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Lootable : Interactable {

  List<Vector3> lootPositions = new List<Vector3>();
  GameObject itemPrefab;
  Vector2 uiOpenSize = new Vector2(200, 180);
  Vector2 uiClosedSize = new Vector2(128, 16);
  public Interpolator.LerpFloat uiTransition;

  bool unlocked;
  bool Unlocked {
    get { return unlocked; }
    set {
      if (Unlocked == value) return;
      unlocked = value;
      contentsGroup.interactable = unlocked;
      if (unlocked) {
        unlockIcon.enabled = false;
        openIcon.enabled = false;
        closeIcon.enabled = true;
        Interpolator.Start(uiTransition);
        loadingBar.enabled = false;
        if (currentUser.PlayerPanel) currentUser.PlayerPanel.InventoryOpen = true;
      } else {
        unlockIcon.enabled = false;
        openIcon.enabled = true;
        closeIcon.enabled = false;
        Interpolator.Reverse(uiTransition);
        if (currentUser.PlayerPanel) currentUser.PlayerPanel.InventoryOpen = false;
      }
    }
  }

  public override bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;
      if (isOpen) {
        UI.SetActive(true);
      } else {
        if (Unlocked) {
          Unlocked = false;
        } else {
          UI.SetActive(false);
        }
      }
    }
  }

  RectTransform uiBackground;
  Button unlockButton;
  Image unlockIcon;
  Image openIcon;
  Image closeIcon;
  CanvasGroup contentsGroup;
  public string[] contents;
  public enum ValueLevel { High, Medium, Low }
  public ValueLevel valueLevel;
  public bool autoFill;
  readonly int contentsSize = 6;

  void Start() {
    base.Init("LootableUI");
    IsContainer = true;

    GameManager gameManager = GameManager.Instance;
    gameManager.AddLootable(this);
    LayerMask terrainMask = LayerMask.GetMask("Terrain");

    for (int i = 0; i < 4; i++) {
      Vector3 startPos = transform.position + (Vector3.up * 0.25f);
      Vector3 endPos = startPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);
      if (!Physics.Linecast(startPos, endPos, terrainMask)) {
        lootPositions.Add(endPos);
      }
    }

    uiTransition.onTick = OnUITransitionTick;
    uiTransition.onFinish = OnUITransitionFinished;

    uiBackground = UI.transform.Find("Background").GetComponent<RectTransform>();
    unlockButton = UI.transform.Find("Button").GetComponent<Button>();
    Image unlockImage = unlockButton.transform.GetComponent<Image>();
    unlockButton.onClick.AddListener(UnlockLootable);

    unlockIcon = UI.transform.Find("Button/UnlockIcon").GetComponent<Image>();
    openIcon = UI.transform.Find("Button/OpenIcon").GetComponent<Image>();
    closeIcon = UI.transform.Find("Button/CloseIcon").GetComponent<Image>();

    unlockIcon.enabled = true;
    openIcon.enabled = false;
    closeIcon.enabled = false;

    contentsGroup = UI.transform.Find("Background/Contents").GetComponent<CanvasGroup>();
    contentsGroup.alpha = 0;
    contentsGroup.interactable = false;

    itemPrefab = gameManager.GetPrefab("LootItem");

    foreach (string itemName in contents) {
      AddItem(itemName);
    }
  }

  public override bool CheckStatus(UnitControl user, Vector3 checkPos) {
    bool isLootable = base.CheckStatus(user, checkPos);
    if (!isLootable) return false;

    for (int i = 0; i < 4; i++) {
      Vector3 startPos = transform.position + (Vector3.up * 1f);
      Vector3 endPos = startPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);
      LayerMask lootMask = LayerMask.GetMask("UI") | LayerMask.GetMask("Terrain");
      if (Physics.Linecast(startPos, endPos, out RaycastHit hit, lootMask)) {
        if (hit.transform.root.Equals(user.transform)) isLootable = true;
      }
    }
    return isLootable;
  }

  protected override void LoadingComplete() {
    base.LoadingComplete();
    Unlocked = true;
  }

  public bool AddItem(string itemName) {
    if (contentsGroup.transform.childCount >= contentsSize) return false;
    GameObject item = Instantiate(itemPrefab, contentsGroup.transform);
    item.name = itemName;
    Button itemButton = item.GetComponent<Button>();
    itemButton.onClick.AddListener(() => GetLoot(itemButton));
    return true;
  }

  void GetLoot(Button buttonClicked) {
    if (currentUser.AddItem(buttonClicked.name)) {
      Destroy(buttonClicked.gameObject);
    }
  }

  void UnlockLootable() {
    if (Unlocked) {
      Debug.Log("Unlocked");
      Unlocked = false;
      if (currentUser) currentUser.IsInteracting = false;
    } else {
      if (loadingTimer < 0) {
        Unlocked = true;
      } else {
        loadingTimer = loadingTime;
        loadingBar.fillAmount = 0;
        loadingBar.enabled = true;
      }
      if (currentUser) currentUser.IsInteracting = true;
    }
  }

  void OnUITransitionTick(float amount) {
    uiBackground.sizeDelta = Vector2.Lerp(uiClosedSize, uiOpenSize, amount);
  }

  void OnUITransitionFinished(bool reversed) {
    uiBackground.sizeDelta = reversed ? uiClosedSize : uiOpenSize;
    contentsGroup.alpha = reversed ? 0 : 1;
    if (reversed && !IsOpen) UI.SetActive(false);
  }
}