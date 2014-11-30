using UnityEngine;
using System.Collections;

public class PauseButton : MonoBehaviour {

	GameControl gameControl;
	TextMesh pauseText;
	
	Color pauseColor = new Color(0.10f, 0.0f, 0.0f, 1.0f);
	Color unpausedColor = new Color(0.0f, 0.0f, 0.0f, 0.25f);
	Color frameColor = new Color(0.0f, 0.0f, 0.0f, 0.9f);
	Color frameFlashColor = new Color(1.0f, 0.25f, 0.0f, 1.0f);
	Color fillFlashColor = new Color (0.5f, 0.25f, 0.0f, 0.5f);		
	Color currentFrameColor;		
	Color currentFillColor;		
	
	
	void Start () {
		GameObject gameControlObj = GameObject.Find("Map");
		gameControl = gameControlObj.GetComponent<GameControl>();	
		
		pauseText = transform.Find("PauseText").GetComponent<TextMesh>();
	}
	
	void Update () {
	
		Color fillGoal = unpausedColor;
		Quaternion rotGoal = Quaternion.AngleAxis(-45, Vector3.right);
		
		if (GameTime.paused) {
			fillGoal = pauseColor;
			rotGoal = Quaternion.identity;
			pauseText.text = "Paused";
			
		} else {
			pauseText.text = "";
		}
		
		currentFrameColor = Color.Lerp(currentFrameColor, frameColor, GameTime.deltaTime * 5);
		renderer.material.SetColor("_FrameColor",  currentFrameColor);		
		
		currentFillColor = Color.Lerp(currentFillColor, fillGoal, GameTime.deltaTime * 5);
		renderer.material.SetColor("_FillColor",  currentFillColor);
		
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
		currentFrameColor = frameFlashColor;
		currentFillColor = fillFlashColor;
		
		if (GameTime.paused) {
			gameControl.GlobalResume();
		} else {
			gameControl.GlobalPause();
		}
			
	}
}
