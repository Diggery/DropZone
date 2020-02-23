using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Lootable : MonoBehaviour {

  GameObject UI;
  Transform viewCamera;
  List<Vector3> lootPositions = new List<Vector3>();


  Vector2 uiOpenSize = new Vector2(200, 180);
  Vector2 uiClosedSize = new Vector2(128, 16);
  public Interpolator.LerpFloat uiTransition;

  bool isOpen = false;
  public bool IsOpen {
    get { return isOpen; }
    set { 
      isOpen = value;
      UI.SetActive(isOpen);
    }
  }

  bool uiUnlocked;
  bool UIUnlocked {
    get { return uiUnlocked; }
    set { 
      uiUnlocked = value;
      contentsGroup.interactable = uiUnlocked;
      if (uiUnlocked) {
        Interpolator.Start(uiTransition);
      } else {
        Interpolator.Reverse(uiTransition);
      }
    }
  }

  RectTransform uiBackground;
  Button unlockButton;
  CanvasGroup contentsGroup;

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
  }

  void Update() {
    UI.transform.rotation = viewCamera.rotation;
  }

  public bool CheckPosition(Vector3 checkPos, out Lootable thisLootable) {
    thisLootable = this;
    bool isLootable = false;
    foreach(Vector3 pos in lootPositions) {
      if (Vector3.Distance(checkPos, pos) < 0.25f) isLootable = true;
    }
    return isLootable;
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

  void UnlockLootable() {
    UIUnlocked = !UIUnlocked;
  }

  void OnUITransitionTick(float amount) {
    uiBackground.sizeDelta = Vector2.Lerp(uiClosedSize, uiOpenSize, amount);
    contentsGroup.alpha = amount;
  }

  void OnUITransitionFinished(bool reversed) {

  }
}
