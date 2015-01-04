using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;

public class UnitInput : MonoBehaviour, IPointerClickHandler {
	
	InputControl inputControl;
	UnitController unitController;
	
	public void SetInputControl(InputControl _inputControl, UnitController _unitController) {
		inputControl = _inputControl;
		unitController = _unitController;
	}
	

	public void OnPointerClick(PointerEventData eventData) {
		inputControl.UnitSelected(unitController);
	}
	

}
