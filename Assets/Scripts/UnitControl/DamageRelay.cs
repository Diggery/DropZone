using UnityEngine;
using System.Collections;

public class DamageRelay : MonoBehaviour {

	public UnitController target;
	
	public void SetTarget(UnitController newTarget) {
		target = newTarget;
	}	

	public void TakeDamage(Vector4 damageInfo) {
		target.Hit(damageInfo, transform);
	}

}
