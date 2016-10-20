using UnityEngine;
using System.Collections;

public class BulletTrail : MonoBehaviour {

    float timer;
    float trailLength = 15.0f;
    float trailSpeed = 20.0f;

    Material material;

    void Start() {
        material = GetComponent<Renderer>().material;
        material.mainTextureScale = new Vector2(1.0f, transform.localScale.z / trailLength);
    }

    void Update() {
        timer += Time.deltaTime * trailSpeed;
        material.mainTextureOffset = new Vector2(0.0f, -(timer - 0.25f));

        if (timer > transform.localScale.z / trailLength) Destroy(gameObject);
    }
}
