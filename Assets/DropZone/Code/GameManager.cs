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
  public PlayerManager playerManager;
  public AIOverlord aiOverlord;

  public static GameManager Instance { get; private set; }

  private void CreateInstance() {
    if (Instance == null) {
      Instance = this;
    } else {
      Destroy(this.gameObject);
    }
  }

  public HashSet<string> UnitTypes = new HashSet<string>();

  List<Lootable> lootables = new List<Lootable>();
  List<UnitControl> units = new List<UnitControl>();
  public List<UnitControl> Units {
    get { return units; }
  }

  public Texture2D cursorNormal;
  public Texture2D cursorSelect;
  public Texture2D cursorHelp;

  void Awake() {
    CreateInstance();
    aiOverlord = gameObject.AddComponent<AIOverlord>();
  }

  void Start() {
    gameObject.AddComponent<GameTime>().Init();
    playerManager = gameObject.AddComponent<PlayerManager>().Init();
    SceneManager.LoadScene("UILayout", LoadSceneMode.Additive);
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

  public void AddPlayer(UnitControl player) {
    Debug.Log("Adding " + player.UnitType);
    UnitTypes.Add("Player");
    playerManager.Add(player);
    uiLayout.AddPlayerPanel(player);
  }
  public void AddDrone(HelperDrone drone) {
    playerManager.Add(drone);
  }
  public void AddLootable(Lootable lootable) {
    lootables.Add(lootable);
  }
  public void SetUI(UILayout newUI) {
    uiLayout = newUI;
    inputControl = gameObject.AddComponent<InputControl>().Init();
  }

  public Lootable ActivateLootables(Vector3 pos, UnitControl looter) { 
    Lootable nearbyLootable = null;
    foreach(Lootable lootable in lootables) {
      if (lootable.CheckPosition(pos, out nearbyLootable)) {
        lootable.StartLooting(looter);
      }
    }
    return nearbyLootable;
  }
}

