using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitSelector : MonoBehaviour {

  bool isOpen = false;
  public Transform SelectedUnit { get; set; }

  public bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;

      Interpolator.Start(flash);
      gameObject.SetActive(isOpen);
    }
  }

  Renderer tile;
  public Interpolator.LerpFloat flash;
  [ColorUsage(true, true)]
  public Color flashColor;

  public void Init() {
    tile = transform.Find("Quad").GetComponent<Renderer>();
    IsOpen = false;
    flash.onTick = OnFlashLerp;
  }

  void Update() {
    transform.position = SelectedUnit.position;
  }

  void OnFlashLerp(float amount) {
    Color panelColor = Color.Lerp(Color.black, flashColor, amount);
    tile.material.SetColor("_EmissionColor", panelColor);
  }
}
