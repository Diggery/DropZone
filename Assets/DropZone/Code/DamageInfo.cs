using UnityEngine;

public enum DamageType { Energy, Slash, Puncture, Other }

public class DamageInfo {
    public float damageAmount;
    public DamageType type;
    public Vector3 position;
    public UnitControl attacker;
    public Transform hitTarget;
  bool isDirectional;

    public DamageInfo(float amount) {
        damageAmount = amount;
        type = DamageType.Other;
        position = Vector3.zero;
        attacker = null;
        isDirectional = false;
    }
    public DamageInfo(float amount, DamageType type) {
        damageAmount = amount;
        this.type = type;
        position = Vector3.zero;
        attacker = null;
        isDirectional = false;
    }

    public DamageInfo(float amount, DamageType type, Vector3 position) {
        damageAmount = amount;
        this.type = type;
        this.position = position;
        attacker = null;
        isDirectional = true;
    }

    public DamageInfo(float amount, DamageType type, UnitControl attacker) {
        damageAmount = amount;
        this.type = type;
        position = attacker.transform.position;
        this.attacker = attacker;
        isDirectional = true;
    }

    public void AddAttacker(UnitControl attacker) {
        this.attacker = attacker;
    }

    public void AddHitTarget(Transform hitTarget) {
        this.hitTarget = hitTarget;
    }

    public bool IsDirectional() {
        return isDirectional;
    }

    public bool IsFrontal(Transform victim) {
        Vector3 incomingDir = (position - victim.position).normalized;
        float angle = Vector3.Dot(victim.forward, incomingDir);
        return angle > 0.75f;
    }

    public Vector3 GetDamageDirection(Transform victim) {
        return (position - victim.position).normalized;
    }

    public int GetOrthagonalDirection(Transform victim) {
        Vector3 incomingDir = (position - victim.position).normalized;
        float angle = Vector3.Angle(incomingDir, victim.forward * Mathf.Sign(Vector3.Dot(incomingDir, victim.right)));
        return Mathf.RoundToInt(angle / 90);
    }

    public string GetOrthagonalDirectionName(Transform victim) {
        Vector3 incomingDir = (position - victim.position).normalized;
        float angle = Vector3.Angle(incomingDir, victim.forward * Mathf.Sign(Vector3.Dot(incomingDir, victim.right)));
        int direction = Mathf.RoundToInt(angle / 90); 

        if (direction == 0) {
            return "Forward";
        } else if (direction == 1) {
            return "Right";
        } else if (direction == -1) {
            return "Left";
        } else {
            return "Back";
        }
    }

  public bool IsMissile { get; set; }
}

