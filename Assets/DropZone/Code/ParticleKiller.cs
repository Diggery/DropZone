using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleKiller : MonoBehaviour {

  ParticleSystem system;
  int doneCount = 0;
  float waitTime = 1;

  void Start() {
    system = GetComponent<ParticleSystem>();
  }

  void Update() {
   if (!system.IsAlive(true)) Destroy(gameObject);
  }
}
