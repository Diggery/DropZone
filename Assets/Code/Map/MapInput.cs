using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class MapInput : MonoBehaviour, IPointerDownHandler, IPointerUpHandler {

    InputControl inputControl;

    public void SetInputControl(InputControl _inputControl) {
        inputControl = _inputControl;
    }

    public void OnPointerDown(PointerEventData eventData) {
       
    }

    public void OnPointerUp(PointerEventData eventData) {
        inputControl.MapClicked(eventData.pointerCurrentRaycast.worldPosition);
    }
}
