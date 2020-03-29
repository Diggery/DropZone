using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(fileName = "NewWeapon", menuName = "New Weapon")]

public class EntryWeapon : EntryItem {

  public Vector2 spread;
  public float fireRate = 0.1f;

  public int magazineSize = 5;
  public int roundsInMagazine = 0;

  public int burstAmount = 3;
  public float burstCooldown = 0.5f;

}
