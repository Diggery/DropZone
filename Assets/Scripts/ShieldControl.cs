using UnityEngine;
using System.Collections;

public class ShieldControl : MonoBehaviour {

	public Color shieldColor1;
	public Color shieldColor2;
	public Color shieldColor3;
	public Color shieldColor4;

	public Color shieldHitColor;

	public float regenRate = 1;
	public float regenDelay = 1;
	public float reformDelay = 2;
	public float failChance = 0.1f;

	public float totalPower = 1000;
	public float plateCapacity = 1;

	public GameObject shieldHitPrefab;

	ShieldControl shieldControl;
	ShieldSection[] shieldSections;
	int shieldRotation;
	
	void Start () {
		shieldSections = GetComponentsInChildren<ShieldSection>();

		for (int i = 0; i < shieldSections.Length; i++) {
			shieldSections[i].transform.rotation = Quaternion.AngleAxis((i * (360/shieldSections.Length)), Vector3.up);
		}
	
	}
	
	void Update () {
		Quaternion targetRotation = Quaternion.AngleAxis(shieldRotation * (360/shieldSections.Length), Vector3.up);
		transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 5);
	
	}

	public float GetPlateCapacity() {
		return plateCapacity;
	}

	public float GetRegenDelay() {
		return regenDelay;
	}

	public float GetFailChance() {
		return failChance;
	}

	public float GetPower(float amount) {
		float sentAmount = 0;
		float requestedAmount = Mathf.Min(amount, regenRate);
		if (requestedAmount > totalPower) {
			sentAmount = totalPower;
			totalPower = 0;
		} else {
			sentAmount = requestedAmount;
			totalPower -= sentAmount;
		}
		return sentAmount;
	}

	public void RotateAwayFrom(ShieldSection brokenShield) {
		float brokenAngle = brokenShield.transform.eulerAngles.y;
		int brokenRotation = Mathf.FloorToInt(brokenAngle/(360/shieldSections.Length));

		//find an unbroken shield
		int checkStart = Random.Range(0, shieldSections.Length);

		for (int i = 0; i < shieldSections.Length; i++) {
			int slot = (i + checkStart)%shieldSections.Length;
			if (shieldSections[slot].IsWorking()) {
				shieldRotation = (slot - brokenRotation)%shieldSections.Length;
			}
		}
	}

}
