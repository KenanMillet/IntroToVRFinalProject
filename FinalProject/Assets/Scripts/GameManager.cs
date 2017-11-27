using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {
    public static float scoreMult = 1;
	public static int maxLives = 15;
    public static int lives = 15;
    public static int score = 0;
    public static int highScore;
    public static int consecutiveKills = 0;
	public static Dictionary<int, List<PathPoint>> paths = new Dictionary<int, List<PathPoint>>();

	private void Awake()
	{
        scoreMult = 1;
        lives = maxLives;
        consecutiveKills = 0;
        score = 0;
        RefreshPathPoints();
		EnemySpawner.waveNo = 1;
	}

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
            if (highScore < score) highScore = score;
            SceneManager.LoadScene(1);
            
        }
	}

	public static void RefreshPathPoints()
	{
		paths = new Dictionary<int, List<PathPoint>>();
		foreach (PathPoint p in FindObjectsOfType<PathPoint>())
		{
			try
			{
				paths[p.Group].Add(p);
			} catch
			{
				paths[p.Group] = new List<PathPoint>();
				paths[p.Group].Add(p);
			}
		}
		foreach (var k in paths.Keys)
		{
			paths[k].Sort((a, b) => a.Order.CompareTo(b.Order));
		}
	}

    public static void Restart()
    {
        if (highScore < score) highScore = score;
        scoreMult = 1;
        lives = maxLives;
        consecutiveKills = 0;
        score = 0;
		SceneManager.LoadScene(0);
	}
}
