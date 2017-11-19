using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CanvasInformation : MonoBehaviour {

	bool shouldIupdate = false; 

	public Text nameOfObject;

	public GameObject player;
	Quaternion  initialRotation;

    private Vector3 targetPoint;
    private Quaternion targetRotation;
	
	// Use this for initialization
	void Start () {
		player = GameObject.Find ("PlayerPrefab");
	}
	
	// Update is called once per frame
	void Update () {
		//only allow updating info if user is looking
		if (shouldIupdate) {
			//check to see what kind of parent my parent's parent is (my grand parend)
			//parent is a tower
			targetPoint = new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z) - transform.position;
        	targetRotation = Quaternion.LookRotation (-targetPoint, Vector3.up);
         	transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 4.0f);
		}

	}

	//player looking
	//update what I display
	public void setUpdateVar(bool newVal){
		shouldIupdate = newVal;
	}

	public void doABunchOfUpdating(bool lookedAtBefore){
		setUpdateVar (true);
		if (GetComponent<Transform> ().parent.parent.GetComponent<TowerScript> ()) {
			nameOfObject.text = GetComponent<Transform> ().parent.parent.name;
		}
		//parent is goal
		else if (GetComponent<Transform> ().parent.parent.GetComponent<GoalScript> ()) {
			nameOfObject.text = GetComponent<Transform> ().parent.parent.name;

			string gOName = "goal_info";
			if (!lookedAtBefore) {
				createNewInfoGO (gOName);
			} 
			transform.Find (gOName).GetComponent<Text> ().text = GameManager.lives + " out of " + GameManager.maxLives;		
		}
		//parent is enemy spawner thing
		else if (GetComponent<Transform> ().parent.parent.GetComponent<ProceduralSpawnScript> ()) {
			nameOfObject.text = "Portal";
			string gOName = "wave_info";
			Debug.Log ("PORTAL");
			if (!lookedAtBefore) {
				createNewInfoGO (gOName);
			} 
			transform.Find (gOName).GetComponent<Text> ().text = "W/E" + GetComponent<Transform> ().parent.parent.GetComponent<EnemySpawner> ().spawnIntervalOverride;
		}
		//parent is enemy
		else if (GetComponent<Transform> ().parent.parent.GetComponent<EnemyAI> ()) {
			nameOfObject.text = GetComponent<Transform> ().parent.parent.parent.name;
			string gOName = "enemy_info";
			if (!lookedAtBefore) {
				createNewInfoGO (gOName);
			} 
			transform.Find(gOName).GetComponent<Text>().text = "" + GetComponent<Transform> ().parent.parent.GetComponent<EnemyAI> ().health;
		}
			
	}

	void createNewInfoGO(string gOName){
		GameObject toAdd = new GameObject (gOName);
		toAdd.transform.SetParent (this.transform);
		toAdd.transform.localPosition = new Vector3 (0f, 0f, 0f);
		toAdd.transform.localRotation = new Quaternion ();
		toAdd.transform.localScale = new Vector3 (1f, 1f, 1f);
		Text theText = toAdd.AddComponent<Text> ();
		Font ArialFont = (Font)Resources.GetBuiltinResource(typeof(Font), "Arial.ttf");
		theText.font = ArialFont;
		theText.fontSize = 80;
		theText.alignment = TextAnchor.MiddleCenter;
		theText.verticalOverflow = VerticalWrapMode.Overflow;
		theText.horizontalOverflow = HorizontalWrapMode.Overflow;
	}

}
