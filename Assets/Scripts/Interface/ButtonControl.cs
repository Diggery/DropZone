using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class ButtonControl : MonoBehaviour, IPointerClickHandler {
	
	GameObject target;
	
	public void SetTarget(GameObject _target) {
		target = _target;
	}
	
	public void OnPointerClick(PointerEventData eventData) {
		
		if (!target) {
			transform.root.SendMessage("ButtonClicked", name);
		} else {
			target.SendMessage("ButtonClicked", name);
		}
	}
	

}
