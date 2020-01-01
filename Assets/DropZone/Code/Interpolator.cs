using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interpolator : MonoBehaviour {

  [System.Serializable]
  public class LerpData {
    public bool IsFloat { get; set; } = true;

    public float duration = 1.0f;
    public bool useGameTime = false;
    public OnTick onTick;
    public OnTickVector onTickVector;
    public OnFinish onFinish;
    public AnimationCurve curve;
    public GameObject container;

    protected float startFloat;
    public float StartFloat {
      get { return startFloat; }
    }
    protected float endFloat;
    public float EndFloat {
      get { return endFloat; }
    }
    protected Vector4 startVector;
    public Vector4 StartVector {
      get { return startVector; }
    }
    protected Vector4 endVector;
    public Vector4 EndVector {
      get { return endVector; }
    }

  }

  [System.Serializable]
  public class LerpFloat : LerpData {
    public float startValue = 0.0f;
    public float endValue = 1.0f;
    public void SetValues() {
      IsFloat = true;
      startFloat = startValue;
      endFloat = endValue;
    }
  }

  [System.Serializable]
  public class LerpVector : LerpData {
    public Vector4 startValue = Vector4.zero;
    public Vector4 endValue = Vector4.one;
    public void SetValues() {
      IsFloat = false;
      startVector = startValue;
      endVector = endValue;
    }
  }

  [System.Serializable]
  public class LerpColor : LerpData {
    public Color startValue = Color.black;
    public Color endValue = Color.white;
    public void SetValues() {
      IsFloat = false;
      startVector = startValue;
      endVector = endValue;
    }
  }

  public delegate void OnTick(float amount);
  public delegate void OnTickVector(Vector4 amount);
  public delegate void OnFinish(bool isReversed);

  OnTick onTick;
  OnTickVector onTickVector;
  OnFinish onFinish;
  float timer = 0.0f;

  bool useGameTime = false;
  bool keepContainer = false;

  bool isFloat = true;
  float startFloat = 0.0f;
  float endFloat = 1.0f;
  Vector4 startVector = Vector4.zero;
  Vector4 endVector = Vector4.one;

  float duration = 1.0f;
  AnimationCurve curve;
  bool reversed = false;

  public bool Reversed {
    get {
      return reversed;
    }

    set {
      if (reversed != value) Reverse();
    }
  }

  public static Interpolator Start(LerpFloat data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, false);
  }

  public static Interpolator Start(LerpVector data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, false);
  }

  public static Interpolator Start(LerpColor data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, false);
  }

  public static Interpolator Reverse(LerpFloat data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, true);
  }

  public static Interpolator Reverse(LerpVector data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, true);
  }

  public static Interpolator Reverse(LerpColor data, string lerpName = "Unnamed") {
    data.SetValues();
    return Start(data, lerpName, true);
  }

  static Interpolator Start(LerpData data, string lerpName, bool reversed) {
    GameObject container = data.container;
    bool shouldKeep = true;
    if (!container) {
      container = new GameObject("Interpolator-" + lerpName);
      shouldKeep = false;
    } 

    Interpolator interpolator = container.AddComponent<Interpolator>();

    interpolator.isFloat = data.IsFloat;
    interpolator.startFloat = data.StartFloat;
    interpolator.endFloat = data.EndFloat;
    interpolator.startVector = data.StartVector;
    interpolator.endVector = data.EndVector;

    interpolator.duration = data.duration;
    interpolator.useGameTime = data.useGameTime;
    interpolator.onTick = data.onTick;
    interpolator.onTickVector = data.onTickVector;
    interpolator.onFinish = data.onFinish;

    interpolator.keepContainer = shouldKeep;

    if (data.curve == null || data.curve.keys.Length <= 1) {
      AnimationCurve newCurve = new AnimationCurve();
      Keyframe startKey = new Keyframe(0, 0);
      newCurve.AddKey(startKey);
      Keyframe endKey = new Keyframe(1, 1);
      newCurve.AddKey(endKey);
      interpolator.curve = newCurve;
    } else {
      interpolator.curve = data.curve;
    }

    if (reversed) {
      interpolator.timer = 1.0f;
      interpolator.reversed = true;
    }

    return interpolator;
  }

  private void Start() {
  }

  public void Reverse() {
    reversed = !reversed;
  }

  public void Cancel() {
    Destroy(gameObject);
  }

  private void Update() {
    timer += (useGameTime ? GameTime.DeltaTime : Time.deltaTime) / (reversed ? -duration : duration);

    if (isFloat && onTick != null) {
      onTick.Invoke(GetFloat(timer));
    }

    if (!isFloat && onTickVector != null) {
      onTickVector.Invoke(GetVector(timer));
    }

    if (timer > 1.0f || timer < 0.0f) {
      if (onFinish != null)
        onFinish.Invoke(reversed);

      if (keepContainer) {
        Destroy(this);
      } else {
        Destroy(gameObject);
      }
    }
  }

  float GetFloat(float sampleTime) {
    float amount = curve != null ? curve.Evaluate(sampleTime) : sampleTime;
    return Mathf.Lerp(startFloat, endFloat, amount);
  }

  Vector4 GetVector(float sampleTime) {
    float amount = curve != null ? curve.Evaluate(sampleTime) : sampleTime;
    return Vector4.Lerp(startVector, endVector, amount);
  }
}
