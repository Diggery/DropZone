using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UILayout : MonoBehaviour {

  Button confirmButton;
  GameManager gameManager;

  void Start() {
    gameManager = GameManager.Instance;
    gameManager.SetUI(this);
  }

  void Update() {

  }


}
