using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class UnitInput : MonoBehaviour, IPointerClickHandler {
	
	InputControl inputControl;
	UnitController unitController;
	
	float lastClickTime = 0;
	
	public void SetInputControl(InputControl _inputControl, UnitController _unitController) {
		inputControl = _inputControl;
		unitController = _unitController;
	}
	

	public void OnPointerClick(PointerEventData eventData) {
		if (eventData.clickTime - lastClickTime < 0.5f) {
			inputControl.UnitDoubleClicked(unitController);
			return;
		}
		lastClickTime = eventData.clickTime;
		inputControl.UnitSelected(unitController);
	}
}
