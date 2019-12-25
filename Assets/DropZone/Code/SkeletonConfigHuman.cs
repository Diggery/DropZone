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
    hips.collision.center = new Vector3(0.0f, -0.1f, 0.15f);
    hips.collision.size = new Vector3(0.40f, 0.125f, 0.25f);
    hips.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    hips.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    setUpData.joints.Add(hips);

    Transform torsoTransform = animator.GetBoneTransform(HumanBodyBones.Chest);
    SkeletonControl.JointData torso = new SkeletonControl.JointData(torsoTransform, hipsTransform);
    torso.collision.type = SkeletonControl.ColliderType.Box;
    torso.collision.center = new Vector3(0.0f, -0.025f, 0.06f);
    torso.collision.size = new Vector3(0.35f, 0.125f, 0.25f);
    torso.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    torso.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(torso);

    Transform headTransform = animator.GetBoneTransform(HumanBodyBones.Head);
    SkeletonControl.JointData head = new SkeletonControl.JointData(headTransform, torsoTransform);
    head.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    head.collision.center = new Vector3(0.0f, 0.0f, 0.0625f);
    head.collision.radius = 0.125f;
    head.collision.height = 0.125f;
    head.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    head.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(head);

    Transform leftUpperLegTransform = animator.GetBoneTransform(HumanBodyBones.LeftUpperLeg);
    SkeletonControl.JointData leftUpperLeg = new SkeletonControl.JointData(leftUpperLegTransform, hipsTransform);
    leftUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftUpperLeg.collision.center = new Vector3(0.0f, 0.0f, 0.21f);
    leftUpperLeg.collision.height = 0.42f;
    leftUpperLeg.collision.radius = 0.1f;
    leftUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    leftUpperLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    setUpData.joints.Add(leftUpperLeg);
       
    Transform leftLowerLegTransform = animator.GetBoneTransform(HumanBodyBones.LeftLowerLeg);
    SkeletonControl.JointData leftLowerLeg = new SkeletonControl.JointData(leftLowerLegTransform, leftUpperLegTransform);
    leftLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftLowerLeg.collision.center = new Vector3(0.0f, 0.0f, 0.22f);
    leftLowerLeg.collision.height = 0.44f;
    leftLowerLeg.collision.radius = 0.1f;
    leftLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    leftLowerLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    setUpData.joints.Add(leftLowerLeg);

    Transform rightUpperLegTransform = animator.GetBoneTransform(HumanBodyBones.RightUpperLeg);
    SkeletonControl.JointData rightUpperLeg = new SkeletonControl.JointData(rightUpperLegTransform, hipsTransform);
    rightUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightUpperLeg.collision.center = new Vector3(0.0f, 0.0f, -0.21f);
    rightUpperLeg.collision.height = 0.42f;
    rightUpperLeg.collision.radius = 0.1f;
    rightUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    rightUpperLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(rightUpperLeg);
       
    Transform rightLowerLegTransform = animator.GetBoneTransform(HumanBodyBones.RightLowerLeg);
    SkeletonControl.JointData rightLowerLeg = new SkeletonControl.JointData(rightLowerLegTransform, rightUpperLegTransform);
    rightLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightLowerLeg.collision.center = new Vector3(0.0f, 0.0f, -0.22f);
    rightLowerLeg.collision.height = 0.44f;
    rightLowerLeg.collision.radius = 0.1f;
    rightLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    rightLowerLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(rightLowerLeg);

    Transform leftUpperArmTransform = animator.GetBoneTransform(HumanBodyBones.LeftUpperArm);
    SkeletonControl.JointData leftUpperArm = new SkeletonControl.JointData(leftUpperArmTransform, torsoTransform);
    leftUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftUpperArm.collision.center = new Vector3(0.0f, 0.0f, 0.21f);
    leftUpperArm.collision.height = 0.42f;
    leftUpperArm.collision.radius = 0.1f;
    leftUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    leftUpperArm.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    setUpData.joints.Add(leftUpperArm);
       
    Transform leftLowerArmTransform = animator.GetBoneTransform(HumanBodyBones.LeftLowerArm);
    SkeletonControl.JointData leftLowerArm = new SkeletonControl.JointData(leftLowerArmTransform, leftUpperArmTransform);
    leftLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    leftLowerArm.collision.center = new Vector3(0.0f, 0.0f, 0.22f);
    leftLowerArm.collision.height = 0.44f;
    leftLowerArm.collision.radius = 0.1f;
    leftLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    leftLowerArm.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    setUpData.joints.Add(leftLowerArm);

    Transform rightUpperArmTransform = animator.GetBoneTransform(HumanBodyBones.RightUpperArm);
    SkeletonControl.JointData rightUpperArm = new SkeletonControl.JointData(rightUpperArmTransform, torsoTransform);
    rightUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightUpperArm.collision.center = new Vector3(0.0f, 0.0f, -0.21f);
    rightUpperArm.collision.height = 0.42f;
    rightUpperArm.collision.radius = 0.1f;
    rightUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    rightUpperArm.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(rightUpperArm);
       
    Transform rightLowerArmTransform = animator.GetBoneTransform(HumanBodyBones.RightLowerArm);
    SkeletonControl.JointData rightLowerArm = new SkeletonControl.JointData(rightLowerArmTransform, rightUpperArmTransform);
    rightLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleZ;
    rightLowerArm.collision.center = new Vector3(0.0f, 0.0f, -0.22f);
    rightLowerArm.collision.height = 0.44f;
    rightLowerArm.collision.radius = 0.1f;
    rightLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    rightLowerArm.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    setUpData.joints.Add(rightLowerArm);

    setUpData.rootTransform = hipsTransform;
    skeletonControl.SetUp(setUpData);
    return skeletonControl;

    // if (!setUpData.rootTransform) Debug.Log ("Can't find root on " + transform.name);
    //     setUpData.rootForward = Vector3.up;

    //     SkeletonControl.JointData root = new SkeletonControl.JointData(setUpData.rootTransform);
    //     root.collision.type = SkeletonControl.ColliderType.Box;
    //     root.collision.center = new Vector3(0.0f, 0.06f, 0.0f);
    //     root.collision.size = new Vector3(0.35f, 0.5f, 0.3f);
    //     root.joint.axis = new Vector3(-1.0f, 0.0f, .0f);
    //     root.joint.swingAxis = new Vector3(.0f, 1.0f, 0.0f);
    //     setUpData.joints.Add(root);

    //     SkeletonControl.JointData torso = new SkeletonControl.JointData("Combot:Spine_Skel/Combot:Torso_Skel", root.transform);
    //     torso.collision.type = SkeletonControl.ColliderType.Box;
    //     torso.collision.center = new Vector3(0.0f, 0.05f, 0.0f);
    //     torso.collision.size = new Vector3(0.5f, 0.4f, 0.35f);
    //     torso.joint.axis = new Vector3(-1.0f, 0.0f, .0f);
    //     torso.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f); 
    //     setUpData.joints.Add(torso);

    //     SkeletonControl.JointData head = new SkeletonControl.JointData("Combot:Neck_Skel/Combot:Head_Skel", torso.transform);
    //     head.collision.type = SkeletonControl.ColliderType.Box;
    //     head.collision.center = new Vector3(0.0f, 0.1f, 0.03f);
    //     head.collision.size = new Vector3(0.25f, 0.3f, 0.5f);
    //     head.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    //     head.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f); 
    //     setUpData.joints.Add(head);

    //     SkeletonControl.JointData leftUpperLeg = new SkeletonControl.JointData("Combot:LeftUpperLeg_Skel", root.transform);
    //     leftUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     leftUpperLeg.collision.center = new Vector3(0.0f, 0.18f, 0.0f);
    //     leftUpperLeg.collision.radius = 0.10f;
    //     leftUpperLeg.collision.height = 0.45f;
    //     leftUpperLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    //     leftUpperLeg.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
    //     leftUpperLeg.joint.lowTwistLimit = -35.0f;
    //     leftUpperLeg.joint.highTwistLimit = 35.0f;
    //     leftUpperLeg.joint.swing1Limit = 35.0f;
    //     leftUpperLeg.joint.swing2Limit = 35.0f;
    //     setUpData.joints.Add(leftUpperLeg);

    //     SkeletonControl.JointData leftLowerLeg = new SkeletonControl.JointData("Combot:LeftLowerLeg_Skel", leftUpperLeg.transform);
    //     leftLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     leftLowerLeg.collision.center =  new Vector3(0.0f, 0.33f, 0.0f);
    //     leftLowerLeg.collision.radius = 0.15f;
    //     leftLowerLeg.collision.height = 0.55f;
    //     leftLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    //     leftLowerLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
    //     leftLowerLeg.joint.lowTwistLimit = 00.0f;
    //     leftLowerLeg.joint.highTwistLimit = 90.0f;
    //     leftLowerLeg.joint.swing1Limit = 5.0f;
    //     leftLowerLeg.joint.swing2Limit = 5.0f;
    //     setUpData.joints.Add(leftLowerLeg);

    //     SkeletonControl.JointData rightUpperLeg = new SkeletonControl.JointData("Combot:RightUpperLeg_Skel", root.transform);
    //     rightUpperLeg.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     rightUpperLeg.collision.center = new Vector3(0.0f, -0.18f, 0.0f);
    //     rightUpperLeg.collision.radius = 0.10f;
    //     rightUpperLeg.collision.height = 0.45f;
    //     rightUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    //     rightUpperLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 1.0f);
    //     rightUpperLeg.joint.lowTwistLimit = -35.0f;
    //     rightUpperLeg.joint.highTwistLimit = 35.0f;
    //     rightUpperLeg.joint.swing1Limit = 35.0f;
    //     rightUpperLeg.joint.swing2Limit = 35.0f;
    //     setUpData.joints.Add(rightUpperLeg);

    //     SkeletonControl.JointData rightLowerLeg = new SkeletonControl.JointData("Combot:RightLowerLeg_Skel", rightUpperLeg.transform);
    //     rightLowerLeg.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     rightLowerLeg.collision.center = new Vector3(0.0f, -0.33f, 0.0f);
    //     rightLowerLeg.collision.radius = 0.15f;
    //     rightLowerLeg.collision.height = 0.55f;
    //     rightLowerLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    //     rightLowerLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
    //     rightLowerLeg.joint.lowTwistLimit = -90.0f;
    //     rightLowerLeg.joint.highTwistLimit = 00.0f;
    //     rightLowerLeg.joint.swing1Limit = 5.0f;
    //     rightLowerLeg.joint.swing2Limit = 5.0f;
    //     setUpData.joints.Add(rightLowerLeg);

    //     SkeletonControl.JointData leftUpperArm = new SkeletonControl.JointData("Combot:LeftClav_Skel/Combot:LeftUpperArm_Skel", torso.transform);
    //     leftUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     leftUpperArm.collision.center = new Vector3(0.0f, 0.11f, 0.0f);
    //     leftUpperArm.collision.radius = 0.15f;
    //     leftUpperArm.collision.height = 0.50f;
    //     leftUpperArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    //     leftUpperArm.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
    //     setUpData.joints.Add(leftUpperArm);

    //     SkeletonControl.JointData leftLowerArm = new SkeletonControl.JointData("Combot:LeftLowerArm_Skel", leftUpperArm.transform);
    //     leftLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     leftLowerArm.collision.center = new Vector3(0.0f, 0.2f, -0.03f);
    //     leftLowerArm.collision.radius = 0.1f;
    //     leftLowerArm.collision.height = 0.4f;
    //     leftLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
    //     leftLowerArm.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
    //     leftLowerArm.joint.lowTwistLimit = -90.0f;
    //     leftLowerArm.joint.highTwistLimit = 30.0f;
    //     leftLowerArm.joint.swing1Limit = 5.0f;
    //     leftLowerArm.joint.swing2Limit = 5.0f;
    //     setUpData.joints.Add(leftLowerArm);

    //     SkeletonControl.JointData rightUpperArm = new SkeletonControl.JointData("Combot:RightClav_Skel/Combot:RightUpperArm_Skel", torso.transform);
    //     rightUpperArm.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     rightUpperArm.collision.center = new Vector3(0.0f, -0.11f, 0.0f);
    //     rightUpperArm.collision.radius = 0.15f;
    //     rightUpperArm.collision.height = 0.50f;
    //     rightUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    //     rightUpperArm.joint.swingAxis = new Vector3(0.0f, 0.0f, -1.0f);
    //     setUpData.joints.Add(rightUpperArm);

    //     SkeletonControl.JointData rightLowerArm = new SkeletonControl.JointData("Combot:RightLowerArm_Skel", rightUpperArm.transform);
    //     rightLowerArm.collision.type = SkeletonControl.ColliderType.CapsuleY;
    //     rightLowerArm.collision.center = new Vector3(0.0f, -0.2f, 0.03f);
    //     rightLowerArm.collision.radius = 0.1f;
    //     rightLowerArm.collision.height = 0.4f;
    //     rightLowerArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
    //     rightLowerArm.joint.swingAxis = new Vector3(0.0f, 0.0f, -1.0f);
    //     rightLowerArm.joint.lowTwistLimit = -90.0f;
    //     rightLowerArm.joint.highTwistLimit = 30.0f;
    //     rightLowerArm.joint.swing1Limit = 5.0f;
    //     rightLowerArm.joint.swing2Limit = 5.0f;
    //     setUpData.joints.Add(rightLowerArm);

    //     setUpData.rightHand = rightLowerArm.transform.Find("Combot:RightHand_Skel/Combot:RightHand_Attach");
    //     setUpData.leftHand = leftLowerArm.transform.Find("Combot:LeftHand_Skel/Combot:LeftHand_Attach");

    //     skeletonControl.SetUp(setUpData);

    //     Destroy (this);
    //     return skeletonControl;
  }
}