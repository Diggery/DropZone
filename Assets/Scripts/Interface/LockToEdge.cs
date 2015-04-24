using UnityEngine;
using System.Collections;

public class LockToEdge : MonoBehaviour {

	public enum Edge { LowerLeft, LowerRight, LowerCenter, UpperRight, UpperCenter, UpperLeft, Center };
	
	public Edge lockToEdge = Edge.LowerLeft;	




	void Start() {
	
	
	}
}

