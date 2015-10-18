using UnityEngine;
using UnityEditor;

public class CreateInventoryObject
{
	[MenuItem("Assets/Create/Create Inventory Object")]
	public static void CreateAsset ()
	{
		ScriptableObjectUtility.CreateAsset<InventoryObject> ();
	}
}