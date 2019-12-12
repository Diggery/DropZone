using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IKControl : MonoBehaviour {
  Animator animator;
  public Transform helmet;
  public Transform head;
  public Transform rightHandIKGoal;
  public Transform leftHandIKGoal;
  public Transform rightShoulderAttach;
  public Transform rightHandAttach;
  public Vector3 rightShoulderOffset;
  public WeaponControl weapon;
  public Transform weaponPivot;
  public Transform weaponGrip;
  public Transform lookGoal;
  float blendAmount;
  void Start() {
    animator = GetComponent<Animator>();
    helmet.SetParent(head);
    weapon = weaponPivot.GetComponent<WeaponControl>();
    weapon.Init(animator.GetBoneTransform(HumanBodyBones.Chest), rightHandAttach);

  }

  void Update() { }

  private void OnAnimatorIK(int layerIndex) {
    blendAmount = animator.GetFloat("IKBlend");

    animator.SetIKPositionWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKRotationWeight(AvatarIKGoal.RightHand, blendAmount);
    animator.SetIKPosition(AvatarIKGoal.RightHand, rightHandIKGoal.position);
    animator.SetIKRotation(AvatarIKGoal.RightHand, rightHandIKGoal.rotation);

    animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, blendAmount);
    animator.SetIKRotationWeight(AvatarIKGoal.LeftHand, blendAmount);
    animator.SetIKPosition(AvatarIKGoal.LeftHand, leftHandIKGoal.position);
    animator.SetIKRotation(AvatarIKGoal.LeftHand, leftHandIKGoal.rotation);

    animator.SetLookAtWeight(blendAmount, blendAmount * 0.5f);
    animator.SetLookAtPosition(lookGoal.position);

    weapon.GripBlend = blendAmount;
    weapon.LookPos = lookGoal.position;
  }
}