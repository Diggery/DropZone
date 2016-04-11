using UnityEngine;
using System.Collections;

public class EnemyAI : MonoBehaviour {

    UnitController unitController;
    MapControl mapControl;
    Spawner spawner;
    UnitBehaviors unitBehaviors;
	
    int rank = 0;
	
    float boredom = 3.0f;
    float boredRate = Random.Range(0.75f, 1.0f);
    public bool spotted;

    public class RadioEvent {
        public string name;
        public Vector3 mapPos;
        public UnitController unit;

        public RadioEvent(string name, Vector3 mapPos, UnitController unit) {
            this.name = name;
            this.mapPos = mapPos;
            this.unit = unit;
        }
    }

    public void SetUp(UnitController _unitController, MapControl _mapControl, UnitBehaviors _unitBehaviors) {
        unitController = _unitController;
        spawner = unitController.GetSpawner();
        mapControl = _mapControl;
        unitBehaviors = _unitBehaviors;
		
        if (gameObject.name.Contains("Captain"))
            rank = 1;
		
        Events.Listen(gameObject, "EnemyRadio");
    }

    public void SetRank(int newRank) {
        rank = newRank;
    }

    public int GetRank() {
        return rank;
    }

    void Update() {
        if (unitBehaviors.retreating)
            return;

        if (!unitController.enemyCaptain)
            boredom += Time.deltaTime * boredRate;

        if (!unitController.IsMoving()) {
    		
            CoverPoint currentCoverPoint = unitController.GetCurrentCoverPoint();

            if (boredom > 5) {
                unitBehaviors.FindCloseCorner();
            }
    						
            if (boredom > 7 && currentCoverPoint && !currentCoverPoint.IsCorner()) {
                unitBehaviors.FindCloseCorner();
            }
    			
    		
            if (boredom > 15) {
                boredom = 0.0f;
                if (Random.value < 0.5f) { // 50% chance they will search when totally bored
                    SearchArea();
                }
            }
        }
	
        if (unitController.dead) {
            Destroy(this);
        }
		
    }

    public void TakeDamage(UnitController.DamageInfo damageInfo) {
        if (unitBehaviors.retreating)
            return;
        boredom = 0.0f;
        CoverPoint cover = unitController.GetCurrentCoverPoint();
        if (!cover) {
            unitBehaviors.FindCloseCover();
            GameObject[] allies = GameObject.FindGameObjectsWithTag("Enemy");
            foreach (GameObject ally in allies) {
                if ((ally.transform.position - transform.position).sqrMagnitude < 25) {
                    ally.GetComponent<EnemyAI>().Alert();
                }
            }
        }
        if (rank < 1) {
            if (unitController.GetNormalizedHealth() < 0.3f) {
                if (spawner)
                    unitBehaviors.FindSafePosition(spawner.transform.position);
            }
        }
    }

	
    public void ResetAI() {
        boredom = 20f;
    }

    public void Alert() {
        if (boredom > 2) {
            boredom = 0.0f;
            CoverPoint cover = unitController.GetCurrentCoverPoint();
            if (!cover) {
                unitBehaviors.FindCloseCover();
            }
        }
    }

    public void SeeEnemy(Vector3 enemyPos) {
        if (boredom > 3) {
            boredom = 0.0f;
            RadioEvent radioEvent = new RadioEvent("EnemySpotted", enemyPos, unitController);
            Events.Send(gameObject, "EnemyRadio", radioEvent);
        }
    }

    public void EnemyRadio(Events.Notification notification) {
        RadioEvent radioEvent = (RadioEvent)notification.data;
		
        switch (radioEvent.name) {
		
            case "EnemySpotted":
                if (boredom > 10) {
                    boredom = 0.0f;
                    print(transform.name + " heard about an enemy");
                    unitBehaviors.SearchForEnemy(radioEvent.mapPos);
                }			
                break;
			
            case "SoldierDown":
                unitBehaviors.FindCloseCover();
                break;
			
            default :
                unitBehaviors.SearchForEnemy(radioEvent.mapPos);
                break;
        }
	
        if (boredom > 10) {
            boredom = 0.0f;
            print(transform.name + " heard about an enemy");
            Vector3 enemyPos = (Vector3)notification.data;
            unitBehaviors.SearchForEnemy(enemyPos);
        }
    }

    public void SearchArea() {
        print("searching");
        GameObject[] targets = GameObject.FindGameObjectsWithTag("Player");
        if (targets.Length < 1)
            return;
		
		
        Vector3 averagePos = Vector3.zero;
		
        foreach (GameObject target in targets) {
            averagePos.x += target.transform.position.x;
            averagePos.y += target.transform.position.y;
            averagePos.z += target.transform.position.z;
        }
		
        averagePos.x = averagePos.x / targets.Length;
        averagePos.y = averagePos.y / targets.Length;
        averagePos.z = averagePos.z / targets.Length;
		
        averagePos.z = Mathf.Lerp(transform.position.z, averagePos.z, 0.5f);
		
        Vector3 coverAtDest = mapControl.FindBestCover(averagePos, 5, transform.tag);
		
        if (coverAtDest != averagePos) {
            unitController.MoveTo(coverAtDest);
        }
    }

    public Transform GetClosestTarget() {
        GameObject[] targets = GameObject.FindGameObjectsWithTag("Player");
		
        GameObject closest = null;
        float distance = Mathf.Infinity;
        foreach (GameObject target in targets) {
            float distanceToTarget = (target.transform.position - transform.position).sqrMagnitude;
            if (distanceToTarget < distance) {
                distance = distanceToTarget;
                closest = target;
            }
			
        }
        return closest.transform;
    }

    void OnDestroy() {
        if (unitController.enemyCaptain)
            unitController.enemyCaptain.SquadMemberDead(unitController);
    }
}
