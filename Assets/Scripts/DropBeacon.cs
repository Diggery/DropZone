using UnityEngine;
using System.Collections;

public class DropBeacon : MonoBehaviour {

	float beaconRange = 4;
	
	public GameObject evacEffectPrefab;
	GameControl gameControl;
	
	float transitionTimer;
	
	Transform innerRing;
	Material innerRingMat;
	Transform outerRing;
	Material outerRingMat;
	

	
	public bool evacPossible;
	
	void Start () {
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
		
		innerRing = transform.Find("InnerRing");
		innerRingMat = innerRing.GetComponent<Renderer>().material;
		outerRing = transform.Find("OuterRing");
		outerRingMat = outerRing.GetComponent<Renderer>().material;
		

		transform.Translate(0.0f, 0.1f, 0.0f);
		
	}
	
	void Update () {

		Vector3 innerScaleOpen = new Vector3 (beaconRange, 1.0f, beaconRange);
		Vector3 innerScaleClose = new Vector3 (beaconRange * 0.9f, 1.0f, beaconRange * 0.9f);
		
		Vector3 outerScaleOpen = new Vector3 (beaconRange, 1.0f, beaconRange);
		Vector3 outerScaleClose = new Vector3 (beaconRange * 1.25f, 1.0f, beaconRange * 1.25f);
		
		Color innerRingColorOpen = new Color (0.0f, 0.0f, 0.0f, 0.5f);
		Color innerRingColorClose = new Color (0.0f, 0.0f, 0.0f, 0.1f);
		
		Color outerRingColorOpen = new Color (1.0f, 1.0f, 1.0f, 1.0f);
		Color outerRingColorClose = new Color (1.0f, 1.0f, 1.0f, 0.0f);
		
		transitionTimer = Mathf.Clamp01 (transitionTimer + (GameTime.deltaTime * (evacPossible ? 1 : -1)));
		float transitionAmount = Util.EaseInOutQuart(transitionTimer);

		innerRing.localScale = Vector3.Lerp(innerScaleClose, innerScaleOpen, transitionAmount);
		innerRingMat.color = Color.Lerp(innerRingColorClose, innerRingColorOpen, transitionAmount);
		innerRing.Rotate(Vector3.up, 15 * GameTime.deltaTime);
		
		outerRing.localScale = Vector3.Lerp(outerScaleClose, outerScaleOpen, transitionAmount);
		outerRingMat.color = Color.Lerp(outerRingColorClose, outerRingColorOpen, transitionAmount);
		outerRing.Rotate(Vector3.up, -15 * GameTime.deltaTime);


	}
	
	public void ShowEvacZone() {
		evacPossible = true;
	}
	public void HideEvacZone() {
		evacPossible = false;
	}
	
	public bool Evac(DragControl dragControl) {
		float distanceToEvac = (dragControl.transform.position - transform.position).magnitude;
		
		if (distanceToEvac < beaconRange) {
			GameObject evacEffectObj = Instantiate(evacEffectPrefab, dragControl.transform.position, Quaternion.identity) as GameObject;		
			EvacEffect evacEffect = evacEffectObj.GetComponent<EvacEffect>();
			evacEffect.Init(dragControl, gameControl);
			return true;
		}
		return false;
	}
}
