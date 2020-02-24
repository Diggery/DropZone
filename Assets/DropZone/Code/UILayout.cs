using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UILayout : MonoBehaviour {

  Button confirmButton;
  GameManager gameManager;

  RectTransform playerPanels;

  void Start() {
    gameManager = GameManager.Instance;
    gameManager.SetUI(this);

    GameTime.AutoPauseConfig("SelectUnit", true);
    GameTime.AutoPauseConfig("OpenMapSelector", true);
    playerPanels = transform.Find("PlayerPanels").GetComponent<RectTransform>();
  }

  void Update() {

  }

  public void AddPlayerPanel(UnitControl player) {
    GameObject panelPrefab = gameManager.GetPrefab("LootItem");
    GameObject panel = Instantiate(gameManager.GetPrefab("PlayerPanel"), playerPanels);
    panel.GetComponent<UIPlayerPanel>().Init(player);
  }

}
