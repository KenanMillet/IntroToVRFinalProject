using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeScript : MonoBehaviour {
	
	// Update is called once per frame
	void Update () {

		float time = EnemySpawner.timeRemainingInWave;

		//lets math
		int min = (int) (time/60);
		int sec = (int)(time % 60);
		transform.GetChild(0).GetChild(0).GetComponent<Text>().text = "NEXT WAVE\n" + min + " : " +sec;
	}
}
