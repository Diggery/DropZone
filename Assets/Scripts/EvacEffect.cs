using UnityEngine;
using System.Collections;

public class EvacEffect : MonoBehaviour {

	public ParticleSystem evacParticles;
	public Light evacLight;
	
	public AnimationCurve animCurve;
	float animTimer = 0;
	
	DragControl dragControl;
	GameControl gameControl;
	
	Transform beam;
	Transform beamTarget;
	Material beamMat;
	float beamScroll;
	float beamTimer;
	Transform glow1;
	Transform glow2;
	
	bool playing;
	
	public void Init(DragControl _dragControl, GameControl _gameControl) {
		dragControl = _dragControl;
		gameControl = _gameControl;
		evacLight.intensity = 0;
		evacLight.spotAngle = 0;
		playing = true;
		
		beamTarget = dragControl.transform;
		beam = transform.Find("Beam");
		beamMat = beam.GetComponent<Renderer>().material;
		glow1 = transform.Find("Glow1");
		glow2 = transform.Find("Glow2");
		
	}
	
	void Update () {
		animTimer = Mathf.Clamp01(animTimer + (Time.deltaTime * (playing ? 1 : -1)));
		evacLight.intensity = animCurve.Evaluate(animTimer * 2);
		evacLight.spotAngle = animCurve.Evaluate(animTimer) * 10;
		
		if (!dragControl) {
			EndEvacEffect();
			return;
		}
		
		if (dragControl.transform.position.y > 15 && playing) {
			gameControl.UnitEvac(dragControl.transform.root.GetComponent<UnitController>());
			EndEvacEffect();
		}
		
		if (!playing && animTimer < 0.01f) {
			Destroy(gameObject);
		}
		
		transform.position = new Vector3(dragControl.transform.position.x, 0, dragControl.transform.position.z);
		
		beamTimer = Mathf.Clamp01 (beamTimer + (Time.deltaTime * 0.25f));
		float beamAmount = Util.EaseInOutQuart(beamTimer);
		
		beam.localPosition = new Vector3(0, 20, 0);
		Vector3 beamScale = new Vector3(beamAmount, 1, (beam.position - beamTarget.position).magnitude);
		beam.localScale = beamScale;
		beam.rotation = Quaternion.LookRotation((beamTarget.position - beam.position), (Camera.main.transform.position - beam.position));
		Vector3 beamPos = (Camera.main.transform.position - beamTarget.position).normalized + beamTarget.position;
		Quaternion beamRot = Quaternion.LookRotation(Camera.main.transform.position - beamPos) * Quaternion.AngleAxis(90, Vector3.right);
		
		beamScroll += Time.deltaTime;
		beamMat.SetFloat("_ScrollAmount", beamScroll);	
		
		glow1.position = beamPos;
		glow1.rotation = beamRot * Quaternion.AngleAxis(beamScroll * 45, Vector3.up);
		glow1.localScale = new Vector3(3, 3, 3) * beamAmount;
		glow2.position = beamPos;
		glow2.rotation = beamRot * Quaternion.AngleAxis(beamScroll * -45, Vector3.up);
		glow2.localScale = new Vector3(2, 2, 2) * beamAmount;
	}
	
	void EndEvacEffect() {
		if (dragControl) dragControl.CancelEvac();
		evacParticles.transform.parent = null;
		evacParticles.Stop();
		playing = false;
		Destroy(gameObject);
	}
}
