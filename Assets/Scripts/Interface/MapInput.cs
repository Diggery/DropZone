using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;



public class MapInput : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IPointerClickHandler, IPointerDownHandler {

	InputControl inputControl;
	
	float clickTime;
	
	void Update() {
		clickTime += GameTime.deltaTime;
	}
	
	public void SetInputControl(InputControl _inputControl) {
		inputControl = _inputControl;
	}
	
	public void OnBeginDrag(PointerEventData eventData) {
		
	}
	public void OnPointerDown(PointerEventData eventData) {
		clickTime = 0;
	}
		
	public void OnPointerClick(PointerEventData eventData) {
		if (clickTime < 0.25f) inputControl.MapClicked();
	}	
	
	public void OnDrag(PointerEventData eventData) {
		inputControl.MapDragged(eventData);
	}
	
	public void OnEndDrag(PointerEventData eventData) {
	}
}
