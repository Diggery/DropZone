using System.Collections;
using UnityEngine;

public class SkeletonConfigHuman : SkeletonConfig {

  public override SkeletonControl Init() {

    SkeletonControl skeletonControl = gameObject.AddComponent<SkeletonControl>();

    setUpData.layerName = "Skeleton";

    Animator animator = GetComponent<Animator>();

    Transform hipsTransform = animator.GetBoneTransform(HumanBodyBones.Hips);
    SkeletonControl.JointData hips = new SkeletonControl.JointData(hipsTransform);
    hips.collision.type = SkeletonControl.ColliderType.Box;
    hips.collision.center = new Vector3(0.0f, -0.1f, 0.075f);
    hips.collision.size = new Vector3(0.40f, 0.2f, 0.30f);
    hips.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    hips.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    hips.mass = 20;
    setUpData.joints.Add(hips);

    Transform torsoTransform = animator.GetBoneTransform(HumanBodyBones.Chest);
    SkeletonControl.JointData torso = new SkeletonControl.JointData(torsoTransform, hipsTransform);
    torso.collision.type = SkeletonControl.ColliderType.Box;
    torso.collision.center = new Vector3(0.0f, -0.025f, 0.06f);
    torso.collision.size = new Vector3(0.35f, 0.2f, 0.35f);
    torso.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    torso.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    torso.mass = 20;
    setUpData.joints.Add(torso);

    Transform headTransform = animator.GetBoneTransform(HumanBodyBones.Head);
    SkeletonControl.JointData head = new SkeletonControl.JointData(headTransform, torsoTransform);
    head.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    head.collision.center = new Vector3(0.0f, 0.0f, 0.0625f);
    head.collision.radius = 0.125f;
    head.collision.height = 0.125f;
    head.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    head.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    head.mass = 5;
    setUpData.joints.Add(head);

    Transform leftUpperLegTransform = animator.GetBoneTransform(HumanBodyBones.LeftUpperLeg);
    SkeletonControl.JointData leftUpperLeg = new SkeletonControl.JointData(leftUpperLegTransform, hipsTransform);
    leftUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftUpperLeg.collision.center = new Vector3(0.0f, 0.0f, 0.21f);
    leftUpperLeg.collision.height = 0.42f;
    leftUpperLeg.collision.radius = 0.1f;
    leftUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    leftUpperLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    leftUpperLeg.mass = 5;
    setUpData.joints.Add(leftUpperLeg);

    Transform leftLowerLegTransform = animator.GetBoneTransform(HumanBodyBones.LeftLowerLeg);
    SkeletonControl.JointData leftLowerLeg = new SkeletonControl.JointData(leftLowerLegTransform, leftUpperLegTransform);
    leftLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftLowerLeg.collision.center = new Vector3(0.0f, 0.0f, 0.22f);
    leftLowerLeg.collision.height = 0.44f;
    leftLowerLeg.collision.radius = 0.1f;
    leftLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    leftLowerLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    leftLowerLeg.mass = 5;
    setUpData.joints.Add(leftLowerLeg);

    Transform rightUpperLegTransform = animator.GetBoneTransform(HumanBodyBones.RightUpperLeg);
    SkeletonControl.JointData rightUpperLeg = new SkeletonControl.JointData(rightUpperLegTransform, hipsTransform);
    rightUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightUpperLeg.collision.center = new Vector3(0.0f, 0.0f, -0.21f);
    rightUpperLeg.collision.height = 0.42f;
    rightUpperLeg.collision.radius = 0.1f;
    rightUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    rightUpperLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    rightUpperLeg.mass = 5;
    setUpData.joints.Add(rightUpperLeg);

    Transform rightLowerLegTransform = animator.GetBoneTransform(HumanBodyBones.RightLowerLeg);
    SkeletonControl.JointData rightLowerLeg = new SkeletonControl.JointData(rightLowerLegTransform, rightUpperLegTransform);
    rightLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightLowerLeg.collision.center = new Vector3(0.0f, 0.0f, -0.22f);
    rightLowerLeg.collision.height = 0.44f;
    rightLowerLeg.collision.radius = 0.1f;
    rightLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    rightLowerLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    rightLowerLeg.mass = 5;
    setUpData.joints.Add(rightLowerLeg);

    Transform leftUpperArmTransform = animator.GetBoneTransform(HumanBodyBones.LeftUpperArm);
    SkeletonControl.JointData leftUpperArm = new SkeletonControl.JointData(leftUpperArmTransform, torsoTransform);
    leftUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftUpperArm.collision.center = new Vector3(0.0f, 0.0f, 0.21f);
    leftUpperArm.collision.height = 0.42f;
    leftUpperArm.collision.radius = 0.1f;
    leftUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    leftUpperArm.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    leftUpperArm.mass = 5;
    setUpData.joints.Add(leftUpperArm);

    Transform leftLowerArmTransform = animator.GetBoneTransform(HumanBodyBones.LeftLowerArm);
    SkeletonControl.JointData leftLowerArm = new SkeletonControl.JointData(leftLowerArmTransform, leftUpperArmTransform);
    leftLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftLowerArm.collision.center = new Vector3(0.0f, 0.0f, 0.22f);
    leftLowerArm.collision.height = 0.44f;
    leftLowerArm.collision.radius = 0.1f;
    leftLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    leftLowerArm.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    leftLowerArm.mass = 5;
    setUpData.joints.Add(leftLowerArm);

    Transform rightUpperArmTransform = animator.GetBoneTransform(HumanBodyBones.RightUpperArm);
    SkeletonControl.JointData rightUpperArm = new SkeletonControl.JointData(rightUpperArmTransform, torsoTransform);
    rightUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightUpperArm.collision.center = new Vector3(0.0f, 0.0f, -0.21f);
    rightUpperArm.collision.height = 0.42f;
    rightUpperArm.collision.radius = 0.1f;
    rightUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    rightUpperArm.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    rightUpperArm.mass = 5;
    setUpData.joints.Add(rightUpperArm);

    Transform rightLowerArmTransform = animator.GetBoneTransform(HumanBodyBones.RightLowerArm);
    SkeletonControl.JointData rightLowerArm = new SkeletonControl.JointData(rightLowerArmTransform, rightUpperArmTransform);
    rightLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightLowerArm.collision.center = new Vector3(0.0f, 0.0f, -0.22f);
    rightLowerArm.collision.height = 0.44f;
    rightLowerArm.collision.radius = 0.1f;
    rightLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    rightLowerArm.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    rightLowerArm.mass = 5;
    setUpData.joints.Add(rightLowerArm);

    setUpData.rootTransform = hipsTransform;
    skeletonControl.SetUp(setUpData);
    return skeletonControl;

  }
}