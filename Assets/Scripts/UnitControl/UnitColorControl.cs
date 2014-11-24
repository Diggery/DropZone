using UnityEngine;
using System.Collections;

public class UnitColorControl : MonoBehaviour {

	Material unitMat;
	float hitFade;
	float healFade;
	
	AnimationCurve fadeCurve = new AnimationCurve();

	void Start () {		
		Keyframe startKey = new Keyframe(0, 1, -3, -3);
		Keyframe endKey = new Keyframe(1, 0, 0, 0);
		fadeCurve.AddKey(startKey);
		fadeCurve.AddKey(endKey);
		
		SkinnedMeshRenderer[] unitRenderer = gameObject.GetComponentsInChildren<SkinnedMeshRenderer>();	
	
		unitMat = unitRenderer[0].material;
	
	}
	
	void Update () {
		if (hitFade > 0) {
			unitMat.SetFloat("_HitColorFade", hitFade);
		}
		hitFade = Mathf.Clamp01(hitFade - (Time.deltaTime * 2));
	}
	
	public void TakeDamage(Vector4 damageInfo) {
		print ("IM HIT!!!!!!!!!!!!!");
		hitFade = 1.0f;
	
	}
}
