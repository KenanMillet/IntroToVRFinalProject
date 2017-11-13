using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProceduralSpawner : MonoBehaviour {

    public GameObject[] possibleEnemies = new GameObject[3];
    public GameObject[] incomingWave;
    public int wave = 0;
    public int enemiesPerWave = 1;
    public float spawnInterval = 1.3f;
    public float timeBetweenWaves;
	// Use this for initialization
	void Start () {
        timeBetweenWaves = spawnInterval * enemiesPerWave + 10;
    }

    // Update is called once per frame
    void Update () {
        enemiesPerWave = 1 + (wave * 2);
        timeBetweenWaves -= Time.deltaTime;

        if(incomingWave == null || timeBetweenWaves <= 0 || waveIsEmpty())
        {
            spawn();
            timeBetweenWaves = spawnInterval * enemiesPerWave + (10 - wave);
        }
	}

    bool waveIsEmpty()
    {
        foreach(GameObject enemy in incomingWave)
        {
            if (enemy != null) return false;
        }

        return true;
    }


    void spawn()
    {
        incomingWave = new GameObject[enemiesPerWave];
        for (int i = 0; i < incomingWave.Length; i++)
        {
            int enemyIndex = Random.Range(0, 3);
            incomingWave[i] = possibleEnemies[enemyIndex];
            
        }

        foreach(GameObject enemy in incomingWave)
        {
            GetComponent<EnemySpawner>().wave.Add(enemy);
        }
        wave++;
        EnemySpawner.WaveNo++;
    }
}
