using UnityEngine;
using System.Collections;

public class ConnectorLine : MonoBehaviour {


	Transform start;
	Transform end;
	public float width;
	public Color lineColor;


	static public void CreateLine(GameObject prefab, Transform newStart, Transform newEnd, float newWidth) {
		GameObject line = Instantiate(prefab, newStart.position, newStart.rotation) as GameObject;
		ConnectorLine lineControl = line.GetComponent<ConnectorLine>();
		lineControl.SetEndPoints(newStart, newEnd);
		lineControl.SetWidth(newWidth);
	}
	
	void Update () {
		if (!start || !end) {
			Destroy (gameObject);
			return;
		}
		transform.position = start.position;
		Vector3 upVector = (transform.position - Camera.main.transform.position).normalized;
		transform.LookAt(end, upVector);
		Vector3 scale = transform.localScale;
		scale.x = width/2.0f;
		scale.z = Vector3.Distance(start.position, end.position);
		transform.localScale = scale;
		GetComponent<Renderer>().material.color = Color.Lerp(GetComponent<Renderer>().material.color, lineColor, Time.deltaTime * 10);
	}

	public void SetEndPoints(Transform newStart, Transform newEnd) {
		start = newStart;
		end = newEnd;
	}
	
	public void SetWidth(float newWidth) {
		width = newWidth;
	}
}
