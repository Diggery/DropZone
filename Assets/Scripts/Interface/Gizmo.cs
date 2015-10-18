using UnityEngine;
using System.Collections;

public class Gizmo : MonoBehaviour {

	[HideInInspector]
	public Equipment equipment;	
	
	[HideInInspector]
	public GameControl gameControl;
	
	[HideInInspector]
	public InputControl inputControl;
	
	public virtual void Setup(Equipment _equipment) {}
	
	public void FinishSetup(Equipment _equipment) {
		equipment = _equipment;
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();
		inputControl = gameControlObj.GetComponent<InputControl>();
		inputControl.AddGizmoControl(gameObject);
		inputControl.CancelPath();
		
	}
	
	public virtual bool OverrideMapInput(Vector3 mapPos) {
		return false;
	}
	
	public virtual void SetPos(Vector3 mapPos) {
	}
	
	
}
