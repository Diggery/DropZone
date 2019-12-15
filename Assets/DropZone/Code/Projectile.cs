using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {

  UnitControl owner;
  Rigidbody rbody;
  CapsuleCollider collider;

  public GameObject projectileHitPrefab;

  float lifeTime = 5.0f;
  DamageInfo bulletDamage;


  public void Init(UnitControl owner, Vector3 targetDir, float range, DamageInfo damage) {
    this.owner = owner;
    bulletDamage = damage;
    rbody = GetComponent<Rigidbody>();
    collider = GetComponent<CapsuleCollider>();

    collider.enabled = false;
    rbody.AddForce(targetDir * 5, ForceMode.Impulse);
  }

  void Update() {
    if (!collider.enabled && (transform.position - owner.transform.position).sqrMagnitude > 1.0f)
      collider.enabled = true;

    //if (projectileTrail) 
    //    AnimateTrail();

    lifeTime -= Time.deltaTime;
    if (lifeTime < 0)
      Destroy(gameObject);
  }

  //void CreateTrail(Vector3 startPos, Vector3 direction, float range) {
  //    projectileTrail = (
  //        Instantiate(
  //            projectileTrailPrefab,
  //            startPos,
  //            Quaternion.LookRotation(direction)
  //        ) as GameObject
  //    ).transform;
  //    projectileTrailRenderer = projectileTrail.GetComponent<Renderer>();
  //    projectileTrail.localScale = new Vector3(0.1f, 0.1f, range);
  //    projectileTrailRenderer.material.mainTextureScale = 
  //        new Vector2(1.0f, projectileTrail.localScale.z / trailLength);
  //}

  //void AnimateTrail() {
  //    trailTimer += Time.deltaTime * trailSpeed;
  //    projectileTrailRenderer.material.mainTextureOffset = new Vector2(
  //        0.0f, -(trailTimer - 0.25f)
  //    );

  //    if (trailTimer > projectileTrail.localScale.z / trailLength) {
  //        Destroy(projectileTrail.gameObject);
  //        Destroy(gameObject);            
  //    }
  //}

  void OnCollisionEnter(Collision collisionInfo) {
    //Instantiate(projectileHitPrefab,
    //    collisionInfo.contacts[0].point,
    //    Quaternion.LookRotation(collisionInfo.contacts[0].normal));

    bulletDamage.AddHitTarget(collisionInfo.transform);

    if (collisionInfo.transform.root.tag.Equals("Unit")) {
      collisionInfo.transform.root.SendMessage(
          "TakeDamage",
          bulletDamage,
          SendMessageOptions.DontRequireReceiver
      );
    }
  }
}
