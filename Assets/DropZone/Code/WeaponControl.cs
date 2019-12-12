using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponControl : MonoBehaviour {
  Transform grip;
  public Vector3 gripOffset = Vector3.zero;
  public Vector3 stockOffset = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform stockPivot;
  Transform gripPivot;

  float blendAmount;
  public float GripBlend {
    set {
      blendAmount = value;
    }
  }

  Vector3 lookPos = Vector3.zero;
  public Vector3 LookPos {
    set { lookPos = value; }
  }
  public void Init(Transform stockPivot, Transform gripPivot) {
    grip = transform.GetChild(0);
    this.stockPivot = stockPivot;
    this.gripPivot = gripPivot;
  }

  void Update() {

    if (blendAmount > 0) {
      Vector3 weaponLookPosition = stockPivot.TransformPoint(shoulderOffset);
      Quaternion weaponLookRotation = Quaternion.LookRotation((lookPos - transform.position).normalized);
      grip.localPosition = Vector3.Lerp(gripOffset, stockOffset, blendAmount);
      transform.position = Vector3.Lerp(gripPivot.position, weaponLookPosition, blendAmount);
      transform.rotation = Quaternion.Lerp(gripPivot.rotation, weaponLookRotation, blendAmount);
    } else {
      grip.localPosition = gripOffset;
      transform.position = gripPivot.position;
      transform.rotation = gripPivot.rotation;
    }

  }
}