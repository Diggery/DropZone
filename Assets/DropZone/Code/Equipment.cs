using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Equipment : MonoBehaviour {
  public enum Type { Ammo, MedKit, SmokeGrendes }
  public Type equipmentType;
  UnitControl owner;
  Vector3 startPos;
  Rigidbody rbody;

  public Interpolator.LerpFloat moveToOwner;

  public Equipment Init(UnitControl owner) {
    this.owner = owner;
    moveToOwner.onTick = MoveToOwner;
    moveToOwner.onFinish = GotToOwner;
    rbody = GetComponent<Rigidbody>();
    return this;

  }

  void Update() {

  }

  void MoveToOwner(float amount) {
    transform.position = Vector3.Lerp(startPos, owner.TargetPoint, amount);
  }

  void GotToOwner(bool reversed) {

    owner.AddEquipment(equipmentType);
    Destroy(gameObject);
  }

  private void OnCollisionEnter(Collision other) {
    rbody.isKinematic = true;
    startPos = transform.position;
    Interpolator.Start(moveToOwner);
  }

}
