using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    public static float scoreMult = 1;
    public static int lives = 10;
    public static int score = 0;
    public static int highScore;
    public static int consecutiveKills = 0;
	
	void Update () {
        if (Input.GetKeyDown(KeyCode.R))
        {
            Restart();
        }

        if(consecutiveKills >= 3)
        {
            scoreMult++;
            consecutiveKills = 0;
            Debug.Log("3 kills in a row without losing lives. Score multipler is now " + scoreMult);
        }

        if (lives <= 0)
        {
            Debug.Log("Lives depleted, restarting.");
            Restart();
        }
	}

    public static void Restart()
    {
        if (highScore < score) highScore = score;
        scoreMult = 1;
        lives = 10;
        consecutiveKills = 0;
        score = 0;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);      
    }
}
