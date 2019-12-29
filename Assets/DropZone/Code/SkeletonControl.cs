using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkeletonControl : MonoBehaviour {

  public class CharacterJointConfig {
    public Transform connectedBody;
    public Vector3 axis;
    public Vector3 swingAxis;
    public float lowTwistLimit;
    public float highTwistLimit;
    public float swing1Limit;
    public float swing2Limit;
    public CharacterJointConfig() {
      lowTwistLimit = -120.0f;
      highTwistLimit = 10.0f;
      swing1Limit = 40.0f;
      swing2Limit = 40.0f;
    }
  }

  public enum ColliderType { CapsuleX, CapsuleY, CapsuleZ, Box, Sphere }

  public class ColliderData {
    public Vector3 center;
    public Vector3 size;
    public float radius;
    public float height;
    public ColliderType type;
  }

  public class JointData {
    public Transform transform;
    public string name;
    public float mass = 1.0f;
    public Transform connectedTo;
    public ColliderData collision;
    public CharacterJointConfig joint;
    public Quaternion storedRotation;
    public JointData(Transform transform, Transform connectedTo) {
      this.connectedTo = connectedTo;
      this.transform = transform;
      this.collision = new ColliderData();
      this.joint = new CharacterJointConfig();
    }
    public JointData(Transform transform) {
      this.connectedTo = null;
      this.transform = transform;
      this.collision = new ColliderData();
      this.joint = new CharacterJointConfig();
    }
  }

  public class SkeletonData {
    public string layerName;
    public Transform rootTransform;
    public Vector3 rootForward;
    public Vector3 rootStoredPosition;

    public List<JointData> joints = new List<JointData>();
  }

  Transform root;
  UnitControl unitControl;
  Animator animator;
  GameManager gameManager;
  float switchingToAnimator = -1;
  float switchingToAnimatorTime = 0.25f;

  SkeletonData skeletonData;

  public void SetUp(SkeletonData skeleton) {
    this.skeletonData = skeleton;
    root = skeletonData.rootTransform;

    foreach (JointData joint in skeletonData.joints) {
      SetUpJoint(joint, skeletonData.layerName);
    }

    unitControl = GetComponent<UnitControl>();
    animator = GetComponent<Animator>();
    gameManager = GameManager.Instance;
  }

  void AddCollider(Transform target, JointData data) {

    switch (data.collision.type) {
      case ColliderType.Box:
        BoxCollider boxCollider = target.gameObject.AddComponent<BoxCollider>();
        boxCollider.size = data.collision.size;
        boxCollider.center = data.collision.center;
        break;
      case ColliderType.Sphere:
        SphereCollider sphereCollider = target.gameObject.AddComponent<SphereCollider>();
        sphereCollider.radius = data.collision.radius;
        sphereCollider.center = data.collision.center;
        break;
      case ColliderType.CapsuleX:
        CapsuleCollider capsuleXCollider = target.gameObject.AddComponent<CapsuleCollider>();
        capsuleXCollider.direction = 0;
        capsuleXCollider.radius = data.collision.radius;
        capsuleXCollider.center = data.collision.center;
        capsuleXCollider.height = data.collision.height;
        break;
      case ColliderType.CapsuleY:
        CapsuleCollider capsuleYCollider = target.gameObject.AddComponent<CapsuleCollider>();
        capsuleYCollider.direction = 1;
        capsuleYCollider.radius = data.collision.radius;
        capsuleYCollider.center = data.collision.center;
        capsuleYCollider.height = data.collision.height;
        break;
      case ColliderType.CapsuleZ:
        CapsuleCollider capsuleZCollider = target.gameObject.AddComponent<CapsuleCollider>();
        capsuleZCollider.direction = 2;
        capsuleZCollider.radius = data.collision.radius;
        capsuleZCollider.center = data.collision.center;
        capsuleZCollider.height = data.collision.height;
        break;
    }
  }

  private void LateUpdate() {
    if (switchingToAnimator > 0) {
      switchingToAnimator -= Time.deltaTime;

      float amount = 1 - (switchingToAnimator / switchingToAnimatorTime);
      skeletonData.rootTransform.position = Vector3.Lerp(skeletonData.rootStoredPosition, skeletonData.rootTransform.position, amount);
      foreach (JointData joint in skeletonData.joints) {
        Quaternion rotation = Quaternion.Lerp(joint.storedRotation, joint.transform.rotation, amount);
        joint.transform.rotation = rotation;
      }
    }
  }

  void SetUpJoint(JointData data) {
    SetUpJoint(data, "Skeleton");
  }

  void SetUpJoint(JointData data, string layerName) {
    Rigidbody newRB = data.transform.gameObject.AddComponent<Rigidbody>();
    newRB.mass = data.mass;
    newRB.useGravity = false;
    newRB.isKinematic = true;
    newRB.drag = 0.1f;
    newRB.angularDrag = 3f;

    AddCollider(data.transform, data);

    if (!data.connectedTo)
      return;

    CharacterJoint newCharacterJoint = data.transform.gameObject.AddComponent<CharacterJoint>();
    newCharacterJoint.enableProjection = true;
    newCharacterJoint.connectedBody = data.connectedTo.GetComponent<Rigidbody>();
    newCharacterJoint.anchor = new Vector3(0.0f, 0.0f, 0.0f);
    newCharacterJoint.axis = data.joint.axis;
    newCharacterJoint.swingAxis = data.joint.swingAxis;

    SoftJointLimit lowTwistLimit = new SoftJointLimit();
    lowTwistLimit.limit = data.joint.lowTwistLimit;
    newCharacterJoint.lowTwistLimit = lowTwistLimit;

    SoftJointLimit highTwistLimit = new SoftJointLimit();
    highTwistLimit.limit = data.joint.highTwistLimit;
    newCharacterJoint.highTwistLimit = highTwistLimit;

    SoftJointLimit swing1Limit = new SoftJointLimit();
    swing1Limit.limit = data.joint.swing1Limit;
    newCharacterJoint.swing1Limit = swing1Limit;

    SoftJointLimit swing2Limit = new SoftJointLimit();
    swing2Limit.limit = data.joint.swing2Limit;
    newCharacterJoint.swing2Limit = swing2Limit;

    data.transform.gameObject.layer = LayerMask.NameToLayer(layerName);

    DisableColliders();
  }

  public void SwitchToRagdoll() {
    SwitchToRagdoll(Vector3.zero, root);
  }

  public void SwitchToRagdoll(Vector3 direction) {
    SwitchToRagdoll(direction, root);
  }

  public void SwitchToAnimator() {
    Vector3 newRootPos = skeletonData.rootTransform.position;
    Vector3 newTransformPos = transform.position;
    newTransformPos.x = newRootPos.x;
    newTransformPos.z = newRootPos.z;
    transform.position = newTransformPos;
    skeletonData.rootTransform.localPosition = new Vector3 (0, skeletonData.rootTransform.localPosition.y, 0);


    Quaternion oldRot = skeletonData.rootTransform.rotation;
    Vector3 headingDir = skeletonData.rootTransform.right;
    headingDir.y = 0;
    headingDir.Normalize();
    transform.rotation = Quaternion.LookRotation(headingDir) * Quaternion.AngleAxis(-90, Vector3.up);
    skeletonData.rootTransform.rotation = oldRot;

    skeletonData.rootStoredPosition = skeletonData.rootTransform.position;
    foreach (JointData joint in skeletonData.joints) {
      joint.storedRotation = joint.transform.rotation;
    }
    switchingToAnimator = switchingToAnimatorTime;
    animator.enabled = true;

    float forwardDotUp = Vector3.Dot(Vector3.up, skeletonData.rootTransform.up);
    animator.SetTrigger((forwardDotUp > 0) ? "StandUp_Front" : "StandUp_Back");
    DisableColliders();
    Rigidbody[] rigidbodies = root.GetComponentsInChildren<Rigidbody>();
    foreach (Rigidbody currentRigidbody in rigidbodies) {
      currentRigidbody.useGravity = false;
      currentRigidbody.isKinematic = true;
    }
  }

  public void SwitchToRagdoll(Vector3 direction, Transform hitTarget) {

    animator.enabled = false;
    Transform forceTarget = root;
    EnableColliders();
    Rigidbody[] rigidbodies = root.GetComponentsInChildren<Rigidbody>();
    foreach (Rigidbody currentRigidbody in rigidbodies) {
      if (currentRigidbody.transform.Equals(hitTarget)) {
        forceTarget = hitTarget;
      }

      currentRigidbody.useGravity = true;
      currentRigidbody.isKinematic = false;
    }

    forceTarget.GetComponent<Rigidbody>().AddForce(
      (direction * -5) + (Vector3.up * 10),
      ForceMode.VelocityChange
    );
  }

  public void DisableColliders() {
    if (!root)Debug.Log("Need a root object");
    Collider[] colliders = root.GetComponentsInChildren<Collider>();
    foreach (Collider currentCollider in colliders) {
      currentCollider.enabled = false;
    }
  }

  public void EnableColliders() {
    if (!root)Debug.Log("Need a root object");
    Collider[] colliders = root.GetComponentsInChildren<Collider>();
    foreach (Collider currentCollider in colliders) {
      currentCollider.enabled = true;
    }
  }

  public Vector3 GetRagdollPos() {
    return root.position;
  }

  public void ResetRagdollPos() {
    root.localPosition = Vector3.zero;
  }

}