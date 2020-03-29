using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ExitPoint : Interactable {

  Button exitButton;
  Image background;

  public ExitPoint Init() {
    base.Init("InteractableUI");
    exitButton = UI.transform.Find("Button").GetComponent<Button>();
    exitButton.onClick.AddListener(Exit);
    background = exitButton.GetComponent<Image>();
    TextMeshProUGUI label = exitButton.transform.Find("Label").GetComponent<TextMeshProUGUI>();
    label.text = "Get Out!";

    return this;
  }

  void Exit() {
    currentUser.MoveTo(transform.position);
  }

  public override bool CheckStatus(UnitControl user, Vector3 pos) {
    return (GameManager.Instance.ObjectivesMet && Vector3.Distance(transform.position, pos) < 1.5f);
  }
}