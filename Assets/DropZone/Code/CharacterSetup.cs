﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSetup : MonoBehaviour {

  public Transform rightHandAttach;
  public Transform leftHandAttach;
  public Transform backpackAttach;
  public Transform leftHipAttach;
  public Transform rightHipAttach;
  public Transform targetPoint;

  public void Init() {
    GameManager gameManager = GameManager.Instance;
    UnitControl unitControl = gameObject.GetComponent<UnitControl>();
    Animator animator = GetComponent<Animator>();

    CharacterEntry entry = gameManager.GetCharacter(unitControl.UnitType);

    Transform head = null;
    if (entry.head) head = Instantiate(entry.head).transform;

    foreach (Transform group in transform) {
      if (group.name.Contains("GeoGroup")) {
        foreach (Transform child in group) {
          if (child.name.Contains("Head")) {
            if (head) {
              Destroy(child.gameObject);
            } else {
              head = child;
            }
            break;
          }
        }
      }
    }

    head.SetParent(animator.GetBoneTransform(HumanBodyBones.Head));
    head.localPosition = Vector3.zero;
    head.localRotation = Quaternion.Euler(85, 0, 0);

    Transform selector = transform.Find("SelectorCollision");
    selector.SetParent(animator.GetBoneTransform(HumanBodyBones.Chest));

    unitControl.SetAttachPoint("RightHand", rightHandAttach);
    unitControl.SetAttachPoint("LeftHand", leftHandAttach);
    unitControl.SetAttachPoint("Backpack", backpackAttach);
    unitControl.SetAttachPoint("LeftHip", leftHipAttach);
    unitControl.SetAttachPoint("RightHip", rightHipAttach);
    unitControl.SetAttachPoint("TargetPoint", targetPoint);

    if (!string.IsNullOrEmpty(entry.mainWeapon)) {
      Debug.Log("Adding " + entry.mainWeapon + " for " + gameObject.name);
      GameObject mainWeaponPrefab = gameManager.weaponInventory.GetPrefab(entry.mainWeapon);
      RangedWeapon mainWeapon = Instantiate(mainWeaponPrefab, transform.position, transform.rotation).GetComponent<RangedWeapon>();
      mainWeapon.magazines = 1;
      unitControl.AddWeapon(mainWeapon);
    }

    if (!string.IsNullOrEmpty(entry.sideArm)) {
      Debug.Log("Adding " + entry.sideArm + " for " + gameObject.name);
      GameObject sideArmPrefab = gameManager.weaponInventory.GetPrefab(entry.sideArm);
      RangedWeapon sideArm = Instantiate(sideArmPrefab, transform.position, transform.rotation).GetComponent<RangedWeapon>();
      unitControl.AddWeapon(sideArm);
    }

    string meleeWeapon = string.IsNullOrEmpty(entry.melee) ? "CombatKnife" : entry.melee;
    Debug.Log("Adding " + meleeWeapon + " for " + gameObject.name);
    GameObject meleePrefab = gameManager.weaponInventory.GetPrefab(meleeWeapon);
    MeleeWeapon melee = Instantiate(meleePrefab, transform.position, transform.rotation).GetComponent<MeleeWeapon>();
    unitControl.AddWeapon(melee);

    unitControl.SetStats(entry.hits, entry.visualRange, entry.speed);

    Destroy(this);
  }
}