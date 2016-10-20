using UnityEngine;
using System.Collections;

public class TestAttach : MonoBehaviour {

    public Transform arm1;
    public Transform arm2;
    public Transform torso;

    public Animator animator;

	void Awake () {
        Transform arm1Obj = Instantiate (arm1) as Transform;
        Transform arm2Obj = Instantiate (arm2) as Transform;

        arm1Obj.parent = torso;
        arm1Obj.name = "Arm1";
        arm2Obj.parent = torso;
        arm2Obj.name = "Arm3";

        animator.Rebind();


	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
