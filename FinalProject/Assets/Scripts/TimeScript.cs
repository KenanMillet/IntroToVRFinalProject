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
		int sec = Mathf.CeilToInt(time % 60);
		if (sec == 60)
		{
			++min;
			sec = 0;
		}
		transform.GetChild(0).GetChild(0).GetComponent<Text>().text = "NEXT WAVE\n" + (min < 10 ? "0" : "") + min + " : " + (sec < 10 ? "0" : "") + sec;
	}
}
