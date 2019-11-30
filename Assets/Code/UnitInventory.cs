using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class UnitInventory : ScriptableObject {


  [System.Serializable]
  public class UnitEntry {
    public string name;
    public GameObject prefab;
    public Material[] variants;
  }

  public List<UnitEntry> units = new List<UnitEntry>();

  public GameObject GetUnitPrefab(string unitName) {
    GameObject unitPrefab = null;
    foreach (UnitEntry entry in units) {
      if (entry.name.Equals(unitName) && entry.prefab) {
        unitPrefab = entry.prefab;
        break;
      }
    }
    return unitPrefab;
  }

  public Material GetUnitVariant(string unitName, string variantName) {
    Material mat = null;
    foreach (UnitEntry entry in units) {
      if (entry.name.Equals(unitName)) {
        foreach (Material material in entry.variants) {
          if (material.name.Contains(variantName)) {
            mat = material;
            break;
          }
        }
      }
    }
    return mat;
  }
}
