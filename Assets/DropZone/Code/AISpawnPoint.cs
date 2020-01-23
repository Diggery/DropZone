using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AISpawnPoint : MonoBehaviour {

  public int reserveAmount = 0;

  public Vector3 position {
    get { return transform.position; }
  }

  void Start() {

  }

  void Update() {

  }

  void OnDrawGizmos() {
    Gizmos.color = Color.green;
    Gizmos.DrawSphere(transform.position, 1);
  }
}
