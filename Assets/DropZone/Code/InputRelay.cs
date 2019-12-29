using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class InputRelay : MonoBehaviour, IPointerClickHandler, IPointerDownHandler, IDragHandler, IPointerUpHandler {

  public class InputEvent : UnityEvent<PointerEventData> { }
  public InputEvent onClick = new InputEvent();
  public InputEvent onDown = new InputEvent();
  public InputEvent onDrag = new InputEvent();
  public InputEvent onUp = new InputEvent();

  public void OnPointerClick(PointerEventData eventData) {
    onClick.Invoke(eventData);
  }
  public void OnPointerDown(PointerEventData eventData) {
    onDown.Invoke(eventData);
  }
  public void OnDrag(PointerEventData eventData) {
    onDrag.Invoke(eventData);
  }
  public void OnPointerUp(PointerEventData eventData) {
    onUp.Invoke(eventData);
  }
}