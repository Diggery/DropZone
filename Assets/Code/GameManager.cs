using UnityEngine; 
using UnityEngine.SceneManagement; 

public class GameManager:MonoBehaviour {


  public UnitInventory unitInventory; 
  public PrefabInventory prefabInventory;

  public static GameManager Instance { get; private set; }

    private void CreateInstance() {
    if (Instance == null) {
      Instance = this; 
    }else {
      Destroy(this.gameObject); 
    }
  }
  void Awake() {
    CreateInstance(); 

  }

  void Start() {

  }

  public GameObject GetPrefab(string name) {
    return prefabInventory.GetPrefab(name); 
  }

}

