using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MeleeWeapon : Weapon {

  public override void Init(UnitControl owner, Transform stowAttach, Transform gripAttach) {
    base.Init(owner, stowAttach, gripAttach);
  }

  public override void Stow() {
    base.Stow();
    transform.SetParent(this.stowAttach);
    transform.localPosition = Vector3.zero;
    transform.localEulerAngles = new Vector3(90, 0, 0);
    if (owner.EquippedWeapon) owner.EquippedWeapon.Equip();
  }

  public override void Equip() {
    base.Equip();
    transform.SetParent(this.gripAttach);
    transform.localPosition = Vector3.zero;
    transform.localEulerAngles = new Vector3(0, 0, 0);
  }

}
