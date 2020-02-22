using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Lootable : MonoBehaviour {

  List<Vector3> lootPositions = new List<Vector3>();

  void Start() {
    GameManager.Instance.AddLootable(this);
    LayerMask terrainMask = LayerMask.GetMask("Terrain");

    for (int i = 0; i < 4; i++) {
      Vector3 startPos = transform.position + (Vector3.up * 0.25f);
      Vector3 endPos = startPos + (Quaternion.AngleAxis(90 * i, Vector3.up) * Vector3.forward);
      if (!Physics.Linecast(startPos, endPos, terrainMask)) {
        lootPositions.Add(endPos);
      }
    }
  }

  void Update() {

  }

  public bool CheckPosition(Vector3 checkPos) {
    bool isLootable = false;
    foreach(Vector3 pos in lootPositions) {
      if (Vector3.Distance(checkPos, pos) < 0.25f) isLootable = true;
    }
    return isLootable;
  }
  public void ShowUI() {
    Debug.Log("Lootable is lootable!");

    transform.position += Vector3.up;
  }
}
