using System.Collections.Generic;
using UnityEngine;

public sealed class RestoreAnimationState : MonoBehaviour {
  private Animator animator;

  private Dictionary<int, AnimatorStateInfo> animStateInfo = new Dictionary<int, AnimatorStateInfo>();
  private Dictionary<AnimatorControllerParameter, object> parameterValues = new Dictionary<AnimatorControllerParameter, object>();

  public void RehydrateAnimator() {

  }

  public RestoreAnimationState Init() {
    animator = GetComponent<Animator>();
    return this;
  }

  public void Restore() {
    if (!animator)  return;

    foreach (KeyValuePair<int, AnimatorStateInfo> layerAndStateInfo in animStateInfo) {
      int layer = layerAndStateInfo.Key;
      AnimatorStateInfo stateInfo = layerAndStateInfo.Value;
      animator.Play(stateInfo.shortNameHash, layer, stateInfo.normalizedTime);
    }

    foreach (KeyValuePair<AnimatorControllerParameter, object> parameterAndValue in parameterValues) {
      AnimatorControllerParameter parameter = parameterAndValue.Key;
      object value = parameterAndValue.Value;
      switch (parameter.type) {
        case AnimatorControllerParameterType.Bool:
          animator.SetBool(parameter.name, (bool) value);
          break;
        case AnimatorControllerParameterType.Float:
          animator.SetFloat(parameter.name, (float) value);
          break;
        case AnimatorControllerParameterType.Int:
          animator.SetInteger(parameter.name, (int) value);
          break;
        case AnimatorControllerParameterType.Trigger:
          if ((bool) value)  animator.SetTrigger(parameter.name);
          break;
        default:
          continue;
      }
    }
    Reset();
  }

  private void Save() {
    Reset();
    if (!animator) return;

    for (int i = 0; i < animator.layerCount; ++i) {
      animStateInfo[i] = animator.GetCurrentAnimatorStateInfo(i);
    }

    foreach (AnimatorControllerParameter parameter in animator.parameters) {
      object value;
      switch (parameter.type) {
        case AnimatorControllerParameterType.Bool:
        case AnimatorControllerParameterType.Trigger:
          value = animator.GetBool(parameter.name);
          break;
        case AnimatorControllerParameterType.Float:
          value = animator.GetFloat(parameter.name);
          break;
        case AnimatorControllerParameterType.Int:
          value = animator.GetInteger(parameter.name);
          break;
        default:
          continue;
      }
      parameterValues[parameter] = value;
    }
  }

  private void Reset() {
    animStateInfo.Clear();
    parameterValues.Clear();
  }
}