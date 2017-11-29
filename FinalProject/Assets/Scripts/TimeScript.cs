using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeScript : MonoBehaviour {

	public GameObject enemySpawner;
	
	// Update is called once per frame
	void Update () {

		float time = EnemySpawner.getTimeLeft;

		//lets math
		int min = (int) (time/60);
		int sec = (int)(time % 60);
		transform.GetChild(0).GetChild(0).GetComponent<Text>().text = "Time Left: \n" + min + " " +sec;
	}
}
