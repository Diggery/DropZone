using UnityEngine;
using System.Collections;

public class UnitColorFade : MonoBehaviour {

	Material unitMat;
	Material headMat;
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
	
	public void SetHeadRenderer(Renderer newHeadRenderer) {
		headMat = newHeadRenderer.material;
	}
	
	void Update () {
		hitFade = Mathf.Clamp01(hitFade - (Time.deltaTime * 5));
		healFade = Mathf.Clamp01(healFade - (Time.deltaTime * 5));
		
		if (hitFade >= 0) {
			unitMat.SetFloat("_HitColorFade", hitFade);
			if (headMat) headMat.SetFloat("_HitColorFade", hitFade);
		}
		if (healFade >= 0) {
			unitMat.SetFloat("_HealColorFade", healFade);
			if (headMat) headMat.SetFloat("_HealColorFade", healFade);
		}
		
	}
	
	public void TakeDamage(UnitController.DamageInfo damageInfo) {
		hitFade = 1.0f;
	}
	public void HitDeflected(UnitController.DamageInfo damageInfo) {
		healFade = 1.0f;
	}		
	
	public void RecieveHealing(float healAmount) {
		healFade = 1.0f;
	}
}
