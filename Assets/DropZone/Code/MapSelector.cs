using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapSelector : MonoBehaviour {

  Animator animator;
  Material selectorMat;
  Transform fader;
  BoxCollider acceptButton;

  bool isOpen = false;
  public bool IsOpen {
    get { return isOpen; }
    set { 
      isOpen = value;
      animator.SetBool("Open", isOpen);
      acceptButton.enabled = isOpen;
    }
  }


  void Start() {
    animator = GetComponent< Animator > ();
    Renderer shell = transform.Find("Ground/OuterShell").GetComponent<Renderer>();
    Renderer background = transform.Find("Ground/Background").GetComponent<Renderer>();
    Renderer tile = transform.Find("Ground/Tile").GetComponent<Renderer>();
    selectorMat = Instantiate(shell.material);
    shell.material = selectorMat;
    background.material = selectorMat;
    tile.material = selectorMat;
    fader = transform.Find("TileControl");
    Transform accept = transform.Find("Ground/Background/AcceptButton");
    acceptButton = accept.gameObject.AddComponent<BoxCollider>();
    Vector3 collsionSize = acceptButton.size;
    collsionSize.z = 0.1f;
    acceptButton.size = collsionSize;
  }

  // Update is called once per frame
  void Update() {
    if (Input.GetKeyDown(KeyCode.Space)) {
      IsOpen = !IsOpen;
    }
    selectorMat.color = Color.Lerp(Color.black, Color.clear, fader.localPosition.y);
  }
}
