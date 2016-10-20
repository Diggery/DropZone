using UnityEngine;
using System.Collections;

public class InputControl : MonoBehaviour {
   
    private static InputControl instance;

    public static InputControl GetInstance() {
        return instance;
    }

    private void CreateInstance() {
        if (!instance) {
            instance = this;
        } else {
            Destroy(this.gameObject);
        }
    }

    public GameObject mapSelectorPrefab;
    MapSelector mapSelector;
    public GameObject unitSelectorPrefab;
    UnitSelector unitSelector;

    MapControl mapControl;


    UnitControl selectedUnit;

    void Awake() {
        CreateInstance();
    }

    void Start() {
        CreateSelectors();
        mapControl = MapControl.GetInstance();
    }

    void Update() {
	
    }

    public void SetSelectedUnit(UnitControl unit) {
        selectedUnit = unit;
        unitSelector.Open(unit.transform.position);
    }

    public void MapClicked(Vector3 position) {
        if (selectedUnit) {
            Vector3 mapPos = mapControl.MapPosToNearestCell(position);
            mapSelector.Open(mapPos);
            selectedUnit.ShowPath(mapPos);
        } 
    }

    void CreateSelectors() {
        GameObject mapSelectorObj = Instantiate(mapSelectorPrefab, Vector3.up * 10, Quaternion.identity) as GameObject;
        mapSelector = mapSelectorObj.GetComponent<MapSelector>();

        GameObject unitSelectorObj = Instantiate(unitSelectorPrefab, Vector3.up * 10, Quaternion.identity) as GameObject;
        unitSelector = unitSelectorObj.GetComponent<UnitSelector>();
    }

    public void PathAccepted(Vector3 movePos) {
        if (selectedUnit) {
            selectedUnit.MoveTo(movePos);
        } 
    }
}
