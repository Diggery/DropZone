using UnityEngine;
using System.Collections;

public class EvacEffect : MonoBehaviour {

	public ParticleSystem evacParticles;
	public Light evacLight;
	
	public AnimationCurve animCurve;
	float animTimer = 0;
	
	DragControl dragControl;
	GameControl gameControl;
	
	bool playing;
	
	public void Init(DragControl _dragControl, GameControl _gameControl) {
		dragControl = _dragControl;
		gameControl = _gameControl;
		evacLight.intensity = 0;
		evacLight.spotAngle = 0;
		playing = true;
	
	}
	
	void Update () {
		animTimer = Mathf.Clamp01(animTimer + (Time.deltaTime * (playing ? 1 : -1)));
		evacLight.intensity = animCurve.Evaluate(animTimer * 2);
		evacLight.spotAngle = animCurve.Evaluate(animTimer) * 10;
		
		if (dragControl.transform.position.y > 10 && playing) {
			gameControl.UnitEvac(dragControl.transform.root.GetComponent<UnitController>());
			EndEvacEffect();
		}
		
		if (!playing && animTimer < 0.01f) {
			Destroy(gameObject);
		}
		
		transform.position = new Vector3(dragControl.transform.position.x, 0, dragControl.transform.position.z);
		
		
	}
	
	void EndEvacEffect() {
		dragControl.CancelEvac();
		evacParticles.transform.parent = null;
		evacParticles.Stop();
		playing = false;

	}
	

}
