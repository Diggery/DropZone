using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;

public class HandleControl : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IPointerDownHandler, IPointerClickHandler {

	
	public GameObject target;
	
	float lastClickDownTime = 0.0f;
	
	public void SetTarget(GameObject _target) {
		target = _target;
	}
	
	public void OnPointerDown(PointerEventData eventData) {
		lastClickDownTime = GameTime.time;
	}
	
	public void OnPointerClick(PointerEventData eventData) {
		if ((GameTime.time - lastClickDownTime) > 0.25f) return;
		if (!target) {
			transform.root.SendMessage("OnHandleClicked", eventData);
		} else {
			target.SendMessage("OnHandleClicked", eventData);
		}
	}
	public void OnBeginDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("HandleBeginDrag", eventData);
		} else {
			target.SendMessage("HandleBeginDrag", eventData);
		}	
	}
	public void OnDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("HandleDrag", eventData);
		} else {
			target.SendMessage("HandleDrag", eventData);
		}	
	}
	public void OnEndDrag(PointerEventData eventData) {
		if (!target) {
			transform.root.SendMessage("HandleEndDrag", eventData);
		} else {
			target.SendMessage("HandleEndDrag", eventData);
		}	
	}
			
}
