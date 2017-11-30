using System.Collections;
using UnityEngine;


public class EnemySpawner : MonoBehaviour
{
	public float spawnIntervalOverride = 0;

	public static float getTimeLeft{
		get { return 88; }
	}

	private static int _waveNo;
	public static int waveNo
	{
		get { return _waveNo; }
		set
		{
			_waveNo = value;
			foreach(EnemySpawner sp in FindObjectsOfType<EnemySpawner>()) sp.StartCoroutine(sp.Spawn());
		}
	}

	IEnumerator Spawn()
	{
		int currentWave = waveNo;
		ProceduralSpawnScript wavegen = GetComponent<ProceduralSpawnScript>();
		float healthPool = 0;
		foreach (GameObject enemy in wavegen.Wave(waveNo))
		{
			EnemyAI enemyStats = enemy.GetComponentInChildren<EnemyAI>();
			healthPool += enemyStats.health;
			GameObject e = Instantiate(enemy, transform.position, Quaternion.identity);
			e.name = enemy.name;
            //increment enemy speed depending on wave
            //TODO: make speed increase vary depending on enemy type
            e.GetComponentInChildren<EnemyAI>().Speed += Mathf.Min(3, Mathf.Floor(_waveNo/3));
			yield return new WaitForSeconds(Mathf.Max(spawnIntervalOverride, enemyStats.spawnInterval));
		}
		yield return new WaitForSeconds(wavegen.CooldownTime(waveNo, healthPool));
		if (currentWave == waveNo) ++waveNo;
	}
}
