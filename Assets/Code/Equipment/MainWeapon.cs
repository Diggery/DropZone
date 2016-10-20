using UnityEngine;
using System.Collections;

public class MainWeapon : Weapon {

    Inventory inventory;

    Inventory.Magazine.Type currentMagType;
    float currentDamage = 1.0f;

    public override void SetUp(Transform attachPoint, UnitControl _unitControl) {
        base.SetUp(attachPoint, _unitControl);

        type = Type.MainWeapon;

        inventory = unitControl.GetInventory();
    }

    protected override UnitControl.DamageInfo GetDamageInfo(float distance, Vector3 point) {
        float finalDamage = currentDamage + (Mathf.Pow(Mathf.Clamp01(1 - (distance / range)), 3) * rangeBonus);

        UnitControl.DamageInfo.DamageType damageType = UnitControl.DamageInfo.DamageType.Projectile;
        switch (currentMagType) {
            case Inventory.Magazine.Type.Energy:
                damageType = UnitControl.DamageInfo.DamageType.Energy;
                break;
            case Inventory.Magazine.Type.Explosive:
                damageType = UnitControl.DamageInfo.DamageType.Explosive;
                break;
            default:
                damageType = UnitControl.DamageInfo.DamageType.Projectile;
                break;
                    
        }
        UnitControl.DamageInfo damageInfo = new UnitControl.DamageInfo(point, finalDamage, damageType);
        return damageInfo;
    }

    protected override void Reload() {
        

        if (!inventory) 
            inventory = unitControl.GetInventory();
        
        if (inventory.GetMagazineCount() < 1) {
            print(gameObject.name + " is out of ammo.");
            targeting.SwitchToSideArm();
            return;
        }
        base.Reload(); 
        Inventory.Magazine mag = inventory.GetMagazine();

        roundsInMagazine = mag.capacity;
        currentMagType = mag.type;
        currentDamage = mag.damage;
        armorPiercing = mag.armorPiercing;

    }
}
