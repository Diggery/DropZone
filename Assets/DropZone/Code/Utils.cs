using UnityEngine;

static public class Utils {
  static public Vector3 CalculateBestTrajectory(Vector3 origin, Vector3 target, float timeToTarget) {
    // calculate vectors
    Vector3 toTarget = target - origin;
    Vector3 toTargetXZ = toTarget;
    toTargetXZ.y = 0;

    // calculate xz and y
    float y = toTarget.y;
    float xz = toTargetXZ.magnitude;

    // calculate starting speeds for xz and y. Physics forumulase deltaX = v0 * t + 1/2 * a * t * t
    // where a is "-gravity" but only on the y plane, and a is 0 in xz plane.
    // so xz = v0xz * t => v0xz = xz / t
    // and y = v0y * t - 1/2 * gravity * t * t => v0y * t = y + 1/2 * gravity * t * t => v0y = y / t + 1/2 * gravity * t
    float t = timeToTarget;
    float v0y = y / t + 0.5f * Physics.gravity.magnitude * t;
    float v0xz = xz / t;

    // create result vector for calculated starting speeds
    Vector3 result = toTargetXZ.normalized;        // get direction of xz but with magnitude 1
    result *= v0xz;                                // set magnitude of xz to v0xz (starting speed in xz plane)
    result.y = v0y;                                // set y to v0y (starting speed of y plane)

    return result;
  }

  static public Vector3 BallisticVel(Vector3 launchPoint, Vector3 targetPoint) {
    Vector3 dir = targetPoint - launchPoint; // get target direction
    dir.y = 0;  // retain only the horizontal direction
    float dist = dir.magnitude;  // get horizontal distance
    dir.y = dist;  // set elevation to 45 degrees
    float vel = Mathf.Sqrt(dist * Physics.gravity.magnitude);
    return vel * dir.normalized;  // returns Vector3 velocity
  }
}
