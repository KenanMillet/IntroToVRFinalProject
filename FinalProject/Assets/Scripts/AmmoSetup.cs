using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AmmoSetup : MonoBehaviour {

    public Transform ballPrefab;
    public Transform[] ballSpawns;
    
    // [Range(0, 1)] public float randomOffset;
    public float timeBetweenBalls;

	// Use this for initialization
	void Start () {
        for(int i = 0; i < ballSpawns.Length; i++)
        {
            StartCoroutine(createBalls(ballSpawns[i]));
        }
	}

    IEnumerator createBalls(Transform ammoSpawner)
    {
        int count = ammoSpawner.childCount;
        for (int j = 0; j < count; j++)
        {
            Transform newBall = Instantiate(ballPrefab, ammoSpawner.GetChild(j).position, Quaternion.identity);
            yield return new WaitForSeconds(timeBetweenBalls);
        }
    }
}
