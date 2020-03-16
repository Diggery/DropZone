using UnityEngine;
using UnityEngine.UI;

public class Interactable : MonoBehaviour {

  protected GameObject UI;
  protected Transform viewCamera;
  protected UnitControl currentUser;
  RectTransform canvas;
  Interpolator.LerpVector introAnim;

  protected Image loadingBar;
  protected float loadingTime = 1f;
  protected float loadingTimer = 0;

  public bool IsContainer { get; set; }

  protected bool isOpen = false;
  public virtual bool IsOpen {
    get { return isOpen; }
    set {
      isOpen = value;
      UI.SetActive(value);
      if (isOpen) Interpolator.Start(introAnim);
    }
  }

  public Interactable Init(string uiPrefabName) {
    viewCamera = Camera.main.transform;
    GameObject uiPrefab = GameManager.Instance.GetPrefab(uiPrefabName);
    UI = Instantiate(uiPrefab, transform);
    UI.transform.localPosition = Vector3.zero;
    loadingBar = UI.transform.Find("Button/LoadingBar").GetComponent<Image>();
    loadingBar.enabled = false;

    canvas = UI.GetComponent<RectTransform>();
    introAnim = new Interpolator.LerpVector();
    Vector4 introStart = canvas.sizeDelta;
    Vector4 introEnd = new Vector4(introStart.x, introStart.y * 3, 0, 0);
    introAnim.startValue = introStart;
    introAnim.endValue = introEnd;
    introAnim.onTickVector = (value) => canvas.sizeDelta = value;;

    UI.SetActive(false);

    return this;
  }

  void Update() {
    if (!UI) return;
    UI.transform.rotation = viewCamera.rotation;
    if (currentUser && currentUser.IsInteracting && loadingTimer > 0) {
      loadingTimer -= Time.deltaTime;
      loadingBar.fillAmount = loadingTimer / loadingTime;
      if (loadingTimer < 0) LoadingComplete();
    }
  }

  public virtual bool CheckStatus(UnitControl user, Vector3 pos) {
    return (Vector3.Distance(transform.position, pos) < 1.25f);
  } 

  public virtual void StartInteracting(UnitControl user) {
    IsOpen = true;
    currentUser = user;
    user.CurrentInteractable = this;
  }

  protected virtual void LoadingComplete() { }
  public virtual void FinishInteracting(UnitControl user) {
    IsOpen = false;
  }
}