using UnityEngine;
using System.Collections;

public class Marker : MonoBehaviour {

	Renderer mainRenderer;
	Transform post;
	Renderer postRenderer;
	Transform label;
	Renderer labelRenderer;
	Transform icon;
	Renderer iconRenderer;
	
	InputControl inputControl;
	
	public Texture unknownTex;
	public Texture hitTex;
	public Texture injuryTex;
	public Texture deathTex;
	public Texture pickUpTex;
	public Texture newEnemyTex;
	
	float startTimer = 0.0f;
	float endTimer = 0.0f;
	public AnimationCurve transCurve;
	
	
	bool configured;
	
	public enum MarkerType { Unknown, Hit, Injury, Death, NewEnemy };
	
	public void SetUp (MarkerType type) {
		mainRenderer = GetComponent<Renderer>();
		post = transform.Find("Post");
		postRenderer = post.GetComponent<Renderer>();
		label = transform.Find("Post/Label");
		labelRenderer = label.GetComponent<Renderer>();
		icon = transform.Find("Post/Label/Icon");
		iconRenderer = icon.GetComponent<Renderer>();
		
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
		transform.localScale = new Vector3(0.05f, 0.05f, 0.05f);
		configured = true;
		
	}
	
	void Update () {
		if (!configured) return;
		post.rotation = Quaternion.AngleAxis(Camera.main.transform.eulerAngles.y, Vector3.up);
		

		if (startTimer > 1.0f && !GameTime.paused) {
			endTimer += Time.deltaTime;
			
			Color markerColor = Color.Lerp(Color.black, new Color(0,0,0,0), transCurve.Evaluate(endTimer));
			Color iconColor = Color.Lerp(Color.white, new Color(1,1,1,0), transCurve.Evaluate(endTimer));
			
			mainRenderer.material.color = markerColor;
			postRenderer.material.color = markerColor;
			labelRenderer.material.color = markerColor;
			iconRenderer.material.color = iconColor;	
			if (endTimer > 1) Destroy(gameObject);		
		}		
				
								
		startTimer += GameTime.deltaTime * 3;
		float scale = transCurve.Evaluate(startTimer);
		transform.localScale = new Vector3(scale, scale, scale);
		if (!transform.GetComponent<Renderer>().enabled) {
			mainRenderer.enabled = true;	
			postRenderer.enabled = true;	
			labelRenderer.enabled = true;	
			iconRenderer.enabled = true;	
		}		
	}
}
