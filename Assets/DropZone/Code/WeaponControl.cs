using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponControl : MonoBehaviour {
  Transform grip;
  public Vector3 gripPos = Vector3.zero;
  public Vector3 stockPos = Vector3.zero;
  public Vector3 shoulderOffset = Vector3.zero;

  Transform shoulder;
  Transform hand;

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
  public void Init(Transform shoulderAttach, Transform handAttach) {
    grip = transform.GetChild(0);
    shoulder = shoulderAttach;
    hand = handAttach;
  }

  void Update() {
    Vector3 weaponLookPosition = shoulder.position + shoulderOffset;
    Quaternion weaponLookRotation = Quaternion.LookRotation((lookPos - transform.position).normalized);

    grip.localPosition = Vector3.Lerp(gripPos, stockPos, blendAmount);
    transform.position = Vector3.Lerp(hand.position, weaponLookPosition, blendAmount);
    transform.rotation = Quaternion.Lerp(hand.rotation, weaponLookRotation, blendAmount);
  }
}