using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnitSelector : MonoBehaviour {

  bool isOpen = false;

  LineRenderer pathLine;

  public UnitControl SelectedUnit { get; set; }

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
    pathLine = transform.Find("PathLine").GetComponent<LineRenderer>();

  }

  void Update() {
    transform.position = SelectedUnit.transform.position;
    if (!SelectedUnit.IsPathComplete) {
      Vector3[] path = SelectedUnit.CurrentPath.corners;
      for (int i = 0; i < path.Length; i++) path[i].y += 0.05f;
      pathLine.positionCount = path.Length;
      pathLine.SetPositions(path);
    }
  }

  void OnFlashLerp(float amount) {
    Color panelColor = Color.Lerp(Color.black, flashColor, amount);
    tile.material.SetColor("_EmissionColor", panelColor);
  }
}