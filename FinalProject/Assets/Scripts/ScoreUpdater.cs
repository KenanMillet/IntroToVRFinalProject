using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ScoreUpdater : MonoBehaviour {

    public Text score;
    public Text multiplier;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        score.text = "Score: " + GameManager.score;
        multiplier.text = "Multiplier: x" + GameManager.scoreMult;
	}
}
