using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Equipment : MonoBehaviour {
  string equipmentName;

  UnitControl owner;
  Vector3 startPos;
  Rigidbody rbody;

  public Interpolator.LerpFloat moveToOwner;

  public Equipment Init(string equipmentName, UnitControl owner) {
    this.owner = owner;
    this.equipmentName = equipmentName;
    moveToOwner.onTick = MoveToOwner;
    moveToOwner.onFinish = GotToOwner;
    rbody = GetComponent<Rigidbody>();
    return this;
  }

  void MoveToOwner(float amount) {
    transform.position = Vector3.Lerp(startPos, owner.TargetPoint, amount);
  }

  void GotToOwner(bool reversed) {
    owner.AddLoot(equipmentName);
    Destroy(gameObject);
  }

  private void OnCollisionEnter(Collision other) {
    if (other.transform.tag.Equals("Floor")) {
      rbody.isKinematic = true;
      startPos = transform.position;
      Interpolator.Start(moveToOwner);
    }
  }
}
