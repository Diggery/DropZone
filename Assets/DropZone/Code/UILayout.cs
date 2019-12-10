using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class UILayout : MonoBehaviour {

  Button confirmButton;
  void Start() {

    confirmButton = transform.Find("ConfirmButton").GetComponent<Button>();
    confirmButton.onClick.AddListener(OnConfirm);
  }

  void Update() {

  }

  void OnConfirm() {
    Debug.Log("Confirmed");
  }
}
