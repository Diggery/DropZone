using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSpawn : MonoBehaviour
{
    void Start() {
    GameManager manager = GameManager.Instance;
    CharacterInventory.CharacterEntry entry = manager.characterInventory.GetCharacter(gameObject.name);
    GameObject character = Instantiate(entry.prefab, transform.position, transform.rotation);
    character.name = gameObject.name;
    UnitControl unitControl = character.GetComponent<UnitControl>().Init();
    unitControl.Enemies.Add("Enemy");
    Destroy(gameObject);
  }


}
