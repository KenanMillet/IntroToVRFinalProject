using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class EnemySpawner : MonoBehaviour
{
	public float spawnIntervalOverride = 0;

	private static int _waveNo;
	public static int waveNo
	{
		get { return _waveNo; }
		set
		{
			_waveNo = value;
			foreach(EnemySpawner sp in FindObjectsOfType<EnemySpawner>()) sp.StartCoroutine("Spawn");
		}
	}

	IEnumerator Spawn()
	{
		ProceduralSpawnScript wavegen = GetComponent<ProceduralSpawnScript>();
		float healthPool = 0;
		foreach (GameObject enemy in wavegen.Wave(waveNo))
		{
			EnemyAI enemyStats = enemy.GetComponentInChildren<EnemyAI>();
			healthPool += enemyStats.health;
			Instantiate(enemy, transform.position, Quaternion.identity);
			yield return new WaitForSeconds(Mathf.Max(spawnIntervalOverride, enemyStats.spawnInterval));
		}
		yield return new WaitForSeconds(wavegen.CooldownTime(waveNo, healthPool));
		++waveNo;
	}
}
