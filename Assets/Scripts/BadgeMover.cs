using UnityEngine;
using System.Collections;

public class BadgeMover : MonoBehaviour {

	Vector3 velocity;
	float damp = 0.9f;
	float lifeTime = 3.0f;
	float lifeLength = 3.0f;
	
	Transform badge;
	Transform glow;
	public Transform number;
	
	public enum BadgeType { Hit, Deflect, Heal };
	
	public BadgeType type = BadgeType.Deflect;
	public Color glowColor;
	public AnimationCurve glowFade;
	public Color badgeColor;
	public AnimationCurve badgeFade;
	public Color numberColor = Color.white;
	
	void Start () {
		transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
		badge = transform.Find("Badge");
		glow = transform.Find("Glow");
	}
	
	void FixedUpdate () {
		lifeTime -= Time.deltaTime;

		velocity = velocity * damp;
		velocity.y += 0.001f;
		transform.position += velocity;
		transform.LookAt(Camera.main.transform);
		transform.localScale = Vector3.Lerp(transform.localScale, Vector3.one, Time.deltaTime * 5);

		float amount = 1 - (lifeTime/lifeLength);
		glow.GetComponent<Renderer>().material.color = Color.Lerp(Color.black, glowColor, glowFade.Evaluate(amount));
		float badgeAlpha = badgeFade.Evaluate(amount);
		badgeColor.a = badgeAlpha;
		badge.GetComponent<Renderer>().material.color = badgeColor;
		numberColor.a = badgeAlpha;
		number.GetComponent<Renderer>().material.color = numberColor;
		
		if (lifeTime < 0) {
			Destroy(gameObject);
		}
	}
	
	public void Launch(Vector3 direction, float damage) {
		if (damage > 0) {	
			TextMesh numberText = number.GetComponent<TextMesh>();
			numberText.text = Mathf.FloorToInt(damage).ToString();
		}
		velocity = direction.normalized * Random.Range(0.25f, 0.35f);
		velocity = Quaternion.AngleAxis(Random.Range(-10, 10), Vector3.up) * velocity;
		if (type == BadgeType.Hit) velocity *= 1.1f;
	}
}
