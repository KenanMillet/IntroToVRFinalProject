using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{
	public float SpawnInterval;

	public List<GameObject> wave = new List<GameObject>();

	private static int _waveNo;
	public static int WaveNo
	{
		get { return _waveNo; }
		set
		{
			_waveNo = value;
			foreach(EnemySpawner sp in FindObjectsOfType<EnemySpawner>()) sp.StartCoroutine("Spawn");
		}
	}

	void Start ()
	{
	}
	
	void Update ()
	{
		
	}

	IEnumerator Spawn()
	{
		foreach (GameObject enemy in wave)
		{
				
			Instantiate(enemy, transform.position, Quaternion.identity);
			yield return new WaitForSeconds(SpawnInterval);
				
		}
	
	}
}
