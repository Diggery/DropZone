using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class InputControl : MonoBehaviour {

  GameManager gameManager;

  Camera mainCamera;
  public CameraControl CameraControl { get; set; }
  MapControl mapControl;
  MapSelector mapSelector;
  UnitSelector unitSelector;

  bool mouseLeftInProgress = false;
  float mouseLeftClickTime = 0;
  Vector3 mouseLeftDownPos = Vector3.zero;

  bool mouseRightInProgress = false;
  float mouseRightClickTime = 0;
  Vector3 mouseRightDownPos = Vector3.zero;

  public delegate void OnModifierMode(KeyCode key, bool setting);
  bool controlModifier = false;
  bool altModifier = false;
  bool shiftModifier = false;

  public UnitControl SelectedUnit {
    get;
    private set;
  }

  enum CursorState { Normal, Select, Help }
  void SetCursor(CursorState mode) {
    switch (mode) {
      case CursorState.Normal:
        Cursor.SetCursor(gameManager.cursorNormal, new Vector2(9, 0), CursorMode.Auto);
        break;
      case CursorState.Select:
        Cursor.SetCursor(gameManager.cursorSelect, new Vector2(16, 16), CursorMode.Auto);
        break;
      case CursorState.Help:
        Cursor.SetCursor(gameManager.cursorHelp, new Vector2(16, 16), CursorMode.Auto);
        break;
    }
  }

  public InputControl Init() {
    mainCamera = Camera.main;
    CameraControl = mainCamera.transform.root.GetComponent<CameraControl>();
    gameManager = GameManager.Instance;
    mapControl = gameManager.mapControl;
    mapSelector = Instantiate(gameManager.GetPrefab("MapSelector")).GetComponent<MapSelector>();
    mapSelector.Init(this);
    unitSelector = Instantiate(gameManager.GetPrefab("UnitSelector")).GetComponent<UnitSelector>();
    unitSelector.Init(this);
    _ = new OnModifierMode(onModifierMode);
    SetCursor(CursorState.Normal);
    return this;
  }

  // Update is called once per frame
  void Update() {

    if (mouseLeftInProgress) mouseLeftClickTime += GameTime.DeltaTime;
    if (mouseRightInProgress) mouseRightClickTime += GameTime.DeltaTime;

    //handle left mouse button
    if (Input.GetMouseButtonDown(0)) {
      mouseLeftClickTime = 0;
      GameObject clickedOn = GetClickedObject(new PointerEventData(EventSystem.current));

      if (clickedOn.tag.Equals("Floor")) {
        mouseLeftDownPos = Input.mousePosition;
        mouseLeftInProgress = GetTerrainIntersection(out Vector3 mapPos);
        if (mouseLeftInProgress) {
          mouseLeftDownPos = mapPos;
        }
      } else if (clickedOn.transform.root.tag.Equals("Player")) {
        UnitControl unit = clickedOn.transform.root.GetComponent<UnitControl>();
        if (!unit.IsDead) SelectUnit(unit);
      }
    }

    if (mouseLeftInProgress) {

    }

    if (Input.GetMouseButtonUp(0)) {
      if (mouseLeftInProgress) { //clicked on the floor
        if (SelectedUnit) {
          mapSelector.SelectMapPos(mapControl.GetCellPos(mouseLeftDownPos));
        }
      }
      mouseLeftInProgress = false;
    }

    //handle Right mouse button
    if (Input.GetMouseButtonDown(1)) {
      mouseRightClickTime = 0;
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
      GameObject clickedOn = GetClickedObject(new PointerEventData(EventSystem.current));
      if (clickedOn.tag.Equals("Floor") && mouseRightClickTime < 0.25f) SelectUnit(null);
      mouseRightInProgress = false;
    }

    if (Input.GetKeyDown(KeyCode.Q)) CameraControl.RotateDown(1);
    if (Input.GetKey(KeyCode.Q)) CameraControl.FreeRotate(1);
    if (Input.GetKeyUp(KeyCode.Q)) CameraControl.RotateUp(1);
    if (Input.GetKeyDown(KeyCode.E)) CameraControl.RotateDown(-1);
    if (Input.GetKey(KeyCode.E)) CameraControl.FreeRotate(-1);
    if (Input.GetKeyUp(KeyCode.E)) CameraControl.RotateUp(-1);

    if (Input.GetKey(KeyCode.W)) CameraControl.Move(Vector3.forward);
    if (Input.GetKey(KeyCode.A)) CameraControl.Move(Vector3.left);
    if (Input.GetKey(KeyCode.S)) CameraControl.Move(Vector3.back);
    if (Input.GetKey(KeyCode.D)) CameraControl.Move(Vector3.right);

    if ((Input.GetButtonUp("SelectSideArm")) && SelectedUnit) SelectedUnit.DrawSideArm();
    if ((Input.GetButtonUp("SelectMainWeapon")) && SelectedUnit) SelectedUnit.DrawMainWeapon();
    if ((Input.GetButtonUp("Inventory")) && SelectedUnit) SelectedUnit.PlayerPanel.ToggleInventory();

    if (Input.GetKey(KeyCode.Z) && SelectedUnit) SelectedUnit.Incapacitate();
    if (Input.GetKey(KeyCode.X) && SelectedUnit) SelectedUnit.Revive();

    if (Input.GetKeyUp(KeyCode.Space)) GameTime.TogglePause();

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

  public void SelectUnit(UnitControl selected) {

    foreach (UnitControl unit in gameManager.Units) {
      if (unit != selected) unit.IsSelected = false;
    }

    if (!selected) {
      mapSelector.IsOpen = false;
      unitSelector.IsOpen = false;
      SelectedUnit = null;
      return;
    }

    if (!selected.tag.Equals("Player")) return;

    if (!gameManager.Units.Contains(selected)) {
      gameManager.Units.Add(selected);
    }

    if (SelectedUnit != selected)
      GameTime.AutoPause("PlayerSelected", GameTime.TimeSetting.SlowMo, selected.UnitName);

    mapSelector.IsOpen = false;
    unitSelector.IsOpen = true;
    SelectedUnit = selected;
    selected.IsSelected = true;
  }

  public void DeselectUnit() {

  }

  public void HoverEnterUnit(PointerEventData hoverEvent) {
    UnitControl unit = hoverEvent.pointerEnter.transform.root.GetComponent<UnitControl>();
    bool showHelpCursor = unit && unit.IsDead && SelectedUnit && SelectedUnit.HasMedkit;
    SetCursor(showHelpCursor ? CursorState.Help : CursorState.Select);
  }

  public void HoverExitUnit(PointerEventData hoverEvent) {
    SetCursor(CursorState.Normal);
  }

  public void MoveSelectedUnit(Vector3 mapPos) {
    if (!SelectedUnit) return;
    SelectedUnit.MoveTo(mapPos);
  }

  public bool GetTerrainIntersection(out Vector3 mapPos) {
    Ray ray = mainCamera.ScreenPointToRay(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0.0f));
    LayerMask terrainMask = LayerMask.GetMask("Terrain");
    bool didHit = Physics.Raycast(ray, out RaycastHit hit, 1000, terrainMask);
    mapPos = didHit ? hit.point : Vector3.zero;
    return didHit;
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

  GameObject GetClickedObject(PointerEventData eventData) {
    eventData.position = Input.mousePosition;
    List<RaycastResult> results = new List<RaycastResult>();
    EventSystem.current.RaycastAll(eventData, results);
    return results[0].gameObject;
  }

}