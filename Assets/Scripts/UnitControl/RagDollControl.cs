using UnityEngine;
using System.Collections;

public class RagDollControl : MonoBehaviour {
	
	public class CharacterJointConfig {	
		public Rigidbody connectedBody;
		public Vector3 axis;
		public Vector3 swingAxis;
		public float lowTwistLimit;
		public float highTwistLimit;
		public float swing1Limit;
		public float swing2Limit;
	}	

	
	[System.Serializable]
	public class BoxColliderData {	
		public Vector3 center;
		public Vector3 size;
	}
	
	[System.Serializable]
	public class CapsuleColliderData {	
		public Vector3 center;
		public float radius;
		public float height;
	}	

	[System.Serializable]
	public class SphereColliderData {	
		public Vector3 center;
		public float radius;
	}	
	
	[System.Serializable]
	public class CharacterJointData {	
		public Vector3 axis;
		public Vector3 swingAxis;
	}
	
	[System.Serializable]
	public class RootJoint {	
		public BoxColliderData collision;
	}
		
	[System.Serializable]
	public class LeftHipJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
		
	[System.Serializable]
	public class LeftKneeJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}

	[System.Serializable]
	public class RightHipJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
		
	[System.Serializable]
	public class RightKneeJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
			
	[System.Serializable]
	public class SpineJoint {	
		public BoxColliderData collision;
		public CharacterJointData joint;
	}
			
	[System.Serializable]
	public class HeadJoint {	
		public SphereColliderData collision;
		public CharacterJointData joint;
	}
			
	[System.Serializable]
	public class LeftShoulderJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
		
	[System.Serializable]
	public class LeftElbowJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}

		[System.Serializable]
	public class RightShoulderJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
		
	[System.Serializable]
	public class RightElbowJoint {	
		public CapsuleColliderData collision;
		public CharacterJointData joint;
	}
	
	[System.Serializable]
	public class RagDollData {
		public string layerName;
		public string nameSpace;
		public Transform rootTransform;
		public RootJoint root;
		public LeftHipJoint leftHip;
		public LeftKneeJoint leftKnee;
		public RightHipJoint rightHip;
		public RightKneeJoint rightKnee;
		public SpineJoint spine;
		public HeadJoint head;
		public LeftShoulderJoint leftShoulder;
		public LeftElbowJoint leftElbow;
		public RightShoulderJoint rightShoulder;
		public RightElbowJoint rightElbow;
	}

	Transform root;
	string nameSpace = "";

	string AddNameSpaceToPath(string path) {
		string newPath = "";
		string[] split = path.Split(new char[] {'/'});
		foreach (string part in split) {
			
			newPath += nameSpace + ':' + part +  "/";
			
		}
		newPath = newPath.Substring(0, newPath.Length - 1);
		return newPath;
	}
	
	public void SetUp (RagDollData setUpData) {
		
		root = setUpData.rootTransform;
		string layerName = setUpData.layerName;
		nameSpace = setUpData.nameSpace;
		
		//Root
		root.gameObject.layer = LayerMask.NameToLayer(layerName);
		BoxCollider rootCollision = root.gameObject.AddComponent<BoxCollider>();
		rootCollision.center = setUpData.root.collision.center;
		rootCollision.size = setUpData.root.collision.size;
		
		Rigidbody rootRigidbody = root.gameObject.AddComponent<Rigidbody>();
		rootRigidbody.mass = 3.125f;
		rootRigidbody.angularDrag = 0.01f;
		rootRigidbody.useGravity = false;
		rootRigidbody.isKinematic = true;
		
		//LeftHip
		Transform leftHip = root.Find(AddNameSpaceToPath("LeftUpperLeg_Skel"));
		if (!leftHip) Debug.Log ("Can't find leftHip on " + transform.name);
		leftHip.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider leftHipCollision = leftHip.gameObject.AddComponent<CapsuleCollider>();
		leftHipCollision.center = setUpData.leftHip.collision.center;
		leftHipCollision.radius = setUpData.leftHip.collision.radius;
		leftHipCollision.height = setUpData.leftHip.collision.height;
		leftHipCollision.direction = 0;
		
		Rigidbody leftHipRigidbody = leftHip.gameObject.AddComponent<Rigidbody>();
		leftHipRigidbody.mass = 1.875f;
		leftHipRigidbody.angularDrag = 0.01f;
		leftHipRigidbody.useGravity = false;
		leftHipRigidbody.isKinematic = true;
		
		CharacterJointConfig leftHipJointConfig = new CharacterJointConfig();
		leftHipJointConfig.connectedBody = root.GetComponent<Rigidbody>();
		leftHipJointConfig.axis = setUpData.leftHip.joint.axis;
		leftHipJointConfig.swingAxis = setUpData.leftHip.joint.swingAxis;
		leftHipJointConfig.lowTwistLimit = -50.0f;
		leftHipJointConfig.highTwistLimit = 50.0f;
		leftHipJointConfig.swing1Limit = 15.0f;
		leftHipJointConfig.swing2Limit = 0.0f;
		setUpJoint(leftHip, leftHipJointConfig);
		
		//LeftKnee
		Transform leftKnee = root.Find(AddNameSpaceToPath("LeftUpperLeg_Skel/LeftLowerLeg_Skel"));
		if (!leftKnee) Debug.Log ("Can't find leftKnee on " + transform.name);
		leftKnee.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider leftKneeCollision = leftKnee.gameObject.AddComponent<CapsuleCollider>();
		leftKneeCollision.center = setUpData.leftKnee.collision.center;
		leftKneeCollision.radius = setUpData.leftKnee.collision.radius;
		leftKneeCollision.height = setUpData.leftKnee.collision.height;
		leftKneeCollision.direction = 0;
		
		Rigidbody leftKneeRigidbody = leftKnee.gameObject.AddComponent<Rigidbody>();
		leftKneeRigidbody.mass = 1.875f;
		leftKneeRigidbody.angularDrag = 0.01f;
		leftKneeRigidbody.useGravity = false;
		leftKneeRigidbody.isKinematic = true;
		
		CharacterJointConfig leftKneeJointConfig = new CharacterJointConfig();
		leftKneeJointConfig.connectedBody = leftHip.GetComponent<Rigidbody>();
		leftKneeJointConfig.axis = setUpData.leftKnee.joint.axis;
		leftKneeJointConfig.swingAxis = setUpData.leftKnee.joint.swingAxis;
		leftKneeJointConfig.lowTwistLimit = -80.0f;
		leftKneeJointConfig.highTwistLimit = 00.0f;
		leftKneeJointConfig.swing1Limit = 0.0f;
		leftKneeJointConfig.swing2Limit = 0.0f;
		setUpJoint(leftKnee, leftKneeJointConfig);

		//RightHip
		Transform rightHip = root.Find(AddNameSpaceToPath("RightUpperLeg_Skel"));
		if (!rightHip) Debug.Log ("Can't find rightHip on " + transform.name);
		rightHip.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider rightHipCollision = rightHip.gameObject.AddComponent<CapsuleCollider>();
		rightHipCollision.center = setUpData.rightHip.collision.center;
		rightHipCollision.radius = setUpData.rightHip.collision.radius;
		rightHipCollision.height = setUpData.rightHip.collision.height;
		rightHipCollision.direction = 0;
		
		Rigidbody rightHipRigidbody = rightHip.gameObject.AddComponent<Rigidbody>();
		rightHipRigidbody.mass = 1.875f;
		rightHipRigidbody.angularDrag = 0.01f;
		rightHipRigidbody.useGravity = false;
		rightHipRigidbody.isKinematic = true;
		
		CharacterJointConfig rightHipJointConfig = new CharacterJointConfig();
		rightHipJointConfig.connectedBody = root.GetComponent<Rigidbody>();
		rightHipJointConfig.axis = setUpData.rightHip.joint.axis;
		rightHipJointConfig.swingAxis = setUpData.rightHip.joint.swingAxis;
		rightHipJointConfig.lowTwistLimit = -50.0f;
		rightHipJointConfig.highTwistLimit = 50.0f;
		rightHipJointConfig.swing1Limit = 15.0f;
		rightHipJointConfig.swing2Limit = 0.0f;
		setUpJoint(rightHip, rightHipJointConfig);
		
		//RightKnee
		Transform rightKnee = root.Find(AddNameSpaceToPath("RightUpperLeg_Skel/RightLowerLeg_Skel"));
		if (!rightKnee) Debug.Log ("Can't find rightKnee on " + transform.name);
		rightKnee.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider rightKneeCollision = rightKnee.gameObject.AddComponent<CapsuleCollider>();
		rightKneeCollision.center = setUpData.rightKnee.collision.center;
		rightKneeCollision.radius = setUpData.rightKnee.collision.radius;
		rightKneeCollision.height = setUpData.rightKnee.collision.height;
		rightKneeCollision.direction = 0;
		
		Rigidbody rightKneeRigidbody = rightKnee.gameObject.AddComponent<Rigidbody>();
		rightKneeRigidbody.mass = 1.875f;
		rightKneeRigidbody.angularDrag = 0.01f;
		rightKneeRigidbody.useGravity = false;
		rightKneeRigidbody.isKinematic = true;
		
		CharacterJointConfig rightKneeJointConfig = new CharacterJointConfig();
		rightKneeJointConfig.connectedBody = rightHip.GetComponent<Rigidbody>();
		rightKneeJointConfig.axis = setUpData.rightKnee.joint.axis;
		rightKneeJointConfig.swingAxis = setUpData.rightKnee.joint.swingAxis;
		rightKneeJointConfig.lowTwistLimit = -80.0f;
		rightKneeJointConfig.highTwistLimit = 00.0f;
		rightKneeJointConfig.swing1Limit = 0.0f;
		rightKneeJointConfig.swing2Limit = 0.0f;
		setUpJoint(rightKnee, rightKneeJointConfig);
		
		
		//Spine
		Transform spine = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel"));
		if (!spine) Debug.Log ("Can't find spine on " + transform.name);
		spine.gameObject.layer = LayerMask.NameToLayer(layerName);
		BoxCollider spineCollision = spine.gameObject.AddComponent<BoxCollider>();
		spineCollision.center = setUpData.spine.collision.center;
		spineCollision.size = setUpData.spine.collision.size;
		
		Rigidbody spineRigidbody = spine.gameObject.AddComponent<Rigidbody>();
		spineRigidbody.mass = 3.125f;
		spineRigidbody.angularDrag = 0.01f;
		spineRigidbody.useGravity = false;
		spineRigidbody.isKinematic = true;
		
		CharacterJointConfig spineJointConfig = new CharacterJointConfig();
		spineJointConfig.connectedBody = root.GetComponent<Rigidbody>();
		spineJointConfig.axis = setUpData.spine.joint.axis;
		spineJointConfig.swingAxis = setUpData.spine.joint.swingAxis;
		spineJointConfig.lowTwistLimit = -20.0f;
		spineJointConfig.highTwistLimit = 20.0f;
		spineJointConfig.swing1Limit = 10.0f;
		spineJointConfig.swing2Limit = 0.0f;
		setUpJoint(spine, spineJointConfig);
		
		//Head
		Transform head = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel/Neck_Skel/Head_Skel"));
		if (!head) Debug.Log ("Can't find head on " + transform.name);
		head.gameObject.layer = LayerMask.NameToLayer(layerName);
		SphereCollider headCollision = head.gameObject.AddComponent<SphereCollider>();
		headCollision.center = setUpData.head.collision.center;
		headCollision.radius = setUpData.head.collision.radius;
		
		Rigidbody headRigidbody = head.gameObject.AddComponent<Rigidbody>();
		headRigidbody.mass = 1.25f;
		headRigidbody.useGravity = false;
		headRigidbody.isKinematic = true;
		
		CharacterJointConfig headJointConfig = new CharacterJointConfig();
		headJointConfig.connectedBody = spine.GetComponent<Rigidbody>();
		headJointConfig.axis = setUpData.head.joint.axis;
		headJointConfig.swingAxis = setUpData.head.joint.swingAxis;
		headJointConfig.lowTwistLimit = -40.0f;
		headJointConfig.highTwistLimit = 25.0f;
		headJointConfig.swing1Limit = 25.0f;
		headJointConfig.swing2Limit = 0.0f;
		setUpJoint(head, headJointConfig);

		//leftShoulder
		Transform leftShoulder = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel/LeftUpperArm_Skel"));
		if (!leftShoulder) Debug.Log ("Can't find leftShoulder on " + transform.name);
		leftShoulder.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider leftShoulderCollision = leftShoulder.gameObject.AddComponent<CapsuleCollider>();
		leftShoulderCollision.center = setUpData.leftShoulder.collision.center;
		leftShoulderCollision.radius = setUpData.leftShoulder.collision.radius;
		leftShoulderCollision.height = setUpData.leftShoulder.collision.height;
		leftShoulderCollision.direction = 0;
		
		Rigidbody leftShoulderRigidbody = leftShoulder.gameObject.AddComponent<Rigidbody>();
		leftShoulderRigidbody.mass = 1.25f;
		leftShoulderRigidbody.angularDrag = 0.01f;
		leftShoulderRigidbody.useGravity = false;
		leftShoulderRigidbody.isKinematic = true;
		
		CharacterJointConfig leftShoulderJointConfig = new CharacterJointConfig();
		leftShoulderJointConfig.connectedBody = root.GetComponent<Rigidbody>();
		leftShoulderJointConfig.axis = setUpData.leftShoulder.joint.axis;
		leftShoulderJointConfig.swingAxis = setUpData.leftShoulder.joint.swingAxis;
		leftShoulderJointConfig.lowTwistLimit = -70.0f;
		leftShoulderJointConfig.highTwistLimit = 30.0f;
		leftShoulderJointConfig.swing1Limit = 45.0f;
		leftShoulderJointConfig.swing2Limit = 45.0f;
		setUpJoint(leftShoulder, leftShoulderJointConfig);
		
		//leftElbow
		Transform leftElbow = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel/LeftUpperArm_Skel/LeftLowerArm_Skel"));
		if (!leftElbow) Debug.Log ("Can't find leftElbow on " + transform.name);
		leftElbow.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider leftElbowCollision = leftElbow.gameObject.AddComponent<CapsuleCollider>();
		leftElbowCollision.center = setUpData.leftElbow.collision.center;
		leftElbowCollision.radius = setUpData.leftElbow.collision.radius;
		leftElbowCollision.height = setUpData.leftElbow.collision.height;
		leftElbowCollision.direction = 0;
		
		Rigidbody leftElbowRigidbody = leftElbow.gameObject.AddComponent<Rigidbody>();
		leftElbowRigidbody.mass = 1.25f;
		leftElbowRigidbody.useGravity = false;
		leftElbowRigidbody.isKinematic = true;
		
		CharacterJointConfig leftElbowJointConfig = new CharacterJointConfig();
		leftElbowJointConfig.connectedBody = leftShoulder.GetComponent<Rigidbody>();
		leftElbowJointConfig.axis = setUpData.leftElbow.joint.axis;
		leftElbowJointConfig.swingAxis = setUpData.leftElbow.joint.swingAxis;
		leftElbowJointConfig.lowTwistLimit = -90.0f;
		leftElbowJointConfig.highTwistLimit = 00.0f;
		leftElbowJointConfig.swing1Limit = 0.0f;
		leftElbowJointConfig.swing2Limit = 0.0f;
		setUpJoint(leftElbow, leftElbowJointConfig);		
		
		
		//RightShoulder
		Transform rightShoulder = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel/RightUpperArm_Skel"));
		if (!rightShoulder) Debug.Log ("Can't find rightShoulder on " + transform.name);
		rightShoulder.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider rightShoulderCollision = rightShoulder.gameObject.AddComponent<CapsuleCollider>();
		rightShoulderCollision.center = setUpData.rightShoulder.collision.center;
		rightShoulderCollision.radius = setUpData.rightShoulder.collision.radius;
		rightShoulderCollision.height = setUpData.rightShoulder.collision.height;
		rightShoulderCollision.direction = 0;
		
		Rigidbody rightShoulderRigidbody = rightShoulder.gameObject.AddComponent<Rigidbody>();
		rightShoulderRigidbody.mass = 1.25f;
		rightShoulderRigidbody.angularDrag = 0.01f;
		rightShoulderRigidbody.useGravity = false;
		rightShoulderRigidbody.isKinematic = true;
		
		CharacterJointConfig rightShoulderJointConfig = new CharacterJointConfig();
		rightShoulderJointConfig.connectedBody = root.GetComponent<Rigidbody>();
		rightShoulderJointConfig.axis = setUpData.rightShoulder.joint.axis;
		rightShoulderJointConfig.swingAxis = setUpData.rightShoulder.joint.swingAxis;
		rightShoulderJointConfig.lowTwistLimit = -30.0f;
		rightShoulderJointConfig.highTwistLimit = 70.0f;
		rightShoulderJointConfig.swing1Limit = 45.0f;
		rightShoulderJointConfig.swing2Limit = 45.0f;
		setUpJoint(rightShoulder, rightShoulderJointConfig);
		
		//RightElbow
		Transform rightElbow = root.Find(AddNameSpaceToPath("Spine1_Skel/Spine2_Skel/RightUpperArm_Skel/RightLowerArm_Skel"));
		if (!rightElbow) Debug.Log ("Can't find rightElbow on " + transform.name);
		rightElbow.gameObject.layer = LayerMask.NameToLayer(layerName);
		CapsuleCollider rightElbowCollision = rightElbow.gameObject.AddComponent<CapsuleCollider>();
		rightElbowCollision.center = setUpData.rightElbow.collision.center;
		rightElbowCollision.radius = setUpData.rightElbow.collision.radius;
		rightElbowCollision.height = setUpData.rightElbow.collision.height;
		rightElbowCollision.direction = 0;
		
		Rigidbody rightElbowRigidbody = rightElbow.gameObject.AddComponent<Rigidbody>();
		rightElbowRigidbody.mass = 1.25f;
		rightElbowRigidbody.useGravity = false;
		rightElbowRigidbody.isKinematic = true;
		
		CharacterJointConfig rightElbowJointConfig = new CharacterJointConfig();
		rightElbowJointConfig.connectedBody = rightShoulder.GetComponent<Rigidbody>();
		rightElbowJointConfig.axis = setUpData.rightElbow.joint.axis;
		rightElbowJointConfig.swingAxis = setUpData.rightElbow.joint.swingAxis;
		rightElbowJointConfig.lowTwistLimit = -90.0f;
		rightElbowJointConfig.highTwistLimit = 00.0f;
		rightElbowJointConfig.swing1Limit = 0.0f;
		rightElbowJointConfig.swing2Limit = 0.0f;
		setUpJoint(rightElbow, rightElbowJointConfig);	
	
	}
	
	CharacterJoint setUpJoint(Transform target, CharacterJointConfig config) {
		CharacterJoint newCharacterJoint = target.gameObject.AddComponent<CharacterJoint>();
		newCharacterJoint.connectedBody = config.connectedBody;
		newCharacterJoint.anchor = new Vector3(0.0f, 0.0f, 0.0f);
		newCharacterJoint.axis = config.axis;
		newCharacterJoint.swingAxis = config.swingAxis;
		
		SoftJointLimit lowTwistLimit = new SoftJointLimit();
		lowTwistLimit.limit = config.lowTwistLimit;
		newCharacterJoint.lowTwistLimit = lowTwistLimit;
			
		SoftJointLimit highTwistLimit = new SoftJointLimit();
		highTwistLimit.limit = config.highTwistLimit;
		newCharacterJoint.highTwistLimit = highTwistLimit;
			
		SoftJointLimit swing1Limit = new SoftJointLimit();
		swing1Limit.limit = config.swing1Limit;
		newCharacterJoint.swing1Limit = swing1Limit;
			
		SoftJointLimit swing2Limit = new SoftJointLimit();
		swing2Limit.limit =  config.swing2Limit;
		newCharacterJoint.swing2Limit = swing2Limit;

			
		return newCharacterJoint;
	}
	
	public void enableRagDoll() {
		enableRagDoll(Vector3.zero);
	}
	
	public void enableRagDoll(Vector3 newForce) {
		GetComponent<Animator> ().enabled = false;
		Rigidbody[] rigidbodies = root.GetComponentsInChildren<Rigidbody>();
		foreach (Rigidbody currentRigidbody in rigidbodies) {
			currentRigidbody.useGravity = true;
			currentRigidbody.isKinematic = false;		
		}
		CharacterController characterController = GetComponent<CharacterController>();
		root.GetComponent<Rigidbody>().AddForce(newForce + (characterController.velocity * 10) + (Vector3.up * 10), ForceMode.Impulse);
		characterController.enabled = false;
	}
	
	public void disableRagDoll() {
		Rigidbody[] rigidbodies = root.GetComponentsInChildren<Rigidbody>();
		foreach (Rigidbody currentRigidbody in rigidbodies) {
			currentRigidbody.useGravity = false;
			currentRigidbody.isKinematic = true;		
		}
	}

	public void disableColliders() {
		Collider[] colliders = root.GetComponentsInChildren<Collider>();
		foreach (Collider currentCollider in colliders) {
			currentCollider.enabled = false;
		}
	}
	
	public void enableColliders() {
		Collider[] colliders = root.GetComponentsInChildren<Collider>();
		foreach (Collider currentCollider in colliders) {
			currentCollider.enabled = true;
		}
	}

	public Vector3 getRagDollPos() {
		return root.position;
	}
	
	public void resetRagDollPos() {
		root.localPosition = Vector3.zero;
	}
}
