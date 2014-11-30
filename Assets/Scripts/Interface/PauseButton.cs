using UnityEngine;
using System.Collections;

public class PauseButton : MonoBehaviour {

	GameControl gameControl;
	TextMesh pauseText;
	
	Color pauseColor = new Color(0.15f, 0.0f, 0.0f, 1.0f);
	Color unpausedColor = new Color(0.0f, 0.0f, 0.0f, 0.25f);
	Color selectColor = new Color(0.2f, 0.0f, 0.0f, 1.0f);
	Color flashColor = new Color (1.0f, 0.5f, 0.0f);		
	Color currentColor;		
	
	
	void Start () {
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();	
		
		pauseText = transform.Find("PauseText").GetComponent<TextMesh>();
	}
	
	void Update () {
	
		Color colorGoal = unpausedColor;
		Quaternion rotGoal = Quaternion.AngleAxis(-45, Vector3.right);
		
		if (GameTime.paused) {
			colorGoal = pauseColor;
			rotGoal = Quaternion.identity;
			pauseText.text = "Paused";
			
		} else {
			pauseText.text = "";
		}
		
		
		currentColor = Color.Lerp(currentColor, colorGoal, GameTime.deltaTime * 5);
		renderer.material.color = currentColor;	
		transform.localRotation = Quaternion.Lerp (transform.localRotation, rotGoal, GameTime.deltaTime * 8);
		
		if (Input.GetKeyUp (KeyCode.Space)) {
			
			if (gameControl.globalPause) {
				gameControl.GlobalResume();
			} else {
				gameControl.GlobalPause();
			}
		}
		
	}
	
	public void tap(TouchManager.TapEvent touchEvent) {
		currentColor = flashColor;
		
		if (GameTime.paused) {
			gameControl.GlobalResume();
		} else {
			gameControl.GlobalPause();
		}
			
	}
}
