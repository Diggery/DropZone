using UnityEngine;
using System.Collections;

public class UnitSetup : MonoBehaviour {


    void Awake() {
        UnitControl unitControl = GetComponent<UnitControl>();
        gameObject.AddComponent<Targeting>();
        gameObject.AddComponent<UnitMover>();

        Inventory inventory = GetComponent<Inventory>();
        //inventory.AttachHead();
        unitControl.SetAttachPoint();
        inventory.CreateInventory();
        AddSelector();


        Destroy(this);
    }

    void AddSelector() {
        GameObject selector = new GameObject("Selector");
        selector.transform.tag = gameObject.tag;
        selector.transform.parent = transform;
        selector.transform.localPosition = Vector3.up;
        selector.transform.localRotation = Quaternion.identity;
        selector.layer = LayerMask.NameToLayer("UI");
        CapsuleCollider selectorCollision = selector.AddComponent<CapsuleCollider>();
        selectorCollision.radius = 0.6f;
        selectorCollision.height = 2.0f;
        selector.AddComponent<InputRepeater>().SetTarget(gameObject);
    }
	

}
