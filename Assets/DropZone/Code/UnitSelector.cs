using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitSelector : MonoBehaviour {
  bool isOpen = false;
  public bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;

      Debug.Log("Selector is open " + isOpen);
      gameObject.SetActive(isOpen);
    }
  }

  public void Init() {
    IsOpen = false;
  }
}
