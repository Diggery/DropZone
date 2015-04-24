using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyCaptain : MonoBehaviour {

	UnitController unitController;
	UnitBehaviors unitBehaviors;
	SpawnControl spawnControl;
	Spawner mainSpawner;
	List<UnitController> squad = new List<UnitController>();
	
	float gatherDistance = 10;
	
	int maxSquad = 5;
	
	float actionTimer = 5.0f;
	
	public void SetUp(UnitController _unitController) {
		unitController = _unitController;
		gatherDistance *= gatherDistance;
		
		GameObject mapObj = GameObject.Find("Map");
		spawnControl = mapObj.GetComponent<SpawnControl>();
	}
	
	void Update() {
		if (actionTimer > 0) {

			actionTimer -= Time.deltaTime;
			
			if (actionTimer < 0) {
				if (squad.Count >= 3) {
					foreach (UnitController member in squad) {
						member.GetComponent<EnemyAI>().SearchArea();
						print ("searching");
					}
				}
		
				if (squad.Count < maxSquad) {
					GatherSoldiers();
				}
				actionTimer = 10f;
			}
		}
	
	
	}
	
	void GatherSoldiers() {
		bool nothingGathered = true;
		GameObject[] allies = GameObject.FindGameObjectsWithTag ("Enemy");
		foreach (GameObject ally in allies) {
			if ((ally.transform.position - transform.position).sqrMagnitude < gatherDistance) {
				UnitController controller = ally.GetComponent<UnitController>();
				if (!squad.Contains(controller) && ally.GetComponent<EnemyAI>().GetRank() == 0) {
					squad.Add(controller);
					nothingGathered = false;
				}
			}
		}
		if (nothingGathered) {
			SummonGuard();
		}
	}
	
	void SummonGuard() {
		GameObject newUnit = spawnControl.SpawnUnitAtClosest(transform.position);
		if (newUnit) {
		    AddSoldier(newUnit);
		}
	}
	
	public void AddSoldier(GameObject newSoldier) {
		if (squad.Count > maxSquad) return;
		UnitController controller = newSoldier.GetComponent<UnitController>();
		if (!squad.Contains(controller)) {
			squad.Add(controller);
			controller.SetEnemyCaptain(this);
		}
	}
	
	public void SquadMemberDead(UnitController deadUnit) {
		if (squad.Contains(deadUnit)) {
			squad.Remove(deadUnit);
		} else {
			Debug.Log(deadUnit.gameObject.name + " is not a member of " + transform.name + "'s squad.");
		}
	}
	
	void Retreat() {
		
		if (!mainSpawner) {
			mainSpawner = spawnControl.GetMainSpawner();
		}	
		if (!unitBehaviors) {
			unitBehaviors = GetComponent<UnitBehaviors>();
			if (!unitBehaviors) Debug.Log ("Can't find a unitBehavior");
		}
		if (unitBehaviors.retreating) return;
		print ("Retreat!!!");
		foreach (UnitController member in squad) {
			
			member.GetComponent<UnitBehaviors>().FindCoverAtPosition(mainSpawner.transform.position);
		}
		unitBehaviors.FindCoverAtPosition(mainSpawner.transform.position);
		unitBehaviors.retreating = true;
	}
	
	public void TakeDamage(UnitController.DamageInfo damageInfo) {
		if (unitController.GetNormalizedHealth() < 0.5f) {
			Retreat();
		}
	}
	
	void OnDestroy() {
		foreach (UnitController member in squad) {
			member.RemoveEnemyCaptain();
		}	
	}
}
