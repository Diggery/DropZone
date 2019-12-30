using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {

  public PrefabInventory weaponInventory;
  public PrefabInventory prefabInventory;
  public MapControl mapControl;
  public InputControl inputControl;
  public UILayout uiLayout;
  public CharacterEntry[] characters;

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
    gameObject.AddComponent<GameTime>().Init();

    SceneManager.LoadScene("UILayout", LoadSceneMode.Additive);
    MapTester.DrawAllCells(mapControl.mapData);
  }

  public GameObject GetPrefab(string name) {
    return prefabInventory.GetPrefab(name);
  }

  public GameObject GetWeapon(string name) {
    return weaponInventory.GetPrefab(name);
  }

  public CharacterEntry GetCharacter(string characterName) {
    CharacterEntry characterEntry = null;
    foreach (CharacterEntry entry in characters) {
      if (entry.characterName.Equals(characterName) && entry.prefab) {
        characterEntry = entry;
        break;
      }
    }
    if (!characterEntry) Debug.Log("Couldnt find an entry for " + characterName);
    return characterEntry;
  }

  public MapData.MapCell GetMapCell(Vector3 mapPos) {
    return mapControl.mapData.GetMapCell(mapPos);
  }

  public void SetUI(UILayout newUI) {
    uiLayout = newUI;
    inputControl = gameObject.AddComponent<InputControl>().Init();
  }

}

