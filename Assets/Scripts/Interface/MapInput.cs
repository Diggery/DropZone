using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;



public class MapInput : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler, IPointerClickHandler {

	InputControl inputControl;
	
	public void SetInputControl(InputControl _inputControl) {
		inputControl = _inputControl;
	}
	
	public void OnBeginDrag(PointerEventData eventData) {
		
	}
	
	public void OnPointerClick(PointerEventData eventData) {
		inputControl.MapClicked();
	}	
	
	public void OnDrag(PointerEventData eventData) {
		inputControl.MapDragged(eventData);
	}
	
	public void OnEndDrag(PointerEventData eventData) {
	}
}
