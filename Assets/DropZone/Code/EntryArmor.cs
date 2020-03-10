using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "NewArmor", menuName = "New Armor")]
public class EntryArmor : ScriptableObject {

  public string armorName;
  public string description;
  public Sprite icon;
  public GameObject prefab;
  public int armorPoints;
  public bool canRegen;
  public float armorRegenTime = 5.0f;
  public float armorRegenSpeed = 1.0f;
}
