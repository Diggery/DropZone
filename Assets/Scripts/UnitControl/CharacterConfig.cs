using UnityEngine;
using System.Collections;

public class CharacterConfig : MonoBehaviour {
	
	UnitController unitController;
	
	public string nameSpace; 
	Transform characterObj; 
	
	public RagDollControl.RagDollData setUpData;

	string StripNameSpace(string name) {
		int lastColon = name.LastIndexOf (":");
		if (lastColon < 0)
			return name;
		string newName = name.Substring (lastColon);
		return newName;
	}

	string AddNameSpaceToPath(string path) {
		string newPath = "";
		string[] split = path.Split(new char[] {'/'});
		foreach (string part in split) {

			newPath += nameSpace + ':' + part +  "/";

		}
		newPath = newPath.Substring(0, newPath.Length - 1);
		return newPath;
	}
	

	public void Init(GameObject helmet) {

		unitController = GetComponent<UnitController>();
		if (!unitController) Debug.Log("ERROR: Can't Find Player Controller");
		unitController.SetTargetCollision(transform.Find(AddNameSpaceToPath("Skeleton_Group/Root_Skel/Spine1_Skel/Spine2_Skel")));
		if (helmet) {
			string neckPath = 
				"Skeleton_Group/" +
				"Root_Skel/" +
				"Spine1_Skel/" +
				"Spine2_Skel/" +
				"Neck_Skel/" +
				"Head_Skel";
			neckPath = AddNameSpaceToPath(neckPath);
			Transform neck = transform.Find(neckPath);
			if (!neck) {
				Debug.Log("No neck found at " + neckPath);
			}
			GameObject newHead = Instantiate(helmet, neck.position, neck.rotation) as GameObject;
			newHead.transform.parent = neck;
			newHead.renderer.enabled = true;
			if (unitController.useColorFader) {
				unitController.headModel = newHead;
			}
		}
		
		
		RagDollControl ragDollControl = gameObject.AddComponent<RagDollControl>();


		setUpData.layerName = "RagDoll";
		setUpData.nameSpace = nameSpace;
		setUpData.rootTransform = transform.Find(AddNameSpaceToPath("Skeleton_Group/Root_Skel"));
		if (!setUpData.rootTransform) Debug.Log ("Can't find root on " + transform.name);

		setUpData.root.collision.center = new Vector3(0.0f, 0.0f, 0.0f);
		setUpData.root.collision.size = new Vector3(0.4f, 0.32f, 0.3f);
		
		setUpData.leftHip.collision.center = new Vector3(0.20f, 0.000f, 0.000f);
		setUpData.leftHip.collision.radius = 0.08f;
		setUpData.leftHip.collision.height = 0.380f;
		setUpData.leftHip.joint.axis = new Vector3(0.0f, 0.0f, -1.0f);
		setUpData.leftHip.joint.swingAxis = new Vector3(1.0f, 0.0f, 0.0f);
		
		setUpData.leftKnee.collision.center = new Vector3(0.20f, 0.000f, 0.000f);
		setUpData.leftKnee.collision.radius = 0.08f;
		setUpData.leftKnee.collision.height = 0.476f;
		setUpData.leftKnee.joint.axis = new Vector3(0.0f, 0.0f, -1.0f);
		setUpData.leftKnee.joint.swingAxis = new Vector3(1.0f, 0.0f, 0.0f);	
		
		setUpData.rightHip.collision.center = new Vector3(-0.20f, 0.000f, 0.000f);
		setUpData.rightHip.collision.radius = 0.08f;
		setUpData.rightHip.collision.height = 0.380f;
		setUpData.rightHip.joint.axis = new Vector3(0.0f, 0.0f, 1.0f);
		setUpData.rightHip.joint.swingAxis = new Vector3(-1.0f, 0.0f, 0.0f);
		
		setUpData.rightKnee.collision.center = new Vector3(-0.20f, 0.000f, 0.000f);
		setUpData.rightKnee.collision.radius = 0.08f;
		setUpData.rightKnee.collision.height = 0.476f;
		setUpData.rightKnee.joint.axis = new Vector3(0.0f, 0.0f, -1.0f);
		setUpData.rightKnee.joint.swingAxis = new Vector3(-1.0f, 0.0f, 0.0f);	
		
		setUpData.spine.collision.center = new Vector3(0.0f, 0.02f, 0.0f);
		setUpData.spine.collision.size = new Vector3(0.40f, 0.35f, 0.30f);
		setUpData.spine.joint.axis = new Vector3(0.0f, 0.0f, -1.0f);
		setUpData.spine.joint.swingAxis = new Vector3(-1.0f, 0.0f, 0.0f);	
		
		setUpData.head.collision.center = new Vector3(0.000f, 0.120f, 0.000f);
		setUpData.head.collision.radius = 0.120f;
		setUpData.head.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
		setUpData.head.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);	
		
		setUpData.leftShoulder.collision.center = new Vector3(0.12f, 0.000f, 0.000f);
		setUpData.leftShoulder.collision.radius = 0.08f;
		setUpData.leftShoulder.collision.height = 0.30f;
		setUpData.leftShoulder.joint.axis = new Vector3(0.0f, 0.0f, 1.0f);
		setUpData.leftShoulder.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
				
		setUpData.leftElbow.collision.center = new Vector3(0.20f, 0.000f, 0.000f);
		setUpData.leftElbow.collision.radius = 0.08f;
		setUpData.leftElbow.collision.height = 0.35f;
		setUpData.leftElbow.joint.axis = new Vector3(0.0f, -1.0f, 0.0f);
		setUpData.leftElbow.joint.swingAxis = new Vector3(0.0f, 0.0f, -1.0f);
				
		setUpData.rightShoulder.collision.center = new Vector3(-0.12f, 0.000f, 0.000f);
		setUpData.rightShoulder.collision.radius = 0.08f;
		setUpData.rightShoulder.collision.height = 0.30f;
		setUpData.rightShoulder.joint.axis = new Vector3(0.0f, 0.0f, -1.0f);
		setUpData.rightShoulder.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
				
		setUpData.rightElbow.collision.center = new Vector3(-0.20f, 0.000f, 0.000f);
		setUpData.rightElbow.collision.radius = 0.08f;
		setUpData.rightElbow.collision.height = 0.35f;
		setUpData.rightElbow.joint.axis = new Vector3(0.0f, -1.0f, 0.0f);
		setUpData.rightElbow.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
				
		ragDollControl.SetUp(setUpData);

		Destroy (this);
	}
}
