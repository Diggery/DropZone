using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : MonoBehaviour {

  List<UnitControl> players = new List<UnitControl>();
  List<HelperDrone> drones = new List<HelperDrone>();
  public PlayerManager Init() {
    return this;
  }

  public void Add(UnitControl player) {
    players.Add(player);
    player.needsEquipment.AddListener(NeedsEquipment);
  }

  public void Add(HelperDrone drone) {
    drones.Add(drone);
  }

  void NeedsEquipment(HelperDrone.DroneTask task, UnitControl player) {
    if (drones.Count <= 0) Debug.Log("There are no drones to make a delivery");
    int offset = Random.Range(0, drones.Count);
    for(int i = 0; i< drones.Count; i++) {
      drones[(i + offset) % drones.Count].AddTask(task, player);
    }
  }
}
