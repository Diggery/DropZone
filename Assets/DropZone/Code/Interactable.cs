using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour {

  protected GameObject UI;
  protected Transform viewCamera;

  public bool IsContainer { get; set; }

  protected bool isOpen = false;
  public virtual bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;
      UI.SetActive(value);
    }
  }

  public Interactable Init(string uiPrefabName) {
    viewCamera = Camera.main.transform;
    GameObject uiPrefab = GameManager.Instance.GetPrefab(uiPrefabName);
    UI = Instantiate(uiPrefab, transform);
    UI.transform.localPosition = Vector3.up;
    return this;
  }
  public virtual void StartInteracting(UnitControl user) { }

  public virtual void FinishInteracting(UnitControl user) { }

}