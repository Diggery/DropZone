using UnityEngine;
using System.Collections;
using UnityEngine.EventSystems;


public class MapSelector : MonoBehaviour, IPointerDownHandler, IPointerUpHandler {

    InputControl inputControl;
    MapControl mapControl;

    Renderer selectorTileRenderer;

    Material selectorTileMat;
    Color selectorTileColor;

    Renderer selectorShellRenderer;
    Material selectorShellMat;
    float selectorShellTimer = -1.0f;

    Transform selectorBackground;
    Material selectorBackgroundMat;
    public Color selectorBackgroundColor;

    Transform selectorButton;
    BoxCollider selectorButtonCollision;
    Material selectorButtonMat;
    public Color selectorButtonColor;

    Transform selectorIcon;
    Material selectorIconMat;
    public Color selectorIconColor;

    Animator animator;

    bool isOpened;

    float flashTimer = -1.0f;

    void Start() {

        inputControl = InputControl.GetInstance();
        mapControl = MapControl.GetInstance();

        selectorTileRenderer = transform.Find("Ground/Tile").GetComponent<Renderer>();
 
        selectorTileMat = selectorTileRenderer.material;

        selectorShellRenderer = transform.Find("Ground/Shell/OuterShell").GetComponent<Renderer>();
        selectorShellMat = selectorShellRenderer.sharedMaterial;

        selectorBackground = transform.Find("Ground/Background");
        selectorBackgroundMat = selectorBackground.GetComponent<Renderer>().material;

        selectorButton = transform.Find("Ground/Background/AcceptButton");
        selectorButtonCollision = selectorButton.gameObject.AddComponent<BoxCollider>();
        selectorButtonCollision.center = Vector3.zero;
        selectorButtonCollision.size = new Vector3(1.0f, 0.75f, 0.25f);
        selectorButtonMat = selectorButton.GetComponent<Renderer>().material;

        selectorIcon = transform.Find("Ground/Background/AcceptButton/AcceptIcon");
        selectorIconMat = selectorIcon.GetComponent<Renderer>().material;

        animator = GetComponent<Animator>();

        Close();
    }

    void Update() {
        if (flashTimer < 1.0f) {
            flashTimer += GameTime.deltaTime;
            if (flashTimer > 1.0f) {
                if (isOpened) {
                    ColorFader.AddFader(selectorIcon.gameObject, selectorIconMat, Color.white, selectorIconColor, 1.0f);
                } else {
                    ColorFader.AddFader(selectorTileRenderer.gameObject, selectorTileMat, Color.black, Color.clear, 0.25f);
                }
            }
        }

        if (selectorShellTimer < 1.0f) {
            selectorShellTimer += GameTime.deltaTime * 3;
            float amount = (Mathf.SmoothStep(0, 1, selectorShellTimer) * 2) - 1;
            if (isOpened) {
                selectorShellMat.color = Color.Lerp(Color.clear, Color.black, amount);
            } else {
                selectorShellMat.color = Color.Lerp(Color.green, Color.clear, amount);
            }
        }

        float buttonHeading = Camera.main.transform.eulerAngles.y / 90;
        buttonHeading = Mathf.Round(buttonHeading) * 90;

        selectorBackground.rotation = Quaternion.Lerp(selectorBackground.rotation, 
            Quaternion.AngleAxis(buttonHeading + 180, Vector3.up), 
            GameTime.deltaTime * 10);
    }

    public void Open(Vector3 mapPos) {
        if (!animator) animator = GetComponent<Animator>();
        isOpened = true;
        animator.SetTrigger("open");
        animator.SetBool("isOpened", isOpened);
        transform.position = mapPos;
        flashTimer = 0.0f;
        selectorShellTimer = 0.0f;
        ColorFader.AddFader(selectorBackground.gameObject, selectorBackgroundMat, Color.black, selectorBackgroundColor, 1.0f);
        ColorFader.AddFader(selectorButton.gameObject, selectorButtonMat, Color.clear, selectorButtonColor, 1.0f);
        ColorFader.AddFader(selectorIcon.gameObject, selectorIconMat, Color.black, Color.black, 0.5f);

        ColorFader.AddFader(selectorTileRenderer.gameObject, selectorTileMat, Color.clear, Color.black, 0.25f);
    }

    public void Close() {
        isOpened = false;
        animator.SetBool("isOpened", isOpened);
        selectorShellTimer = 0.0f;
        flashTimer = 0.0f;
        ColorFader.AddFader(selectorIcon.gameObject, selectorIconMat, selectorIconColor, Color.black, 0.5f);

    }

    public void OnPointerUp(PointerEventData eventData) {
        inputControl.PathAccepted(transform.position);
        Close();
    }

    public void OnPointerDown(PointerEventData eventData) {

    }
}
