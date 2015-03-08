using UnityEngine;
using System.Collections;

public class UnitColorFade : MonoBehaviour {

	Material unitMat;
	Material headMat;
	
	Color flashColor 		= new Color(1.0f, 1.0f, 1.0f, 1.0f);
	
	Color damageColor 		= new Color(1.0f, 0.0f, 0.0f, 1.0f);
	Color healColor 		= new Color(25f/255f, 75f/255f, 0f/255f, 1.0f);
	Color deflectColor 		= new Color(100f/255f, 180/255f, 250/255f, 1.0f);
	
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
		if (flashColor.r + flashColor.g + flashColor.b > 0.05f) {
			flashColor = Color.Lerp(flashColor, Color.black, GameTime.deltaTime * 5);
			unitMat.SetColor("_FlashColor", flashColor);
			if (headMat) headMat.SetColor("_FlashColor", flashColor);
			if (flashColor.r + flashColor.g + flashColor.b < 0.05f) {
				flashColor = Color.black;
				unitMat.SetColor("_FlashColor", flashColor);
				if (headMat) headMat.SetColor("_FlashColor", flashColor);
			}
		} 
	}
	
	public void TakeDamage(UnitController.DamageInfo damageInfo) {
		flashColor = damageColor;
	}
	public void Heal(float healAmount) {
		flashColor = healColor;
	}
	public void HitDeflected(UnitController.DamageInfo damageInfo) {
		flashColor = deflectColor;
	}		
}
