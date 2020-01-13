﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrawHandle : MonoBehaviour {
  void OnDrawGizmos() {
    Gizmos.color = Color.red;
    Gizmos.DrawSphere(transform.position, 0.5f);
  }
}