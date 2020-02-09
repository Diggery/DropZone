using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class HelperDrone : MonoBehaviour {

  public class DroneTask {
    public static implicit operator bool(DroneTask value) { return value != null; }


    public Equipment.Type taskType;
    public Vector3 pos;
    public UnitControl target;
    public DroneTask(string type, Vector3 position, UnitControl recepient = null) {

      switch (type) {
        case "Ammo":
          taskType = Equipment.Type.Ammo;
          break;
        case "MedKit":
          taskType = Equipment.Type.MedKit;

          break;
        case "SmokeGrenades":
          taskType = Equipment.Type.SmokeGrendes;
          break;
        default:
          Debug.Log("Don't have any " + type + " to give");
          break;
      }

      pos = position;
      target = recepient;
    }
  }

  GameManager gameManager;
  NavMeshAgent navAgent;
  Transform launchPoint;
  float launchTimer = 1;
  float deliverRange = 5;
  int deliverCount = 0;
  Vector3 homePos;

  public bool IsMoving { get; set; }
  public bool IsBusy {
    get { return currentTask; }
  }

  Queue<DroneTask> taskQueue = new Queue<DroneTask>();
  DroneTask currentTask;

  bool IsPathComplete {
    get {
      bool isComplete;
      if (currentTask) {
        isComplete = navAgent.hasPath && Vector3.Distance(currentTask.pos, transform.position) <= deliverRange;
      } else {
        isComplete = navAgent.hasPath && Vector3.Distance(navAgent.destination, transform.position) <= navAgent.stoppingDistance;
      }
      return isComplete;
    }
  }
  bool CanDeliver {
    get {
      return currentTask && launchTimer < 0 && deliverCount < 3 && Vector3.Distance(currentTask.pos, transform.position) <= deliverRange;
    }
  }

  void Start() {
    StartCoroutine(Init());
  }

  public IEnumerator Init() {
    yield return new WaitForSeconds(0.5f);
    homePos = transform.position;
    launchPoint = transform.Find("LaunchPoint");
    navAgent = gameObject.GetComponent<NavMeshAgent>();
    gameManager = GameManager.Instance;
    gameManager.AddDrone(this);
  }

  void Update() {
    if (IsMoving && IsPathComplete) MoveComplete();
    if (currentTask && currentTask.target.IsDead) NextTask();
    if (!IsBusy && taskQueue.Count > 0) NextTask();

    if (launchTimer > 0) launchTimer -= Time.deltaTime;

    if (CanDeliver) LaunchEquipment(currentTask.taskType);
  }

  public void AddTask(DroneTask task, UnitControl requestor) {
    Debug.Log("Task Requested: deliver " + task.taskType.ToString() + " to " + requestor.name);
    taskQueue.Enqueue(task);
  }

  void NextTask() {
    if (taskQueue.Count <= 0) {
      currentTask = null;
      MoveTo(homePos);
      return;
    }
    currentTask = taskQueue.Dequeue();
    MoveTo(currentTask.pos);
  }

  public void MoveTo(Vector3 movePos) {
    if (Vector3.Distance(transform.position, movePos) < 0.5f) return;
    navAgent.isStopped = false;

    IsMoving = true;
    navAgent.SetDestination(movePos);
  }

  void MoveComplete() {
    navAgent.isStopped = true;
    IsMoving = false;
  }

  void LaunchEquipment(Equipment.Type type) {
    string equipmentType = "";
    switch (type) {
      case Equipment.Type.Ammo:
        equipmentType = "Magazine";
        break;
      case Equipment.Type.MedKit:
        equipmentType = "Medkit";

        break;
      case Equipment.Type.SmokeGrendes:
        equipmentType = "SmokeGrendes";
        break;
      default:
        Debug.Log("Don't have any " + type + " to give");
        break;
    }
    GameObject equipment = Instantiate(gameManager.GetPrefab(equipmentType), launchPoint.position, Quaternion.identity);
    equipment.GetComponent<Equipment>().Init(currentTask.target);
    Vector3 force = Utils.CalculateBestTrajectory(launchPoint.position, currentTask.target.transform.position, 1);
    Rigidbody rbody = equipment.GetComponent<Rigidbody>();
    rbody.AddForce(force, ForceMode.VelocityChange);
    rbody.AddTorque(new Vector3(Random.value - 0.5f, Random.value - 0.5f, Random.value - 0.5f) * 10, ForceMode.VelocityChange);
    deliverCount++;
    launchTimer = 1;

    if (deliverCount >= 3) {
      deliverCount = 0;
      NextTask();
    }
  }
}
