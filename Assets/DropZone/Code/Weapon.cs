using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class Weapon : MonoBehaviour {
  public enum WeaponType { Main, SideArm, Melee };
  public WeaponType type = WeaponType.Main;

  protected UnitControl owner;
  protected UnitTargeting unitTargeting;
  protected Transform stowAttach;
  protected Transform gripAttach;

  protected Rigidbody rbody;

  public float damage = 1.0f;
  public float range = 10;

  protected SphereCollider pickUpCollision;

  public bool IsEquipped { get; set; }

  public virtual bool IsReady {
    get { return true; }
  }

  public virtual void Init(UnitControl owner, Transform stowAttach, Transform gripAttach) {
    this.owner = owner;
    rbody = GetComponent<Rigidbody>();
    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;
    unitTargeting = owner.gameObject.GetComponent<UnitTargeting>();

    this.stowAttach = stowAttach;
    this.gripAttach = gripAttach;

    pickUpCollision = transform.Find("PickUp").GetComponent<SphereCollider>();
    pickUpCollision.enabled = false;
    InputRelay uiInput = pickUpCollision.gameObject.AddComponent<InputRelay>();
    uiInput.onClick.AddListener(OnClick);
  }


  public virtual void Stow() {
    IsEquipped = false;
  }

  public virtual void Equip() {
    IsEquipped = true;
  }

  public virtual void Drop() {
    IsEquipped = false;
    owner = null;
    rbody.isKinematic = false;
    Vector3 torque = new Vector3(
      Random.Range(-1.0f, 1.0f),
      Random.Range(-1.0f, 1.0f),
      Random.Range(-1.0f, 1.0f)
    );
    Vector3 force = new Vector3(Random.Range(-1.0f, 1.0f), 1.0f, Random.Range(-1.0f, 1.0f));
    rbody.AddTorque(torque * 10, ForceMode.VelocityChange);
    rbody.AddForce(force, ForceMode.VelocityChange);
    GetComponent<BoxCollider>().enabled = true;
    gameObject.AddComponent<WeaponPickup>();
  }

  public virtual void PickUp(UnitControl newOwner) {
    this.owner = newOwner;

    rbody.isKinematic = true;
    GetComponent<BoxCollider>().enabled = false;
    pickUpCollision.enabled = false;
  }

  void OnClick(PointerEventData eventData) {
    Debug.Log("Pick me UP " + gameObject.name);
  }
}