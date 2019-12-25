using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSpawn : MonoBehaviour
{
    void Start() {
    GameManager manager = GameManager.Instance;
    CharacterInventory.CharacterEntry entry = manager.characterInventory.GetCharacter(gameObject.name);
    GameObject character = Instantiate(entry.prefab, transform.position, transform.rotation);
    UnitControl unitControl = character.GetComponent<UnitControl>().Init(gameObject.name);
    unitControl.Enemies.Add("Enemy");
    Destroy(gameObject);
  }


}
