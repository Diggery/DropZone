using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Lootable : Interactable {

  GameObject UI;
  Transform viewCamera;
  List<Vector3> lootPositions = new List<Vector3>();
  UnitControl currentLooter;
  GameObject itemPrefab;

  Vector2 uiOpenSize = new Vector2(200, 180);
  Vector2 uiClosedSize = new Vector2(128, 16);
  public Interpolator.LerpFloat uiTransition;

  bool isActive = false;
  bool IsActive {
    get { return isActive; }
    set {
      isActive = value;
      if (isActive) {
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
        if (currentLooter.PlayerPanel) currentLooter.PlayerPanel.InventoryOpen = true;
      } else {
        unlockIcon.enabled = false;
        openIcon.enabled = true;
        closeIcon.enabled = false;
        Interpolator.Reverse(uiTransition);
        if (currentLooter.PlayerPanel) currentLooter.PlayerPanel.InventoryOpen = false;
      }
    }
  }

  float unlockTime = 1f;
  float unlockTimer = 0;

  RectTransform uiBackground;
  Button unlockButton;
  Image unlockIcon;
  Image openIcon;
  Image closeIcon;
  CanvasGroup contentsGroup;
  Image loadingBar;
  public string[] contents;
  public enum ValueLevel { High, Medium, Low }
  public ValueLevel valueLevel;
  public bool autoFill;
  int contentsSize = 6;

  bool InUse {
    get {
      LayerMask uiMask = LayerMask.GetMask("UI");
      bool stillInUse = false;
      for (int i = 0; i < 4; i++) {
        Vector3 startPos = transform.position + (Vector3.up * 1f);
        Vector3 endPos = startPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);

        if (Physics.Linecast(startPos, endPos, out RaycastHit hit, uiMask)) {
          if (hit.transform.root.tag.Equals("Player")) {
            UnitControl unit = hit.transform.root.GetComponent<UnitControl>();
            if (unit.IsInteracting) {
              stillInUse = true;
            }
          }
        }
      }
      return stillInUse;
    }
  }

  void Start() {

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

    GameObject uiPrefab = gameManager.GetPrefab("LootableUI");
    UI = Instantiate(uiPrefab, transform);
    UI.transform.localPosition = Vector3.up;

    viewCamera = Camera.main.transform;
    uiTransition.onTick = OnUITransitionTick;
    uiTransition.onFinish = OnUITransitionFinished;

    uiBackground = UI.transform.Find("Background").GetComponent<RectTransform>();
    unlockButton = UI.transform.Find("Background/Unlock").GetComponent<Button>();
    Image unlockImage = unlockButton.transform.GetComponent<Image>();
    unlockButton.onClick.AddListener(UnlockLootable);

    unlockIcon = UI.transform.Find("Background/Unlock/UnlockIcon").GetComponent<Image>();
    openIcon = UI.transform.Find("Background/Unlock/OpenIcon").GetComponent<Image>();
    closeIcon = UI.transform.Find("Background/Unlock/CloseIcon").GetComponent<Image>();

    unlockIcon.enabled = true;
    openIcon.enabled = false;
    closeIcon.enabled = false;

    contentsGroup = UI.transform.Find("Background/Contents").GetComponent<CanvasGroup>();
    contentsGroup.alpha = 0;
    contentsGroup.interactable = false;

    loadingBar = UI.transform.Find("Background/Unlock/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    UI.SetActive(false);

    itemPrefab = gameManager.GetPrefab("LootItem");

    foreach (string itemName in contents) {
      AddItem(itemName);
    }
  }

  void Update() {
    UI.transform.rotation = viewCamera.rotation;
    if (currentLooter && currentLooter.IsInteracting && unlockTimer > 0) {
      unlockTimer -= Time.deltaTime;
      loadingBar.fillAmount = unlockTimer / unlockTime;
      if (unlockTimer < 0) Unlocked = true;
    }
  }

  public bool CheckPosition(Vector3 checkPos, out Lootable thisLootable) {
    thisLootable = this;
    bool isLootable = false;
    foreach (Vector3 pos in lootPositions) {
      if (Vector3.Distance(checkPos, pos) < 0.25f) isLootable = true;
    }
    return isLootable;
  }

  public override void StartInteracting(UnitControl user) {
    IsActive = true;
    currentLooter = user;
  }

  public override void FinishInteracting(UnitControl user) {
    if (!InUse) IsActive = false;
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
    if (currentLooter.AddLoot(buttonClicked.name)) {
      Destroy(buttonClicked.gameObject);
    }
  }

  void UnlockLootable() {
    if (Unlocked) {
      Debug.Log("Unlocked");
      Unlocked = false;
      if (currentLooter) currentLooter.IsInteracting = false;
    } else {
      if (unlockTimer < 0) {
        Unlocked = true;
      } else {
        unlockTimer = unlockTime;
        loadingBar.fillAmount = 0;
        loadingBar.enabled = true;
      }
      if (currentLooter) currentLooter.IsInteracting = true;
    }
  }

  void OnUITransitionTick(float amount) {
    uiBackground.sizeDelta = Vector2.Lerp(uiClosedSize, uiOpenSize, amount);
  }

  void OnUITransitionFinished(bool reversed) {
    uiBackground.sizeDelta = reversed ? uiClosedSize : uiOpenSize;
    contentsGroup.alpha = reversed ? 0 : 1;
    if (reversed && !InUse && !IsActive) UI.SetActive(false);
  }
}