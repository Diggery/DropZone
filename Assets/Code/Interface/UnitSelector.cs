using UnityEngine;
using System.Collections;

public class UnitSelector : MonoBehaviour {

    Renderer tile;
    Material tileMat;
    Renderer innerShell;
    Material innerShellMat;
    Renderer outerShell;
    Material outerShellMat;

	void Start () {
        tile = transform.Find("Tile").GetComponent<Renderer>();
        tileMat = tile.material;
        innerShell = transform.Find("InnerShell").GetComponent<Renderer>();
        innerShellMat = innerShell.material;
        outerShell = transform.Find("OuterShell").GetComponent<Renderer>();
        outerShellMat = outerShell.material;
	}
	
	void Update () {
	
	}

    public void Open(Vector3 mapPos) {
        transform.position = mapPos;
        ColorFader.AddFader(tile.gameObject, tileMat, Color.green, Color.black, 0.50f);
        ColorFader.AddFader(innerShell.gameObject, innerShellMat, Color.green, Color.black, 0.50f);
        ColorFader.AddFader(outerShell.gameObject, outerShellMat, Color.green, Color.black, 0.50f);

    }

    public void Close() {
        ColorFader.AddFader(tile.gameObject, tileMat, Color.black, Color.clear, 1.0f);
        ColorFader.AddFader(innerShell.gameObject, innerShellMat, Color.black, Color.clear, 1.0f);
        ColorFader.AddFader(outerShell.gameObject, outerShellMat, Color.black, Color.clear, 1.0f);
    }
}
