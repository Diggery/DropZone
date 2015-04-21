﻿using UnityEngine;
using System.Collections;

public class ShieldHit : MonoBehaviour {

	void Start () {
	
	}
	
	void Update () {
		transform.localScale = Vector3.Lerp (transform.localScale, new Vector3(3.0f, 3.0f, 3.0f), Time.deltaTime * 3);
		GetComponent<Renderer>().material.color = Color.Lerp (GetComponent<Renderer>().material.color, new Color(1,1,1,0), Time.deltaTime * 3);
		if (GetComponent<Renderer>().material.color.a < 0.1f) Destroy(gameObject);
	}
}
