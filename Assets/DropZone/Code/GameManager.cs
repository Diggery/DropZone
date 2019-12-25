﻿using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {


  public CharacterInventory characterInventory;
  public PrefabInventory weaponInventory;
  public PrefabInventory prefabInventory;
  public MapControl mapControl;
  public InputControl inputControl;
  public UILayout uiLayout;

  public static GameManager Instance { get; private set; }

  private void CreateInstance() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this.gameObject);
    }
  }

  public List<UnitControl> units = new List<UnitControl>();


  void Awake() {
    CreateInstance();
  }

  void Start() {
    gameObject.AddComponent<InputControl>();
    SceneManager.LoadScene("UILayout", LoadSceneMode.Additive);

    MapTester.DrawAllCells(mapControl.mapData);
  }

  public GameObject GetPrefab(string name) {
    return prefabInventory.GetPrefab(name);
  }

  public GameObject GetWeapon(string name) {
    return weaponInventory.GetPrefab(name);
  }

  public MapData.MapCell GetMapCell(Vector3 mapPos) {
    return mapControl.mapData.GetMapCell(mapPos);
  }

  public void SetUI(UILayout newUI) {
    uiLayout = newUI;
  }

}

