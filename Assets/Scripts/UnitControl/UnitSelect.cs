﻿using UnityEngine;
using System.Collections;

public class UnitSelect : MonoBehaviour {


	UnitController unitController;
	Transform unit;
	
	public Color friendlyColor;
	public Color enemyColor;
	public Color otherColor;
	
	Color currentColor;
	Color colorGoal;
	float fadeGoal;
	
	public void SetUp (UnitController _unitController) {
		unitController = _unitController;
		unit = unitController.transform;
		name = unit.name + "'s selector";
		renderer.enabled = false;
		fadeGoal = 0.0f;
		
		if (unit.tag.Equals("Player")) {
			colorGoal = friendlyColor;
		} else if (unit.tag.Equals("Enemy")) {
			colorGoal = enemyColor;
		} else {
			colorGoal = otherColor;
		}
	}
	
	void Update () {
		transform.position = unit.position + new Vector3(0.0f, 0.1f, 0.0f);
		
		renderer.enabled = (fadeGoal > 0);
		
		if (unitController.selected) {
			fadeGoal = 1.0f;
		} else {
			fadeGoal = 0.0f;
		}
		
		currentColor = Color.Lerp (currentColor, new Color (colorGoal.r, colorGoal.g, colorGoal.b, fadeGoal), GameTime.deltaTime * 5);
		renderer.material.color = currentColor;
		
		if (renderer.enabled) {
			transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.identity, GameTime.deltaTime * 5);
		} else {
			transform.rotation = Quaternion.AngleAxis(90, Vector3.up);
		}
		
		
		
		if (unitController.dead) Destroy(gameObject);
	}
}
