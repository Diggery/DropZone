using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InputRelay : MonoBehaviour, IPointerClickHandler, IPointerDownHandler, IDragHandler, IPointerUpHandler {

  GameObject inputTarget;
  public InputRelay Init(GameObject target) {
    inputTarget = target;
    return this;
  }

  public void OnPointerClick(PointerEventData eventData) {
    inputTarget.SendMessage("OnPointerClick", eventData, SendMessageOptions.DontRequireReceiver);
  }
  public void OnPointerDown(PointerEventData eventData) {
    inputTarget.SendMessage("OnPointerDown", eventData, SendMessageOptions.DontRequireReceiver);
  }
  public void OnDrag(PointerEventData eventData) {
    inputTarget.SendMessage("OnDrag", eventData, SendMessageOptions.DontRequireReceiver);
  }
  public void OnPointerUp(PointerEventData eventData) {
    inputTarget.SendMessage("OnPointerUp", eventData, SendMessageOptions.DontRequireReceiver);
  }
}
