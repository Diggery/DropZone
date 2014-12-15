using UnityEngine;
using System.Collections;

public class UnitBehaviors : MonoBehaviour {

	UnitController unitController;
	MapControl mapControl;
	
	public bool retreating;
		
	public void SetUp(UnitController _unitController, MapControl _mapControl) {
		unitController = _unitController;
		mapControl = _mapControl;
		
		if (transform.tag.Equals("Enemy")) {
			gameObject.AddComponent<EnemyAI>().SetUp(_unitController, _mapControl, this);
		}
	}
	
	void Update() {
		
		if (Input.GetKeyUp (KeyCode.A))  {
			FindNewPosition();
		}	
	}
	
	public void MoveComplete() {
		retreating = false;
	}

	
	public void FindCoverAtPosition(Vector3 destination) {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindBestCover(destination, 3, transform.tag));
	}

	public void MoveCloseTo(Vector3 destination) {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindOpenPosition(destination, 3));
	}
	
	public void FindNewPosition() {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindBestCover(transform.position, 10, transform.tag));
	}	
	
	public void FindCloseCover() {
		if (retreating) return;
		MapControl.MapDataPoint mapCell = mapControl.GetMapData(transform.position);
		if (!mapCell.coverPoint || !mapCell.coverPoint.IsCorner())
			unitController.MoveTo(mapControl.FindBestCover(transform.position, 3.0f, transform.tag));
	}
		
	public void FindSafePosition() {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindSafestCover(transform.position, 10, transform.tag));
	}
	public void FindSafePosition(Vector3 destination) {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindSafestCover(destination, 5, transform.tag));
	}	
	public void FindCloseCorner() {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindCorner(transform.position, 3));
	}	
			
	public void SearchForEnemy(Vector3 lastKnownPosition) {
		if (retreating) return;
		unitController.MoveTo(mapControl.FindSafestCover(lastKnownPosition, 7, transform.tag));
	}

	
}
