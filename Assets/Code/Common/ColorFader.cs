using UnityEngine;
using System.Collections;

public class ColorFader : MonoBehaviour {

    Material targetMat;
    float fadeTime;
    float timer;
    Color startColor;
    Color endColor;

    static public void AddFader(GameObject _targetObj, Material _targetMat, Color _startColor, Color _endColor, float _fadeTime) {
        if (!_targetMat)
            Debug.Log("Target material is null");
        
        if (!_targetObj)
            Debug.Log("Target object is null");

        ColorFader fader = _targetObj.GetComponent<ColorFader>();
        if (!fader) fader = _targetObj.AddComponent<ColorFader>();

        _targetMat.color = _startColor;
        fader.SetFader(_targetMat, _startColor, _endColor, _fadeTime);
    }

    static public void AddFader(GameObject _targetObj, Material _targetMat, Color _endColor, float _fadeTime) {
        Color _startColor = _targetMat.color;
        AddFader(_targetObj, _targetMat, _startColor, _endColor, _fadeTime);
    }

    void Start() {

    }

    void Update() {
        timer += Time.deltaTime;
        float amount = Mathf.SmoothStep(0.0f, 1.0f, timer / fadeTime);
        targetMat.color = Color.Lerp(startColor, endColor, amount);

        if (timer > fadeTime) Destroy(this);
    }

    public void SetFader(Material _targetMat, Color _startColor, Color _endColor, float _fadeTime) {

        if (!_targetMat)
            Debug.Log("Target material is null");
        
        targetMat = _targetMat;

        timer = 0.0f;
        fadeTime = _fadeTime;
        startColor = _startColor;
        endColor = _endColor;
    }
}
