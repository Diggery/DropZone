using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {

  public PrefabInventory weaponInventory;
  public PrefabInventory prefabInventory;
  public MapControl mapControl;
  public InputControl inputControl;
  public UILayout uiLayout;
  public EntryCharacter[] characters;
  public EntryItem[] items;
  public PlayerManager playerManager;
  public AIOverlord aiOverlord;

  public bool ObjectivesMet { get; set; }

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
    ObjectivesMet = true;
  }

  public GameObject GetPrefab(string prefabName) {
    return prefabInventory.GetPrefab(prefabName);
  }

  public EntryItem GetItem(string itemName) {
    EntryItem entryItem = null;
    foreach (EntryItem entry in items) {
      if (entry.itemName.Equals(itemName)) {
        entryItem = entry;
        break;
      }
    }
    if (!entryItem) Debug.Log("Couldn't find an entry for " + itemName);
    return entryItem;
  }

  public GameObject GetWeapon(string name) {
    return weaponInventory.GetPrefab(name);
  }

  public EntryCharacter GetCharacter(string characterName) {
    EntryCharacter characterEntry = null;
    foreach (EntryCharacter entry in characters) {
      if (entry.characterName.Equals(characterName) && entry.prefab) {
        characterEntry = entry;
        break;
      }
    }
    if (!characterEntry) Debug.Log("Couldnt find an entry for " + characterName);
    return characterEntry;
  }

  public void AddPlayer(UnitControl player) {
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

  public void ActivateInteractables(UnitControl user, Vector3 pos) {
    if (!user.IsSelected) return;

    Interactable[] allInteractables = FindObjectsOfType<Interactable>();
    foreach (Interactable interactable in allInteractables) {
      bool isUseable = interactable.CheckStatus(user, pos);
      if (isUseable) interactable.StartInteracting(user);
    }
    //Lootable nearbyLootable = null;
    //foreach (Lootable lootable in lootables) {
    //  if (lootable.CheckPosition(pos)) {
    //    nearbyLootable = lootable;
    //    lootable.StartInteracting(looter);
    //  }
    //}
    //return nearbyLootable;

    //if (gameObject.tag.Equals("Player")) {
    //  CurrentInteractable = gameManager.ActivateLootables(EndPos, this);
    //}

    //// check for people to revive
    //if (HasMedkit) {
    //  GameObject[] allUnits =
    //    gameManager.FindNearbyObjects(transform.position, targeting.MeleeRange, gameObject.tag);
    //  foreach (GameObject unit in allUnits) {
    //    Reviver reviver = unit.GetComponent<Reviver>();
    //    if (reviver) reviver.StartInteracting(this);
    //  }
    //}

    //// check for weapons to pick up
    //// check for people to revive
    //GameObject[] allWeapons =
    //  gameManager.FindNearbyObjects(transform.position, targeting.MeleeRange, "Weapon");
    //foreach (GameObject item in allWeapons) {
    //  WeaponPickup weaponPickup = item.GetComponent<WeaponPickup>();
    //  if (weaponPickup) weaponPickup.StartInteracting(this);
    //}
  }

  public GameObject[] FindNearbyObjects(Vector3 pos, float range, string targetTag) {
    GameObject[] allObjects = GameObject.FindGameObjectsWithTag(targetTag);
    List<GameObject> inRange = new List<GameObject>();
    foreach (GameObject item in allObjects) {
      if (Vector3.Distance(item.transform.position, pos) < range) {
        inRange.Add(item);
      }
    }
    return inRange.ToArray();
  }
}