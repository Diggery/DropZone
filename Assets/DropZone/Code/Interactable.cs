using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour {

  public bool IsContainer { get; set; }

  public virtual void StartInteracting(UnitControl user) {
  }

  public virtual void FinishInteracting(UnitControl user) {
  }

}
