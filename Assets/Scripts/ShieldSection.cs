using UnityEngine;
using System.Collections;

public class ShieldSection : MonoBehaviour {

	
	ShieldControl shieldControl;
	
	Color topColor;
	Color middleColor;
	Color lowerColor;

	Color flashColor;

	float currentPower;
	float maxPower;
	
	float regenDelay;
	float regenOffset;
	float regenTimer;
	float failChance;

	ParticleSystem shieldBreakFX;
	ParticleSystem shieldFailFX;

	bool shieldBroken;
	bool shieldFailed;
	public float activeTimer;
	public AnimationCurve activeCurve;

	Mesh mesh;

	
	void Start () {
		gameObject.AddComponent<BoxCollider>();
		shieldControl = transform.parent.GetComponent<ShieldControl>();
		maxPower = shieldControl.GetPlateCapacity();
		regenDelay = shieldControl.GetRegenDelay();
		failChance = shieldControl.GetFailChance();
		currentPower = maxPower;
		mesh = transform.GetComponent<MeshFilter>().mesh;

		shieldBreakFX = transform.Find("ShieldBreak").GetComponent<ParticleSystem>();
		shieldFailFX = transform.Find("ShieldFail").GetComponent<ParticleSystem>();
		shieldFailFX.enableEmission = false;

	}
	
	void Update () {



		
		if (regenTimer > 0) {
			if (!shieldFailed) regenTimer -= Time.deltaTime;
			
		} else {
			if (currentPower < maxPower && !shieldBroken) {
				currentPower += shieldControl.GetPower((maxPower - currentPower) * Time.deltaTime);
			}
		}

		float shieldStatus = Mathf.Clamp01(currentPower/maxPower);

		Color topGoal = Color.black;
		Color middleGoal = Color.black;
		Color lowerGoal = Color.black;

		if (shieldStatus > 0.75f) {
			topGoal = shieldControl.shieldColor2;
			middleGoal = shieldControl.shieldColor1;
			lowerGoal = shieldControl.shieldColor1;
		} else if (shieldStatus < 0.75f && shieldStatus > 0.50f) {
			topGoal = shieldControl.shieldColor3;
			middleGoal = shieldControl.shieldColor2;
			lowerGoal = shieldControl.shieldColor1;
		} else if (shieldStatus < 0.50f && shieldStatus > 0.25f) {
			topGoal = shieldControl.shieldColor4;
			middleGoal = shieldControl.shieldColor3;
			lowerGoal = shieldControl.shieldColor2;
		} else if (shieldStatus < 0.25f) {
			topGoal = Color.black;
			middleGoal = shieldControl.shieldColor3;
			lowerGoal = shieldControl.shieldColor2;
		}
		topColor = Color.Lerp(topColor, topGoal, Time.deltaTime *3);
		middleColor = Color.Lerp(middleColor, middleGoal, Time.deltaTime *3);
		lowerColor = Color.Lerp(lowerColor, lowerGoal, Time.deltaTime *3);

		SetVertColors();

		if (shieldBroken) {
			activeTimer = activeTimer - Time.deltaTime;
			if (activeTimer < -(shieldControl.reformDelay + regenOffset) && !shieldFailed) RecoverShield();
		} else {
			activeTimer = activeTimer + Time.deltaTime;
		}

		renderer.material.mainTextureOffset = new Vector2(0, activeCurve.Evaluate(Mathf.Clamp01(1 - activeTimer)));
		flashColor = Color.Lerp(flashColor, Color.black, Time.deltaTime * 3);
		renderer.material.SetColor("_Flash", flashColor);

	}
	
	public void TakeDamage(Vector4 damageInfo) {
		flashColor = shieldControl.shieldHitColor;
		Vector3 hitPos = new Vector3(damageInfo.x, damageInfo.y, damageInfo.z);
		GameObject shieldHit = Instantiate(shieldControl.shieldHitPrefab, hitPos, transform.rotation) as GameObject;
		shieldHit.transform.parent = transform;
		currentPower -= damageInfo.w;
		regenTimer = regenDelay;
		if (currentPower < 0) {
			BreakShield();
		}
	}
	
	public void BreakShield() {
		shieldBreakFX.Play();
		if (Random.value < failChance) ShieldFail();
		activeTimer = 1.0f;
		regenOffset = Random.Range(0, 1.0f);
		shieldBroken = true;
		shieldControl.RotateAwayFrom(this);
		collider.enabled = false;
	}

	public void RecoverShield() {
		flashColor = Color.blue;
		activeTimer = 0.0f;
		shieldBroken = false;
		shieldFailed = false;
		collider.enabled = true;
		shieldFailFX.enableEmission = false;
	}

	public void ShieldFail() {
		shieldFailFX.enableEmission = true;
		shieldFailed = true;
	}

	void SetVertColors() {

		Vector3[] vertices = mesh.vertices;
		Color[] colors = new Color[vertices.Length];

		colors[0] = middleColor;//middleLeft;
		colors[1] = topColor;//topCenter;
		colors[2] = middleColor;//middleCenter;
		
		colors[3] = topColor;//topLeft;
		colors[4] = topColor;//topRight;
		colors[5] = middleColor;//middleRight;
		
		colors[6] = lowerColor;//lowerLeft;
		colors[7] = lowerColor;//lowerCenter;
		colors[8] = lowerColor;//lowerRight;

		mesh.colors = colors;
	}

	public bool IsWorking() {
		return !shieldBroken;
	}
}
