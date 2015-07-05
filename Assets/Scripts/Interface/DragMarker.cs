using UnityEngine;
using System.Collections;

public class DragMarker : MonoBehaviour {

	bool configured;
	float delay = 3;
	
	Transform post;
	Renderer postRenderer;
	Transform label;
	Renderer labelRenderer;
	Transform ring;
	Renderer ringRenderer;
	
	BoxCollider buttonCollision;
	
	float deathTime = 10;
	float deathTimer = 10;
	float pulseTime = 1;
	float pulseTimer = 1;
	Vector2 pulseScale = Vector2.one;
	Vector2 scrollAmount = Vector2.zero;
	
	UnitController target;
	GameControl gameControl;
	InputControl inputControl;
	UnitController unitDragging;
	DragControl dragControl;
	
	bool waiting;
	bool selected;
	bool dead;
	
	public void Init (UnitController _target, InputControl _inputControl, GameControl _gameControl) {
		
		target = _target;
		inputControl = _inputControl;
		gameControl = _gameControl;
		
		post = transform.Find("Post");
		postRenderer = post.GetComponent<Renderer>();
		label = transform.Find("Post/Label");
		labelRenderer = label.GetComponent<Renderer>();
		ring = transform.Find("Post/Ring");
		ringRenderer = ring.GetComponent<Renderer>();
		buttonCollision = label.GetComponent<BoxCollider>();
		buttonCollision.enabled = false;
		postRenderer.enabled = false;
		labelRenderer.enabled = false;

		label.gameObject.AddComponent<ButtonControl>().SetTarget(gameObject);
		
		waiting = true;
	}
	
	void Update () {

		if (delay > 0) {
			delay -= Time.deltaTime;
			if (delay < 0) {
				GetComponent<Renderer>().enabled = true;
				postRenderer.enabled = true;
				labelRenderer.enabled = true;
				ringRenderer.enabled = true;
				transform.localScale = new Vector3 (0.1f, 0.1f, 0.1f);
				
			}
			return;
		}
		
		float markerScale = 1.0f;
		float pulseScaleAmount = 1.0f;
		Color markerColor = Color.black;
		Color labelColor = new Color(0.5f, 0.9f, 0.0f, 0.0f);
		
		if (unitDragging) {
		
			// dead people can't drag
			if (unitDragging.dead) {
				CancelDragging();
				return;
			}
			
			// wait until the dragging guys gets close enough so we dont go sliding accross the map
			if (waiting) {
				float distance = (unitDragging.transform.position - transform.position).sqrMagnitude;
				if (distance < 1.1) StartDragging();
				markerColor = new Color ( 0.0f, 0.0f, 0.0f, 0.5f);
				markerScale = 0.5f;
			} else {
				if (dragControl.dragActive) {
					markerColor = new Color ( 0.0f, 0.0f, 0.0f, 0.0f);
					markerScale = 0.5f;
					pulseScaleAmount = 0.6f;
					labelColor.a = 0;
				} else {
					markerColor = new Color ( 0.0f, 0.0f, 0.0f, 1.0f);
					markerScale = 1.0f;
					pulseScaleAmount = 1.0f;
					labelColor.a = 1;
				}
			}
		
		} else {
			// toogle the collision if units are selected.
			if (inputControl.selectedUnit != selected) {
				if (inputControl.selectedUnit) {
					MakeActive();
				} else {
					MakeInactive();
				}
			}
			
			if (inputControl.selectedUnit) {
				markerScale = 1.0f;
				pulseScaleAmount = 1.0f;
				labelColor.a = 1;
			} else {
				markerScale = 0.5f;
				pulseScaleAmount = 0.6f;
				labelColor.a = 0;
			}
		}
		
		pulseTimer -= GameTime.deltaTime;
		if (pulseTimer < 0) {
			Color flashColor = new Color (1, 0, 0, labelColor.a);
			labelRenderer.material.color = flashColor;
			pulseTimer = pulseTime;
		}
		deathTimer -= Time.deltaTime;
		
		Vector2 deathAmount = new Vector2( -(1 - (deathTimer/deathTime)), 0);
		ringRenderer.material.mainTextureOffset = deathAmount; 
		
		if (deathTimer < 0) {
			dead = true;
		}
		
		if (dead) {
			markerScale = 0.05f;
			if (transform.localScale.x < 0.1f) {
				CancelDragging();
				gameControl.AddMarker(transform.position, Marker.MarkerType.Death);
				Destroy(gameObject);
			}
		}
				
		Vector3 finalMarkerScale = new Vector3 (markerScale, markerScale, markerScale);
		transform.localScale = Vector3.Lerp(transform.localScale, finalMarkerScale, GameTime.deltaTime * 8);
		postRenderer.material.color = markerColor;
		
		pulseScale = Vector2.Lerp(pulseScale, new Vector2(pulseScaleAmount, pulseScaleAmount), GameTime.deltaTime * 5);
		labelRenderer.material.SetTextureScale("_ScrollTex", pulseScale); 
		
		scrollAmount.x += GameTime.deltaTime * 1.0f; 
		labelRenderer.material.SetTextureOffset("_ScrollTex", scrollAmount); 
		labelRenderer.material.color = Color.Lerp(labelRenderer.material.color, labelColor, GameTime.deltaTime * 2);
				
		post.rotation = Quaternion.AngleAxis(Camera.main.transform.eulerAngles.y, Vector3.up);
		Vector3 targetPos = target.GetTargetPosition();
		transform.position = new Vector3(targetPos.x, 0, targetPos.z);
	}
		
	public void ButtonClicked(string name) {
		if (unitDragging) {
			CancelDragging();
			return;
		}
			
		unitDragging = inputControl.GetSelectedUnit();
		unitDragging.MoveTo(transform.position);
		inputControl.CancelPath();
	}
	
	public void StartDragging() {
		waiting = false;
		dragControl = target.GetTargetCenter().gameObject.AddComponent<DragControl>();
		dragControl.SetUpDragging(unitDragging.GetAttachPoint("LeftHand"));
		unitDragging.StartDragging(dragControl);
	}
	
	public void CancelDragging() {
		waiting = true;
		if (unitDragging) unitDragging.StopDragging();
		unitDragging = null;
	}
	
	void MakeActive() {
		selected = true;
		buttonCollision.enabled = true;
	}
	
	void MakeInactive() {
		selected = false;
		buttonCollision.enabled = false;
	}
}
