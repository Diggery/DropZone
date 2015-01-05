using UnityEngine;
using System.Collections;

public class Marker : MonoBehaviour {

	Transform post;
	Transform dot;
	Transform label;
	Transform icon;
	
	public Texture unknownTex;
	public Texture hitTex;
	public Texture injuryTex;
	public Texture deathTex;
	public Texture newEnemyTex;
	
	float startTimer = 0.0f;
	float endTimer = 0.0f;
	public AnimationCurve transCurve;
	
	bool configured;
	
	public enum MarkerType { Unknown, Hit, Injury, Death, NewEnemy };
	
	public void SetUp (MarkerType type) {
	
		post = transform.Find("Post");
		dot = transform.Find("Post/Dot");
		label = transform.Find("Post/Label");
		icon = transform.Find("Post/Label/Icon");
		switch (type) {
			case MarkerType.Unknown :
			icon.renderer.material.mainTexture = unknownTex;
			break;
			
			case MarkerType.Hit :
			icon.renderer.material.mainTexture = hitTex;
			break;
			
			case MarkerType.Injury :
			icon.renderer.material.mainTexture = injuryTex;
			break;
			
			case MarkerType.Death :
			icon.renderer.material.mainTexture = deathTex;
			break;
			
			case MarkerType.NewEnemy :
			icon.renderer.material.mainTexture = newEnemyTex;
			break;
			
		}
		
		configured = true;
		
	}
	
	void Update () {
		if (!configured) return;
		dot.LookAt(Camera.main.transform);
		post.rotation = Quaternion.AngleAxis(Camera.main.transform.eulerAngles.y, Vector3.up);

		if (startTimer > 1.0f && !GameTime.paused) {
			endTimer += Time.deltaTime;
			
			Color markerColor = Color.Lerp(Color.black, Color.clear, transCurve.Evaluate(endTimer));
			Color iconColor = Color.Lerp(Color.white, Color.clear, transCurve.Evaluate(endTimer));
			
			renderer.material.color = markerColor;
			post.renderer.material.color = markerColor;
			dot.renderer.material.color = markerColor;
			label.renderer.material.color = markerColor;
			icon.renderer.material.color = iconColor;	
			if (endTimer > 1) Destroy(gameObject);		
		}		
				
								
		startTimer += GameTime.deltaTime * 3;
		float scale = transCurve.Evaluate(startTimer);
		transform.localScale = new Vector3(scale, scale, scale);
		if (!transform.renderer.enabled) {
			renderer.enabled = true;	
			post.renderer.enabled = true;	
			dot.renderer.enabled = true;	
			label.renderer.enabled = true;	
			icon.renderer.enabled = true;	
		}		
	}
}
