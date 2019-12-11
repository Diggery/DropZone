using UnityEngine;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {


  public UnitInventory unitInventory;
  public PrefabInventory prefabInventory;
  public MapControl mapControl;
  public InputControl inputControl;

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

  }

  public GameObject GetPrefab(string name) {
    return prefabInventory.GetPrefab(name);
  }

  public MapData.MapCell GetMapCell(Vector3 mapPos) {
    return mapControl.mapData.GetMapCell(mapPos);
  }

}

