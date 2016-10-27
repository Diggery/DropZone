using UnityEngine;
using System.Collections;

public class LineDrawer : MonoBehaviour {

    float lineWidth = 0.1f;
    float dotSize = 0.5f;
    Mesh lineMesh;
    GameObject lineObject;
    public Material lineMaterial;

    bool clearLine;

    Vector3[] waypoints;

    public Transform[] testPath;

   
    class Quad {
        public Vector3[] verts;
        public Vector2[] UVs;
        public Color[] colors;

        public Quad() {
            this.verts = new Vector3[4];
            this.UVs = new Vector2[4];
            this.colors = new Color[4];
        }
    }


    void Start() {
    }

    void Update() {
        if (clearLine) {
            Color matColor = lineObject.GetComponent<Renderer>().material.color;
            matColor.a = Mathf.Clamp01(matColor.a - Time.deltaTime);
            if (matColor.a <= 0) {
                lineMesh.Clear();
                clearLine = false;
                matColor.a = 1.0f;
            }
            lineObject.GetComponent<Renderer>().material.color = matColor;
        }
	
    }

    void CreateLineObject() {
        lineObject = GameObject.CreatePrimitive(PrimitiveType.Cube);
        Destroy(lineObject.GetComponent<BoxCollider>());
        lineObject.name = transform.name + "'s pathline";
        lineObject.GetComponent<Renderer>().material = lineMaterial;
        lineObject.transform.Translate(0.0f, 0.1f, 0.0f);
        lineMesh = lineObject.GetComponent<MeshFilter>().mesh;
    }

    public void DrawLine(Vector3[] points) {

        if (!lineObject)
            CreateLineObject();
        lineMesh.Clear();

        waypoints = points;
        for (int i = 0; i < waypoints.Length - 1; i++) {
            Vector3 start = waypoints[i];
            Vector3 end = waypoints[i + 1];
            lineMesh = AddGeometery(lineMesh, MakeLineSegment(start, end, lineWidth));
            lineMesh = AddGeometery(lineMesh, MakeDot(end, dotSize));
        }
    }

    Mesh AddGeometery(Mesh mesh, Quad quad) {

        int numOfVerts = mesh.vertices.Length;

        Vector3[] verts = mesh.vertices;
        verts = resizeVertices(verts, 4);

        Vector2[] uvs = mesh.uv;
        uvs = resizeUVs(uvs, 4);

        Color[] colors = mesh.colors;

        colors = resizeColors(colors, 4);

        verts[numOfVerts] = quad.verts[0];
        uvs[numOfVerts] = quad.UVs[0];
        colors[numOfVerts] = quad.colors[0];

        verts[numOfVerts + 1] = quad.verts[1];
        uvs[numOfVerts + 1] = quad.UVs[1];
        colors[numOfVerts + 1] = quad.colors[1];

        verts[numOfVerts + 2] = quad.verts[2];
        uvs[numOfVerts + 2] = quad.UVs[2];
        colors[numOfVerts + 2] = quad.colors[2];

        verts[numOfVerts + 3] = quad.verts[3];
        uvs[numOfVerts + 3] = quad.UVs[3];
        colors[numOfVerts + 3] = quad.colors[3];

        int numOfTris = 0;
        int[] tris = new int[0];

        if (numOfVerts > 0) {
            numOfTris = mesh.triangles.Length;      
            tris = mesh.triangles;          
        }   

        tris = resizeTraingles(tris, 6);

        tris[numOfTris] = numOfVerts + 2;
        tris[numOfTris + 1] = numOfVerts + 1;
        tris[numOfTris + 2] = numOfVerts;

        tris[numOfTris + 3] = numOfVerts + 2;
        tris[numOfTris + 4] = numOfVerts + 3;
        tris[numOfTris + 5] = numOfVerts + 1;

        mesh.vertices = verts;
        mesh.triangles = tris;
        mesh.uv = uvs;
        mesh.colors = colors;
        return mesh;
    }

    Quad MakeLineSegment(Vector3 start, Vector3 end, float width) {

        Quad quad = new Quad();

        Vector3 offset = (start - end).normalized * (width * 0.5f);

        offset = Quaternion.AngleAxis(90, Vector3.up) * offset;

        quad.verts[0] = (start + offset);
        quad.UVs[0] = new Vector2(0.0f, 0.0f);
        quad.colors[0] = Color.white;

        quad.verts[1] = (start - offset);
        quad.UVs[1] = new Vector2(0.333f, 0.0f);
        quad.colors[1] = Color.white;

        quad.verts[2] = (end + offset);
        quad.UVs[2] = new Vector2(0.0f, 1.0f);
        quad.colors[2] = Color.white;

        quad.verts[3] = (end - offset);
        quad.UVs[3] = new Vector2(0.333f, 1.0f);
        quad.colors[3] = Color.white;

        return quad;
    }

    Quad MakeDot(Vector3 pos, float radius) {
        
        Quad quad = new Quad();

        pos.y += 0.1f;

        quad.verts[0] = pos + (Vector3.left * radius);
        quad.UVs[0] = new Vector2(0.333f, 1.0f);
        quad.colors[0] = Color.white;

        quad.verts[1] = pos + (Vector3.back * radius);
        quad.UVs[1] = new Vector2(0.333f, 0.0f);
        quad.colors[1] = Color.white;

        quad.verts[2] = pos + (Vector3.forward * radius);
        quad.UVs[2] = new Vector2(1.0f, 1.0f);
        quad.colors[2] = Color.white;

        quad.verts[3] = pos + (Vector3.right * radius);
        quad.UVs[3] = new Vector2(1.0f, 0.0f);
        quad.colors[3] = Color.white;

        return quad;    
    }


    Vector3[] resizeVertices(Vector3[] oldVerts, int numAdded) {
        //print ("resizing verts by " + numAdded);
        Vector3[] newVerts = new Vector3[oldVerts.Length + numAdded];
        for (int i = 0; i < oldVerts.Length; i++)
            newVerts[i] = oldVerts[i];
        return newVerts;
    }

    Vector2[] resizeUVs(Vector2[] oldUVs, int numAdded) {
        //print ("resizing uvs by " + numAdded);
        Vector2[] newUVs = new Vector2[oldUVs.Length + numAdded];
        for (int i = 0; i < oldUVs.Length; i++)
            newUVs[i] = oldUVs[i];
        return newUVs;
    }

    Color[] resizeColors(Color[] oldColors, int numAdded) {
        //print ("resizing uvs by " + numAdded);
        Color[] newColors = new Color[oldColors.Length + numAdded];
        for (int i = 0; i < oldColors.Length; i++)
            newColors[i] = oldColors[i];
        return newColors;
    }

    int[] resizeTraingles(int[] oldTris, int numAdded) {
        int[] newTris = new int[oldTris.Length + numAdded];
        for (int i = 0; i < oldTris.Length; i++)
            newTris[i] = oldTris[i];
        return newTris;
    }

    public void ClearLine(bool fadeOut) {
        if (fadeOut) {
            clearLine = true;
        }
        else {
            lineMesh.Clear();
        }
    }

    void OnDestroy() {
        Destroy(lineObject);
    }
}
