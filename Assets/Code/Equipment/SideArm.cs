using UnityEngine;
using System.Collections;

public class SideArm : Weapon {

    public int magazineSize = 10;

    public override void SetUp(Transform attachPoint, UnitControl _unitControl) {
        base.SetUp(attachPoint, _unitControl);

        type = Type.SideArm;
    }

    protected override UnitControl.DamageInfo GetDamageInfo(float distance, Vector3 point) {
        float finalDamage = 1 + (Mathf.Pow(Mathf.Clamp01(1 - (distance / range)), 3));
        UnitControl.DamageInfo damageInfo = new UnitControl.DamageInfo(point, finalDamage, UnitControl.DamageInfo.DamageType.Projectile);
        return damageInfo;
    }

    protected override void Reload() {
        base.Reload();       
        roundsInMagazine = magazineSize;
    }
}
