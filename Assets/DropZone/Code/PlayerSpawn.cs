using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSpawn : MonoBehaviour {
  void Start() {
    GameManager gameManager = GameManager.Instance;
    CharacterEntry entry = gameManager.GetCharacter(gameObject.name);
    GameObject character = Instantiate(entry.prefab, transform.position, transform.rotation);
    UnitControl unitControl = character.GetComponent<UnitControl>().Init(entry.characterName);
    unitControl.Enemies.Add("Enemy");
    Destroy(gameObject);
  }
}
