using UnityEngine;
using System.Collections;

public class ProjectileControl : MonoBehaviour {

    Transform target;

    float thrustDelay = 2.0f;
    bool thrusting = false;

    float accuracy = 2.0f;
    Vector3 aimOffset;

    public ParticleSystem smoke;
    public ParticleSystem thrust;

    public GameObject explosionPrefab;


    float fuse = 10.0f;

    public void SetUp(Transform newTarget) {
        target = newTarget;
        aimOffset = new Vector3(Random.Range(-accuracy, accuracy), Random.Range(-accuracy, accuracy), Random.Range(-accuracy, accuracy));
        thrust.Pause();
        float drift = 0.05f;
        Vector3 offset = new Vector3(Random.Range(-drift, drift), Random.Range(-drift, drift), 0);
        GetComponent<Rigidbody>().AddForce((transform.forward + offset) * -150, ForceMode.Impulse);
        thrustDelay += Random.Range(-0.25f, 0.25f);
    }

    void Update() {
        if (thrustDelay > 0) {
            thrustDelay -= Time.deltaTime;
            if (thrustDelay < 0) {
                thrust.Play();
                smoke.Pause();
                thrusting = true;
            }
        }
        fuse -= Time.deltaTime;
        if (fuse < 4) {
            DisableThrust();
        }

        if (fuse < 0) {
            Explode();
        }
    }

    void FixedUpdate() {
        //transform.position = new Vector3(Mathf.Sin(Time.time) * 20, (Mathf.Sin(Time.time * 2) * 5) + 10, 0);

        if (thrusting) {
            Vector3 offsetVector = ((target.position + aimOffset) - transform.position).normalized;
            GetComponent<Rigidbody>().AddForce(offsetVector * 500);
        }
        if (GetComponent<Rigidbody>().velocity.y > 0)
            DisableThrust();

    }

    void DisableThrust() {
        thrusting = false;
        thrust.Pause();
        smoke.Play();
    }


    public void Explode() {
        Explode(transform.position);
    }

    public void Explode(Vector3 point) {
        Instantiate(explosionPrefab, point, Quaternion.identity);
        thrust.transform.parent = null;
        thrust.loop = false;
        thrust.gameObject.AddComponent<ParticleKiller>();
        smoke.transform.parent = null;
        smoke.loop = false;
        smoke.gameObject.AddComponent<ParticleKiller>();
        Destroy(gameObject);
    }

    public void OnCollisionEnter(Collision collision) {
        if (collision.transform.tag.Equals("Enemy")) {
            Explode(collision.contacts[0].point);

			
        }
        else {
            fuse = 2.0f;
        }
    }
}
