using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "NewCharacter", menuName = "New Character")]
public class CharacterEntry : ScriptableObject {

  public string characterName;
  public GameObject prefab;
  public GameObject head;
  public string mainWeapon;
  public string sideArm;
  public string melee;

  public float speed;
  public float visualRange;
  public float hits;
  public List<string> inventory = new List<string>();
  public int maxInventory = 6;

}
