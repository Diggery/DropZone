﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class MapSelector : MonoBehaviour {

  InputControl inputControl;
  GameManager gameManager;
  Renderer panel;
  NavMeshPath path;
  LineRenderer newPathLine;
  RectTransform confirmLabel;
  Transform frame;
  Camera mainCamera;
  Vector2 UISize;

  public Interpolator.LerpFloat panelTrans;
  public Interpolator.LerpFloat labelTrans;

  [ColorUsage(true, true)]
  public Color flashColor;

  bool isOpen = false;
  public bool IsOpen {
    get { return isOpen; }
    set {
      bool wasOpen = isOpen;
      isOpen = value;
      newPathLine.enabled = isOpen;

      if (isOpen && !wasOpen) {
        Interpolator.Start(labelTrans, "MapSelectorOpen");
        GameTime.AutoPause("OpenMapSelector", GameTime.TimeSetting.SlowMo);
      }
      if (!isOpen && wasOpen) {
        Interpolator.Reverse(labelTrans, "MapSelectorClose");
        GameTime.AutoPause("OpenMapSelector", GameTime.TimeSetting.Normal);
      }
    }
  }

  public MapSelector Init(InputControl inputControl) {
    gameManager = GameManager.Instance;
    CreateLabel();

    this.inputControl = inputControl;
    panel = transform.Find("CoverPanel").GetComponent<Renderer>();
    frame = transform.Find("Frame");
    path = new NavMeshPath();
    newPathLine = transform.Find("NewPathLine").GetComponent<LineRenderer>();

    mainCamera = Camera.main;

    labelTrans.onTick = OnLabelLerp;
    labelTrans.onFinish = OnLabelFinish;
    labelTrans.container = gameObject;

    panelTrans.onTick = OnPanelLerp;
    panelTrans.container = gameObject;

    IsOpen = true;
    IsOpen = false;
    return this;
  }

  void Update() {

    if (isOpen) {
      Vector3 viewPos = mainCamera.WorldToViewportPoint(transform.position + (Vector3.up * 2));
      Vector2 labelPos = new Vector2(viewPos.x * UISize.x, viewPos.y * UISize.y);
      confirmLabel.anchoredPosition = labelPos;
    }
  }

  public void SelectMapPos(Vector3 mapPos) {

    transform.position = mapPos;

    MapData.MapCell mapCell = gameManager.GetMapCell(transform.position);
    Quaternion newOrientation = gameManager.mapControl.GetCoverOrientation(mapCell);
    transform.rotation = newOrientation;

    if (mapCell.HasCover) {
      Interpolator.Start(panelTrans, "MapSelectorPanelOpen");
      panel.enabled = true;
    } else {
      panel.enabled = false;
    }

    IsOpen = true;
    NavMeshAgent navAgent = inputControl.SelectedUnit.GetComponent<NavMeshAgent>();
    navAgent.CalculatePath(transform.position, path);

    newPathLine.positionCount = path.corners.Length;
    Vector3[] pathCorners = path.corners;
    for (int i = 0; i < pathCorners.Length; i++)pathCorners[i] += Vector3.up * 0.1f;
    newPathLine.SetPositions(pathCorners);
  }

  void CreateLabel() {
    RectTransform ui = gameManager.uiLayout.GetComponent<RectTransform>();
    GameObject label = Instantiate(gameManager.GetPrefab("ConfirmLabel"), ui);
    UISize = new Vector2(ui.rect.width, ui.rect.height);
    confirmLabel = label.GetComponent<RectTransform>();
    Button confirm = confirmLabel.transform.Find("Confirm").GetComponent<Button>();
    confirm.onClick.AddListener(OnConfirm);
    Button cancel = confirmLabel.transform.Find("Cancel").GetComponent<Button>();
    cancel.onClick.AddListener(OnCancel);
  }

  void OnLabelLerp(float amount) {
    if (!confirmLabel.gameObject.activeSelf)confirmLabel.gameObject.SetActive(true);
    confirmLabel.localScale = Vector2.Lerp(Vector2.zero, Vector2.one, amount);
    frame.localPosition = Vector3.Lerp(Vector3.up * -2, Vector3.up * 0.95f, amount);
  }

  void OnLabelFinish(bool reverse) {
    confirmLabel.gameObject.SetActive(!reverse);
  }

  void OnPanelLerp(float amount) {
    Color panelColor = Color.Lerp(Color.white, flashColor, amount);
    panel.material.SetColor("_EmissionColor", panelColor);
  }

  public void OnConfirm() {
    inputControl.MoveSelectedUnit(transform.position);
    IsOpen = false;
  }
  public void OnCancel() {
    IsOpen = false;
  }
}