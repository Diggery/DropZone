using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class HandleControl : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IPointerClickHandler {

	
	public GameObject target;
	
	public void SetTarget(GameObject _target) {
		target = _target;
	}
	
	public void OnPointerClick(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("OnHandleClicked", eventData);
		} else {
			target.SendMessage("OnHandleClicked", eventData);
		}
	}
	public void OnBeginDrag(PointerEventData eventData) {
		print ("start drag");
		if (!target) {
			transform.root.SendMessage("HandleBeginDrag", eventData);
		} else {
			target.SendMessage("HandleBeginDrag", eventData);
		}	
	}
	public void OnDrag(PointerEventData eventData) {
		print ("drag");
		if (!target) {
			transform.root.SendMessage("HandleDrag", eventData);
		} else {
			target.SendMessage("HandleDrag", eventData);
		}	
	}
	public void OnEndDrag(PointerEventData eventData) {
		print ("end drag");
		if (!target) {
			transform.root.SendMessage("HandleEndDrag", eventData);
		} else {
			target.SendMessage("HandleEndDrag", eventData);
		}	
	}
			
}
