using UnityEngine;
using System.Collections;

public class DamageRelay : MonoBehaviour {

	public UnitController target;
	
	public void SetTarget(UnitController newTarget) {
		target = newTarget;
	}	

	public void TakeDamage(UnitController.DamageInfo damageInfo) {
		target.Hit(damageInfo, transform);
	}

}
