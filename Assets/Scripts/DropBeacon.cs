using UnityEngine;
using System.Collections;

public class DropBeacon : MonoBehaviour {

	float beaconRange = 4;
	
	public GameObject evacEffectPrefab;
	GameControl gameControl;
	
	void Start () {
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
		Events.Listen(gameObject, "DeselectUnit");
	}
	
	void Update () {
	
	}
	
	public void ShowEvacZone() {
		print ("Showing Zone");
	}
	public void HideEvacZone() {
		print ("Hiding Zone");
	}
	
	public void DeselectUnit(Events.Notification notification) {
	
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
