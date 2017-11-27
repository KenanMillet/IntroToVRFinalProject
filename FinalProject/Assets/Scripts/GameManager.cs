using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    public static float scoreMult = 1;
	public static int maxLives = 10;
    public static int lives = 10;
    public static int score = 0;
    public static int highScore;
    public static int consecutiveKills = 0;
	public static Dictionary<int, List<PathPoint>> paths = new Dictionary<int, List<PathPoint>>();
	private static GameManager instance;

	public enum State
	{
		MENU,
		GAME
	};
	static State state = State.MENU;

	private void Awake()
	{
		DontDestroyOnLoad(this);
	}

	void Update () {
		if (instance == null) instance = this;
		else if (instance != this) Destroy(gameObject);

        if (Input.GetKeyDown(KeyCode.R))
        {
			if (state == State.GAME) EndGame();
			else StartGame();
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
            EndGame();
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

    public static void EndGame()
    {
        if (highScore < score) highScore = score;
		state = State.MENU;
		SceneManager.LoadScene("Menu");
	}

	public static void StartGame()
	{
		RefreshPathPoints();
		EnemySpawner.waveNo = 1;
		scoreMult = 1;
		lives = 10;
		consecutiveKills = 0;
		score = 0;
		state = State.GAME;
		SceneManager.LoadScene("Main");
	}
}
