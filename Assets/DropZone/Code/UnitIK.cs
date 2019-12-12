using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitIK : MonoBehaviour {

  UnitControl unitControl;
  Animator animator;
  Weapon weapon;
  public Weapon EquippedWeapon {
    set { weapon = value; }
  }
  Vector3 lookPosition;
  float blendAmount;

  public UnitIK Init() {
    animator = GetComponent<Animator>();
    unitControl = GetComponent<UnitControl>();
    return this;
  }
  
  private void OnAnimatorIK(int layerIndex) {
    if (!weapon) return;
    if (!unitControl.HasTarget) return;

    lookPosition = unitControl.CurrentTargetPos;

    blendAmount = animator.GetFloat("IKBlend");

    animator.SetIKPositionWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKRotationWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKPosition(AvatarIKGoal.RightHand, weapon.rightGrip.position);
    animator.SetIKRotation(AvatarIKGoal.RightHand, weapon.rightGrip.rotation);

    if (weapon.IsTwoHanded) {
      animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, blendAmount);
      animator.SetIKRotationWeight(AvatarIKGoal.LeftHand, blendAmount);
      animator.SetIKPosition(AvatarIKGoal.LeftHand, weapon.leftGrip.position);
      animator.SetIKRotation(AvatarIKGoal.LeftHand, weapon.leftGrip.rotation);
    }

    animator.SetLookAtWeight(blendAmount, blendAmount * 0.5f);
    animator.SetLookAtPosition(lookPosition);

    weapon.GripBlend = blendAmount;
    weapon.LookPos = lookPosition;
  }
}