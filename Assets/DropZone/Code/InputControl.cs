using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InputControl : MonoBehaviour {

  Camera mainCamera;
  public CameraControl CameraControl { get; set; }
  GameManager gameManager;
  MapSelector mapSelector;

  bool mouseLeftInProgress = false;
  Vector3 mouseLeftDownPos = Vector3.zero;

  bool mouseRightInProgress = false;
  Vector3 mouseRightDownPos = Vector3.zero;

  public delegate void OnModifierMode(KeyCode key, bool setting);
  bool controlModifier = false;
  bool altModifier = false;
  bool shiftModifier = false;


  UnitControl selectedUnit;

  void Start() {
    mainCamera = Camera.main;
    CameraControl = mainCamera.transform.root.GetComponent<CameraControl>();
    gameManager = GameManager.Instance;
    mapSelector = GameObject.Find("MapSelector").GetComponent<MapSelector>();

    OnModifierMode setModifierMode = new OnModifierMode(onModifierMode);
  }

  // Update is called once per frame
  void Update() {

    //handle left mouse button
    if (Input.GetMouseButtonDown(0)) {
      PointerEventData eventData = new PointerEventData(EventSystem.current);
      eventData.position = Input.mousePosition;
      List<RaycastResult> results = new List<RaycastResult>();
      EventSystem.current.RaycastAll(eventData, results);
      if (results[0].gameObject.tag.Equals("Floor")) {
        mouseLeftDownPos = Input.mousePosition;
        mouseLeftInProgress = GetTerrainIntersection(out Vector3 mapPos);
        if (mouseLeftInProgress) {
          mouseLeftDownPos = mapPos;
        }
      }
    }

    if (mouseLeftInProgress) {

    }

    if (Input.GetMouseButtonUp(0)) {
      if (mouseLeftInProgress) mapSelector.IsOpen = true;
      mouseLeftInProgress = false;
    }

    //handle Right mouse button
    if (Input.GetMouseButtonDown(1)) {
      Vector3 mapPos;
      mouseRightInProgress = GetTerrainIntersection(out mapPos);
      if (mouseRightInProgress) {
        mouseRightDownPos = mapPos;
      }
    }

    if (mouseRightInProgress) {
      Vector3 mapPos;
      if (GetTerrainIntersection(out mapPos)) {
        CameraControl.Scroll(mouseRightDownPos - mapPos);
        mouseRightDownPos = mapPos;
      }
    }

    if (Input.GetMouseButtonUp(1)) {
      mouseRightInProgress = false;
    }

    if (Input.GetKey(KeyCode.Q)) CameraControl.Rotate(1);
    if (Input.GetKey(KeyCode.E)) CameraControl.Rotate(-1);

    if (Input.GetKey(KeyCode.W)) CameraControl.Move(Vector3.forward);
    if (Input.GetKey(KeyCode.A)) CameraControl.Move(Vector3.left);
    if (Input.GetKey(KeyCode.S)) CameraControl.Move(Vector3.back);
    if (Input.GetKey(KeyCode.D)) CameraControl.Move(Vector3.right);

    float scrollAmount = Input.GetAxis("Mouse ScrollWheel");
    if (scrollAmount != 0) {
      CameraControl.Zoom(scrollAmount);
    }

    if (Input.GetKeyDown(KeyCode.LeftControl) || Input.GetKeyDown(KeyCode.RightControl)) 
      onModifierMode(KeyCode.LeftControl, true);
    if (Input.GetKeyUp(KeyCode.LeftControl) || Input.GetKeyUp(KeyCode.RightControl)) 
      onModifierMode(KeyCode.LeftControl, false);
    if (Input.GetKeyDown(KeyCode.LeftAlt) || Input.GetKeyDown(KeyCode.RightAlt)) 
      onModifierMode(KeyCode.LeftAlt, true);
    if (Input.GetKeyUp(KeyCode.LeftAlt) || Input.GetKeyUp(KeyCode.RightAlt)) 
      onModifierMode(KeyCode.LeftControl, false);
    if (Input.GetKeyDown(KeyCode.LeftShift) || Input.GetKeyDown(KeyCode.RightShift)) 
      onModifierMode(KeyCode.LeftShift, true);
    if (Input.GetKeyUp(KeyCode.LeftShift) || Input.GetKeyUp(KeyCode.RightShift)) 
      onModifierMode(KeyCode.LeftShift, false);
  }

  public bool GetTerrainIntersection(out Vector3 mapPos) {
    Ray ray = mainCamera.ScreenPointToRay(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0.0f));
    LayerMask terrainMask = LayerMask.GetMask("Terrain");
    bool didHit = Physics.Raycast(ray, out RaycastHit hit, 1000, terrainMask);
    mapPos = didHit ? hit.point : Vector3.zero;
    return didHit;
  }

  public void SelectUnit(UnitControl selected) {
    if (!selected.tag.Equals("Friend")) return;

    foreach (UnitControl unit in gameManager.units) {
      if (unit != selected) unit.Select(false);
    }

    if (!gameManager.units.Contains(selected)) {
      gameManager.units.Add(selected);
    }

    selectedUnit = selected;
    selected.Select(true);
  }

  public void DeselectCluster(UnitControl deselected) {
    if (!deselected.tag.Equals("Friend")) return;

    if (!selectedUnit || selectedUnit != deselected)
      return;

    selectedUnit = null;
    deselected.Select(false);
  }

  void onModifierMode(KeyCode key, bool setting) {
    switch (key) {
      case KeyCode.LeftControl:
        controlModifier = setting;
        break;
      case KeyCode.LeftAlt:
        shiftModifier = setting;
        break;
      case KeyCode.LeftShift:
        altModifier = setting;
        break;
    }
  }
}
