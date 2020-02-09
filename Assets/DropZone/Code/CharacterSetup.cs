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
      Weapon mainWeapon = Instantiate(mainWeaponPrefab, transform.position, transform.rotation).GetComponent<Weapon>();
      mainWeapon.magazines = 5;
      unitControl.AddWeapon(mainWeapon);
    }

    if (!string.IsNullOrEmpty(entry.sideArm)) {
      Debug.Log("Adding " + entry.sideArm + " for " + gameObject.name);
      GameObject sideArmPrefab = gameManager.weaponInventory.GetPrefab(entry.sideArm);
      Weapon sideArm = Instantiate(sideArmPrefab, transform.position, transform.rotation).GetComponent<Weapon>();
      unitControl.AddWeapon(sideArm);
    }

    unitControl.SetStats(entry.hits, entry.visualRange, entry.speed);

    Destroy(this);
  }
}