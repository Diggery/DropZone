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
			icon.GetComponent<Renderer>().material.mainTexture = unknownTex;
			break;
			
			case MarkerType.Hit :
			icon.GetComponent<Renderer>().material.mainTexture = hitTex;
			break;
			
			case MarkerType.Injury :
			icon.GetComponent<Renderer>().material.mainTexture = injuryTex;
			break;
			
			case MarkerType.Death :
			icon.GetComponent<Renderer>().material.mainTexture = deathTex;
			break;
			
			case MarkerType.NewEnemy :
			icon.GetComponent<Renderer>().material.mainTexture = newEnemyTex;
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
			
			GetComponent<Renderer>().material.color = markerColor;
			post.GetComponent<Renderer>().material.color = markerColor;
			dot.GetComponent<Renderer>().material.color = markerColor;
			label.GetComponent<Renderer>().material.color = markerColor;
			icon.GetComponent<Renderer>().material.color = iconColor;	
			if (endTimer > 1) Destroy(gameObject);		
		}		
				
								
		startTimer += GameTime.deltaTime * 3;
		float scale = transCurve.Evaluate(startTimer);
		transform.localScale = new Vector3(scale, scale, scale);
		if (!transform.GetComponent<Renderer>().enabled) {
			GetComponent<Renderer>().enabled = true;	
			post.GetComponent<Renderer>().enabled = true;	
			dot.GetComponent<Renderer>().enabled = true;	
			label.GetComponent<Renderer>().enabled = true;	
			icon.GetComponent<Renderer>().enabled = true;	
		}		
	}
}
