using System.Collections;
using UnityEngine;

public class Projectile : MonoBehaviour {

  TargetControl owner;
  Rigidbody rbody;
  CapsuleCollider coll;

  public GameObject projectileHitPrefab;

  float lifeTime = 5.0f;
  DamageInfo bulletDamage;

  public void Init(TargetControl owner, Vector3 targetDir, float range, DamageInfo damage) {
    this.owner = owner;
    bulletDamage = damage;
    rbody = GetComponent<Rigidbody>();
    coll = GetComponent<CapsuleCollider>();

    coll.enabled = false;
    rbody.AddForce(targetDir * 5, ForceMode.Impulse);
  }

  void Update() {
    if (!coll.enabled && (transform.position - owner.transform.position).sqrMagnitude > 1.0f)
      coll.enabled = true;

    lifeTime -= Time.deltaTime;
    if (lifeTime < 0)
      Destroy(gameObject);
  }

  void OnCollisionEnter(Collision collisionInfo) {
    Instantiate(GameManager.Instance.GetPrefab("ProjectileHit"),
        collisionInfo.contacts[0].point,
        Quaternion.LookRotation(collisionInfo.contacts[0].normal));

    bulletDamage.AddHitTarget(collisionInfo.transform);

    if (collisionInfo.transform.root.tag.Equals("Unit")) {
      collisionInfo.transform.root.SendMessage(
        "TakeDamage",
        bulletDamage,
        SendMessageOptions.DontRequireReceiver
      );
      owner.TargetHit();
    } else {
      owner.TargetMiss();
    }
    lifeTime = 0.1f;

  }
}