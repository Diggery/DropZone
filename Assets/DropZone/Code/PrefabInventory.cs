using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PrefabInventory : ScriptableObject {


  [System.Serializable]
  public class PrefabEntry {
    public string name;
    public GameObject prefab;
  }

  public List<PrefabEntry> prefabs = new List<PrefabEntry>();

  public GameObject GetPrefab(string unitName) {
    GameObject unitPrefab = null;
    foreach (PrefabEntry entry in prefabs) {
      if (entry.name.Equals(unitName) && entry.prefab) {
        unitPrefab = entry.prefab;
        break;
      }
    }
    return unitPrefab;
  }
}
