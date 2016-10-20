using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Targeting : MonoBehaviour {

    Transform currentTarget;
    Transform currentAimTarget;
    Transform forcedTarget;

    UnitControl unitControl;
    Animator animator;
    Weapon currentWeapon;
    MapControl mapControl;

    bool isAiming;
    int missCount;

    float aimingAngle;

    float scanTime = 1.0f;
    float scanTimer = 0.0f;

    void Start() {
        unitControl = GetComponent<UnitControl>();
        animator = GetComponent<Animator>();
    }

    void Update() {

        if (unitControl.dummy) return;  // targetdummys are dumb
        if (unitControl.dead) return; //no targeting while dead
        if (!currentWeapon) return; //need a weapon to fire

        scanTimer -= Time.deltaTime;
        if (scanTimer < 0) {
            ScanForTargets();
        }
        if (!currentTarget) {
            animator.SetBool("hasTarget", false);
            return;
        }

        animator.SetBool("hasTarget", true);

//        if (missCount > 5) {
//            missCount = 0;
//            currentTarget = null;
//            return;
//        }

        Vector3 relativePos = transform.InverseTransformPoint(currentAimTarget.position);

        float heading = (Mathf.Atan(relativePos.x / relativePos.z)) * Mathf.Rad2Deg;

        if (relativePos.z < 0) heading += 180 * Mathf.Sign(relativePos.x);
        
        float aimGoal = Mathf.Clamp(heading, -180, 180);

        aimingAngle = Mathf.Lerp(aimingAngle, aimGoal, Time.deltaTime * 10);

        animator.SetFloat("aiming", aimingAngle);

        MapDataPoint currentMapData = unitControl.GetCurrentMapData();
        if (currentMapData.IsCoverPoint()) {
            //lean out if needed
            bool useCoverLeft = aimGoal < 0 && aimGoal > -45 && currentMapData.IsLeftSideClear();
            animator.SetBool("UseCoverLeft", useCoverLeft);
            bool useCoverRight = aimGoal > 0 && aimGoal < 45 && currentMapData.IsRightSideClear();
            animator.SetBool("UseCoverRight", useCoverRight);

            //clear the target if we can't find him from high cover.
            if (!currentMapData.IsLowCover()) {
                if (!currentMapData.IsLeftSideClear() && aimGoal > -90 && aimGoal < 0) ClearCurrentTarget();

                if (!currentMapData.IsRightSideClear() && aimGoal > 0 && aimGoal < 90) ClearCurrentTarget();
            }
        } else {
            if (aimGoal > 45) {
                animator.SetBool("turnLeft", false);
                animator.SetBool("turnRight", true);
            } else if (aimGoal < -45) {
                animator.SetBool("turnLeft", true);
                animator.SetBool("turnRight", false);
            } else {
                animator.SetBool("turnLeft", false);
                animator.SetBool("turnRight", false);
            }
        }

        if (currentWeapon.IsReadyToFire() && isAiming) {
            currentWeapon.Fire();
        }
    }

    public void SetCurrentTarget(Transform target) {
        if (currentWeapon) currentWeapon.CoolDown();
        currentTarget = target;
        UnitControl unitControl = currentTarget.GetComponent<UnitControl>();
        if (unitControl) {
            currentAimTarget = unitControl.GetAimTarget();
        } else {
            currentAimTarget = currentTarget;
        }
    }

    public Weapon GetCurrentWeapon() {
        return currentWeapon;
    }

    public void ClearCurrentTarget() {
        currentTarget = null;
        currentAimTarget = null;
    }

    public void SetCurrentWeapon(Weapon weapon) {
        currentWeapon = weapon;
    }

    public bool ScanForTargets() {
        Transform bestTarget = FindTarget();
        bool targetUpdated = false;
        if (bestTarget) {
            if (bestTarget != currentTarget) {
                SetCurrentTarget(bestTarget);
                targetUpdated = true;
            }
            if (transform.tag.Equals("Enemy")) {
                SendMessage("SeeEnemy", currentTarget.position, SendMessageOptions.DontRequireReceiver);
            }
        } else {
            ClearCurrentTarget();
        }
        scanTimer = scanTime + (Random.value * 0.1f);
        return targetUpdated;
    }

    public Vector3 GetTargetDirection() {
        if (!currentTarget) return Vector3.zero;
        Vector3 dir = (currentAimTarget.position - transform.position).normalized;
        dir.y = 0;
        return dir;
    }

    public void TargetHit() {
        missCount = 0;
    }

    public void TargetMiss() {
        missCount++;
    }

    public void Reload() {
        if (!animator)
            animator = GetComponent<Animator>();
        animator.SetTrigger("reload");
        animator.ResetTrigger("fire");
    }

    Transform FindTarget() {
        
        GameObject[] allUnits;

        if (transform.tag.Equals("Player")) {
            allUnits = GameObject.FindGameObjectsWithTag("Enemy");
        } else {
            allUnits = GameObject.FindGameObjectsWithTag("Player");
        }
            
        GameObject closest = null;
        float distance = Mathf.Infinity;
        Vector3 position = transform.position;
        foreach (GameObject unit in allUnits) {
            Vector3 diff = unit.transform.position - position;
            float curDistance = diff.sqrMagnitude;
            if (curDistance < distance) {
                closest = unit;
                distance = curDistance;
            }
        }
        if (!closest) {
            return null;
        }
        return closest.transform;
    }

    public void FinishReload() {
        currentWeapon.FinishReload();
    }

    public void SwitchToSideArm() {
        animator.SetTrigger("switchToSideArm");
    }

    public void PlayFireAnim() {
        animator.SetTrigger("fire");
    }

    public void SetAnimingFlag(bool setting) {
        isAiming = setting;
    }

    public bool IsAiming() {
        return isAiming;
    }
}
