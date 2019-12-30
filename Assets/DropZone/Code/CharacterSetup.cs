﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSetup : MonoBehaviour {

  public Transform rightHandAttach;
  public Transform leftHandAttach;
  public Transform targetPoint;

  public void Init() {
    GameManager gameManager = GameManager.Instance;
    UnitControl unitControl = gameObject.GetComponent<UnitControl>();

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

    Transform selector = transform.Find("SelectorCollision");
    selector.SetParent(animator.GetBoneTransform(HumanBodyBones.Chest));

    CharacterEntry entry = gameManager.GetCharacter(unitControl.UnitType);

    GameObject mainWeaponPrefab = gameManager.weaponInventory.GetPrefab(entry.mainWeapon);
    Weapon mainWeapon = Instantiate(mainWeaponPrefab, transform.position, transform.rotation).GetComponent<Weapon>();

    unitControl.SetAttachPoint("RightHand", rightHandAttach);
    unitControl.SetAttachPoint("LeftHand", leftHandAttach);
    unitControl.SetAttachPoint("TargetPoint", targetPoint);
    unitControl.EquipMainWeapon(mainWeapon);
    unitControl.SetStats(entry.hits, entry.visualRange, entry.speed);

    Destroy(this);
  }
}
