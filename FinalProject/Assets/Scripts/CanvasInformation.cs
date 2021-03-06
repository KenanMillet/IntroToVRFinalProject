﻿using UnityEngine;
using UnityEngine.UI;

public class CanvasInformation : MonoBehaviour
{
	public Material textMaterial;

	public Font font;

	public bool lookedAtBefore { get; set; }

	public Text nameOfObject;

	public GameObject player;
	Quaternion initialRotation;

	private Vector3 targetPoint;
	private Quaternion targetRotation;

	// Use this for initialization
	void Start()
	{
		player = GameObject.Find("PlayerPrefab");
		lookedAtBefore = false;
	}

	private void Update()
	{
		if(GetComponentInParent<EnemyAI>() == null) doABunchOfUpdating();
	}

	void updateData()
	{
		//check to see what kind of parent my parent's parent is (my grand parend)
		//parent is a tower
		targetPoint = new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z) - transform.position;
		targetRotation = Quaternion.LookRotation(-targetPoint, Vector3.up);
		transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 4.0f);
	}

	public void doABunchOfUpdating()
	{
		updateData();

		if (GetComponentInParent<TowerScript>())
		{

		}
		//parent is goal
		else if (GetComponentInParent<GoalScript>())
		{
			nameOfObject.text = transform.root.name;
			string gOName = "goal_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.GetChild(0).Find(gOName).GetComponent<Text>().text = GameManager.lives + " out of " + GameManager.maxLives;
		}
		//parent is enemy spawner thing
		else if (transform.root.GetComponentInChildren<ProceduralSpawnScript>())
		{
			nameOfObject.text = transform.root.name;
			string gOName = "wave_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.GetChild(0).Find(gOName).GetComponent<Text>().text = "Wave " + EnemySpawner.waveNo;
		}
		//parent is enemy
		else if (GetComponentInParent<EnemyAI>())
		{
			string gOName = "enemy_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.Find(gOName).GetComponent<Text>().text = "" + Mathf.Ceil(GetComponentInParent<EnemyAI>().health);
		}
		lookedAtBefore = true;
	}

	void createNewInfoGO(string gOName)
	{
		GameObject toAdd = new GameObject(gOName);
		if (gOName == "enemy_info") {
			toAdd.transform.SetParent (this.transform);
		} else {
			toAdd.transform.SetParent (this.transform.GetChild (0));
		}
		toAdd.transform.localPosition = new Vector3(0f, 0f, 0f);
		toAdd.transform.localRotation = new Quaternion();
		toAdd.transform.localScale = new Vector3(1f, 1f, 1f);
		Text theText = toAdd.AddComponent<Text>();
		theText.font = font;
		theText.fontSize = 100;
		theText.alignment = TextAnchor.MiddleCenter;
		theText.verticalOverflow = VerticalWrapMode.Overflow;
		theText.horizontalOverflow = HorizontalWrapMode.Overflow;
		theText.material = textMaterial;
		theText.color = Color.cyan;
	}

}
