﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "NewItem", menuName = "New Item")]

public class EntryItem : ScriptableObject {

  public string itemName;
  public string description;
  public Sprite icon;
  public GameObject prefab;
  public bool isUsable;

}
