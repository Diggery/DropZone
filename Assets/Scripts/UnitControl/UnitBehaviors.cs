using UnityEngine;
using System.Collections;

public class UnitBehaviors : MonoBehaviour {

	UnitController unitController;
	MapControl mapControl;
	PathMover pathMover;
	
	public void SetUp(UnitController _unitController, MapControl _mapControl, PathMover _pathMover) {
		unitController = _unitController;
		mapControl = _mapControl;
		pathMover = _pathMover;
		
		if (transform.tag.Equals("Enemy")) {
			gameObject.AddComponent<EnemyAI>().SetUp(_unitController, _mapControl, this);
		}
	}
	
	void Update() {
		if (Input.GetKeyUp (KeyCode.A))  {
			FindCloseCorner();
		}	
	}

	public void FindNewPosition() {
		unitController.MoveTo(mapControl.FindBestCover(transform.position, 10));
	}	
	
	public void FindCloseCover() {
		unitController.MoveTo(mapControl.FindBestCover(transform.position, 3.0f));
	}
		
	public void FindSafePosition() {
		unitController.MoveTo(mapControl.FindSafestCover(transform.position, 10));
	}
	
	public void FindCloseCorner() {
		unitController.MoveTo(mapControl.FindCorner(transform.position, 3));
	}	
			
	public void SearchForEnemy(Vector3 lastKnownPosition) {
		unitController.MoveTo(mapControl.FindSafestCover(lastKnownPosition, 7));
	}
	
	public void TakeDamage(Vector4 damageInfo) {
		//print ("Health is " + unitController.GetNormalizedHealth());
		if (unitController.GetNormalizedHealth() < 0.5f) {
			if (!pathMover.HasPath()) { 
				FindSafePosition();
			}
		}
	}
}
