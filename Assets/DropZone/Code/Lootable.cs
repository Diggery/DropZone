using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Lootable : MonoBehaviour {

  GameObject UI;
  Transform viewCamera;
  List<Vector3> lootPositions = new List<Vector3>();
  UnitControl currentLooter;

  Vector2 uiOpenSize = new Vector2(200, 180);
  Vector2 uiClosedSize = new Vector2(128, 16);
  public Interpolator.LerpFloat uiTransition;

  bool isOpen = false;
  bool IsOpen {
    get { return isOpen; }
    set { 
      isOpen = value;
      UI.SetActive(isOpen);
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
        Interpolator.Start(uiTransition);
      } else {
        Interpolator.Reverse(uiTransition);
      }
    }
  }

  float unlockTime = 10f;
  float unlockTimer = 0;

  RectTransform uiBackground;
  Button unlockButton;
  CanvasGroup contentsGroup;

  public string[] contents;
  public enum ValueLevel { High, Medium, Low };
  public ValueLevel valueLevel;
  public bool autoFill;

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
            if (unit.IsSearching) {
              stillInUse = true;
            }
          }
        }
      }
      return stillInUse;
    }
  }

  void Start() {
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
    unlockButton.onClick.AddListener(UnlockLootable);
    contentsGroup = UI.transform.Find("Background/Contents").GetComponent<CanvasGroup>();
    contentsGroup.alpha = 0;
    contentsGroup.interactable = false;
    UI.SetActive(false);

    GameObject itemPrefab = gameManager.GetPrefab("LootItem");

    foreach (string itemName in contents) {
      GameObject item = Instantiate(itemPrefab, contentsGroup.transform);
      item.name = itemName;
      Button itemButton = item.GetComponent<Button>();
      itemButton.onClick.AddListener(() => GetLoot(itemButton));
    }
  }

  void Update() {
    UI.transform.rotation = viewCamera.rotation;
    if (currentLooter && currentLooter.IsSearching && unlockTimer > 0) {
      unlockTimer -= Time.deltaTime;
      if (unlockTimer < 0) Unlocked = true;
    }
  }

  public bool CheckPosition(Vector3 checkPos, out Lootable thisLootable) {
    thisLootable = this;
    bool isLootable = false;
    foreach(Vector3 pos in lootPositions) {
      if (Vector3.Distance(checkPos, pos) < 0.25f) isLootable = true;
    }
    return isLootable;
  }

  public void StartLooting(UnitControl looter) {
    IsOpen = true;
    currentLooter = looter;
  }

  public void CancelLooting() {
    Unlocked = false;
  }

  public void DoneLooting(UnitControl looter) {
    LayerMask uiMask = LayerMask.GetMask("UI");
    bool stillInUse = false;
    for (int i = 0; i < 4; i++) {
      Vector3 startPos = transform.position + (Vector3.up * 1f);
      Vector3 endPos = startPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);
      
      if (Physics.Linecast(startPos, endPos, out RaycastHit hit, uiMask)) {
        if (hit.transform.root.tag.Equals("Player")) {
          if(!hit.transform.root.name.Equals(looter.gameObject.name)) {
            stillInUse = true;
          }
        }
      }
    }
    if (!stillInUse) IsOpen = false;
  }

  void GetLoot(Button buttonClicked) {
    currentLooter.AddLoot(buttonClicked.name);
    Destroy(buttonClicked.gameObject);
  }

  void UnlockLootable() {
    if (Unlocked) {
      Unlocked = false;
      if (currentLooter) currentLooter.IsSearching = false;
    } else {
      if (unlockTimer < 0) {
        Unlocked = true;
      } else {
        unlockTimer = unlockTime;
      }
      if (currentLooter) currentLooter.IsSearching = true;
    }
  }

  void OnUITransitionTick(float amount) {
    uiBackground.sizeDelta = Vector2.Lerp(uiClosedSize, uiOpenSize, amount);
    contentsGroup.alpha = amount;
  }

  void OnUITransitionFinished(bool reversed) {
    uiBackground.sizeDelta = reversed ? uiClosedSize : uiOpenSize;
    contentsGroup.alpha = reversed ? 0 : 1;
    if (reversed && IsOpen && !InUse) IsOpen = false;
  }
}
