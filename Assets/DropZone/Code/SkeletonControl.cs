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
    public Transform connectedTo;
    public ColliderData collision;
    public CharacterJointConfig joint;
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

    public List<JointData> joints = new List<JointData>();
  }

  Transform root;
  UnitControl unitControl;
  Animator animator;
  GameManager gameManager;

  Dictionary<string, Quaternion> bodyPose = new Dictionary<string, Quaternion>();

  public void SetUp(SkeletonData setUpData) {

    root = setUpData.rootTransform;

    foreach (JointData joint in setUpData.joints) {
      bodyPose.Add(joint.transform.name, Quaternion.identity);
      SetUpJoint(joint, setUpData.layerName);
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

  void SetUpJoint(JointData data) {
    SetUpJoint(data, "Skeleton");
  }

  void SetUpJoint(JointData data, string layerName) {
    Rigidbody newRB = data.transform.gameObject.AddComponent<Rigidbody>();
    newRB.mass = 3.00f;
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
    
  }

  public void SwitchToRagdoll(Vector3 direction, Transform hitTarget) {

    GetComponent<Animator>().enabled = false;
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

    Debug.Log("Adding force to " + forceTarget.name);
    forceTarget.GetComponent<Rigidbody>().AddForce(
      (direction * -5) + (Vector3.up * 10),
      ForceMode.VelocityChange
    );
  }

  public void DisableColliders() {
    if (!root) Debug.Log("Need a root object");
    Collider[] colliders = root.GetComponentsInChildren<Collider>();
    foreach (Collider currentCollider in colliders) {
      currentCollider.enabled = false;
    }
  }

  public void EnableColliders() {
    if (!root) Debug.Log("Need a root object");    
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