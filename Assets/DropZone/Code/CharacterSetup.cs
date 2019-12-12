﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSetup : MonoBehaviour {

  public Transform rightHandAttach;
  public Transform leftHandAttach;

  public void Init() {
    GameManager manager = GameManager.Instance;

    Animator animator = GetComponent<Animator>();
    foreach (Transform group in transform) {
      if (group.name.Contains("GeoGroup")) {
        foreach (Transform child in group) {
          if (child.name.Contains("Head")) {
            child.SetParent(animator.GetBoneTransform(HumanBodyBones.Head));
            break;
          }
        }
      }
    }

    CharacterInventory.CharacterEntry entry = manager.characterInventory.GetCharacter(gameObject.name);
    GameObject mainWeaponPrefab = manager.weaponInventory.GetPrefab(entry.mainWeapon);
    Weapon mainWeapon = Instantiate(mainWeaponPrefab, transform.position, transform.rotation).GetComponent<Weapon>();

    UnitControl unit = GetComponent<UnitControl>();
    unit.SetAttachPoint("RightHand", rightHandAttach);
    unit.SetAttachPoint("LeftHand", leftHandAttach);
    unit.EquipMainWeapon(mainWeapon);

    Destroy(this);
  }
}
