using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharacterInventory : ScriptableObject {

  [System.Serializable]
  public class CharacterEntry {
    public string name;
    public GameObject prefab;
    public string mainWeapon;
    public string sideArm;

    public float speed;
    public float visualRange;
    public float hits;
  }

  public List<CharacterEntry> characters = new List<CharacterEntry>();

  public CharacterEntry GetCharacter(string characterName) {
    CharacterEntry characterEntry = null;
    foreach (CharacterEntry entry in characters) {
      if (entry.name.Equals(characterName) && entry.prefab) {
        characterEntry = entry;
        break;
      }
    }
    return characterEntry;
  }
}
