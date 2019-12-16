using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Effect : MonoBehaviour {
  ParticleSystem[] effects;
  void Start() {
    effects = transform.GetComponentsInChildren<ParticleSystem>();
  }

  public void Play() {
    foreach (ParticleSystem effect in effects) {
      effect.Play();
    }
  }
}
