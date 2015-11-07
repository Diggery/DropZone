using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;


public class InputRepeater : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IPointerClickHandler, IPointerDownHandler {
	
	GameObject target;
	
	public void SetTarget(GameObject _target) {
		target = _target;
	}
		
	public void OnBeginDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("OnBeginDrag", eventData, SendMessageOptions.DontRequireReceiver);
		} else {
			target.SendMessage("OnBeginDrag", eventData, SendMessageOptions.DontRequireReceiver);
		}		
	}
	
	public void OnPointerDown(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("OnPointerDown", eventData, SendMessageOptions.DontRequireReceiver);
		} else {
			target.SendMessage("OnPointerDown", eventData, SendMessageOptions.DontRequireReceiver);
		}	
	}
		
	public void OnPointerClick(PointerEventData eventData) {
	
		print ("Repeater on " + gameObject.name);
		if (!target) {
			transform.root.SendMessage("OnPointerClick", eventData, SendMessageOptions.DontRequireReceiver);
		} else {
			target.SendMessage("OnPointerClick", eventData, SendMessageOptions.DontRequireReceiver);
		}	
	}	
	
	public void OnDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("OnDrag", eventData, SendMessageOptions.DontRequireReceiver);
		} else {
			target.SendMessage("OnDrag", eventData, SendMessageOptions.DontRequireReceiver);
		}	
	}
	
	public void OnEndDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("OnEndDrag", eventData, SendMessageOptions.DontRequireReceiver);
		} else {
			target.SendMessage("OnEndDrag", eventData, SendMessageOptions.DontRequireReceiver);
		}	
	}
}
