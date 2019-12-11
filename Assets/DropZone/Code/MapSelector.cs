using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;

public class MapSelector : MonoBehaviour {

  InputControl inputControl;
  GameManager gameManager;
  Animator animator;
  Material selectorMat;
  Transform fader;
  BoxCollider acceptButton;
  Transform selectorBox;
  NavMeshPath path;
  LineRenderer line;

  bool isOpen = false;
  public bool IsOpen {
    get { return isOpen; }
    set {
      Debug.Log("Selector is open " + value);
      isOpen = value;
      animator.SetBool("Open", isOpen);
      acceptButton.enabled = isOpen;
      line.enabled = isOpen;
    }
  }


  public MapSelector Init() {
    gameManager = GameManager.Instance;
    inputControl = gameManager.inputControl;
    animator = GetComponent<Animator>();
    Renderer shell = transform.Find("Ground/OuterShell").GetComponent<Renderer>();
    Renderer background = transform.Find("Ground/Background").GetComponent<Renderer>();
    Renderer tile = transform.Find("Ground/Tile").GetComponent<Renderer>();
    selectorMat = Instantiate(shell.material);
    shell.material = selectorMat;
    background.material = selectorMat;
    tile.material = selectorMat;
    fader = transform.Find("TileControl");
    Transform accept = transform.Find("Ground/Background/AcceptButton");
    accept.gameObject.AddComponent<InputRelay>().Init(gameObject);
    acceptButton = accept.gameObject.AddComponent<BoxCollider>();
    Vector3 collsionSize = acceptButton.size;
    collsionSize.z = 0.1f;
    acceptButton.size = collsionSize;
    selectorBox = transform.Find("Ground/Background");

    path = new NavMeshPath();

    line = transform.Find("Line").GetComponent<LineRenderer>();

    return this;
  }

  // Update is called once per frame
  void Update() {

    selectorMat.color = Color.Lerp(Color.black, Color.clear, fader.localPosition.y);
  }

  public void SelectMapPos(Vector3 mapPos) {
    transform.position = mapPos;

    Quaternion newOrientation = gameManager.mapControl.GetCoverOrientation(gameManager.GetMapCell(transform.position));
    transform.rotation = newOrientation;

    IsOpen = true;

    NavMesh.CalculatePath(transform.position, inputControl.SelectedUnit.transform.position, NavMesh.AllAreas, path);

    line.positionCount = path.corners.Length;
    Vector3[] pathCorners = path.corners;
    for (int i = 0; i < pathCorners.Length; i++) pathCorners[i] += Vector3.up * 0.1f;
    line.SetPositions(pathCorners);

  }

  public void OnPointerClick(PointerEventData eventData) {
    inputControl.MoveSelectedUnit(transform.position);
    IsOpen = false;
  }
}
