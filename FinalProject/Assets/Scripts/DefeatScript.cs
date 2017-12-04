using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class DefeatScript : MonoBehaviour {
    public Text defeatText;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        defeatText.text = "Super Space\nTower Defense\n\nHigh Score: " + GameManager.highScore + "\nScore: " + GameManager.score;

    }
}
