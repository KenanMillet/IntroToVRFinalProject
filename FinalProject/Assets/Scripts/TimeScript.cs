using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeScript : MonoBehaviour {

	Vector2 size;

	private void Start()
	{
		size = transform.GetChild(0).GetChild(1).GetChild(0).GetComponent<RectTransform>().sizeDelta;
	}
	// Update is called once per frame
	void Update() {

		float time = EnemySpawner.timeRemainingInWave;

		//lets math
		int min = (int)(time / 60);
		int sec = (int)(time % 60);
		int ms = (int)((time - (int)time) * 1000);
		Transform text = transform.GetChild(0).GetChild(1);
		if (min == 0 && sec <= 5)
		{
			Transform secText = text.GetChild(0);
			Transform msText = text.GetChild(1);
			msText.gameObject.SetActive(true);
			secText.GetComponent<Text>().alignment = TextAnchor.UpperRight;
			secText.GetComponent<RectTransform>().sizeDelta = new Vector2(size.x / 2, size.y);
			secText.GetComponent<Text>().text = "" + sec;
			msText.GetComponent<Text>().text = (ms < 100 ? " 0" : " ") + (ms < 10 ? "0" : "") + ms;
		}
		else
		{
			text.GetChild(0).GetComponent<RectTransform>().sizeDelta = size;
			text.GetChild(1).gameObject.SetActive(false);
			text.GetChild(0).GetComponent<Text>().alignment = TextAnchor.UpperCenter;
			text.GetChild(0).GetComponent<Text>().text = (min < 10 ? "0" : "") + min + " : " + (sec < 10 ? "0" : "") + sec;
		}
	}
}
