using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitIK : MonoBehaviour {

  UnitControl unitControl;
  Animator animator;

  Vector3 lookPosition;
  float blendAmount;

  public UnitIK Init() {
    animator = GetComponent<Animator>();
    unitControl = GetComponent<UnitControl>();
    return this;
  }

  private void OnAnimatorIK(int layerIndex) {
    if (!unitControl.EquippedWeapon) return;
    blendAmount = animator.GetFloat("IKBlend");
    unitControl.EquippedWeapon.GripBlend = blendAmount;

    if (!unitControl.HasTarget) return;

    lookPosition = unitControl.CurrentTargetPos;

    animator.SetIKPositionWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKRotationWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKPosition(AvatarIKGoal.RightHand, unitControl.EquippedWeapon.rightGrip.position);
    animator.SetIKRotation(AvatarIKGoal.RightHand, unitControl.EquippedWeapon.rightGrip.rotation);

    if (unitControl.EquippedWeapon.IsMainWeapon) {
      animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, blendAmount);
      animator.SetIKRotationWeight(AvatarIKGoal.LeftHand, blendAmount);
      animator.SetIKPosition(AvatarIKGoal.LeftHand, unitControl.EquippedWeapon.leftGrip.position);
      animator.SetIKRotation(AvatarIKGoal.LeftHand, unitControl.EquippedWeapon.leftGrip.rotation);
    }

    animator.SetLookAtWeight(blendAmount, blendAmount * 0.5f);
    animator.SetLookAtPosition(lookPosition);

    unitControl.EquippedWeapon.GripBlend = blendAmount;
    unitControl.EquippedWeapon.LookPos = lookPosition;
  }
}