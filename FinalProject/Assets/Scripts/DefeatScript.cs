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
        defeatText.text = "You've run out of lives D: \n High Score: " + GameManager.highScore + "\n Your Score: " + GameManager.score
            + "\n Press R to Restart.";

        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(0);
        }
    }
}
