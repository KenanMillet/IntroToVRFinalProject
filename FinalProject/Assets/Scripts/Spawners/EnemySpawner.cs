using System.Collections;
using UnityEngine;
using System.Linq;

public class EnemySpawner : MonoBehaviour
{
	public float spawnIntervalOverride = 0;
	private float cooldownTime, spawnTime;
	private static float waveStartTime;
	private static int spawningQueue;
	public AnimationCurve proceduralScriptDistribution;

	public static float waveDuration { get; private set; }

	public static float timeRemainingInWave
	{
		get { return Mathf.Max(0, waveDuration - (Time.time - waveStartTime)); }
	}
	

	private static int _waveNo;
	public static int waveNo
	{
		get { return _waveNo; }
		set
		{
			_waveNo = value;
			EnemySpawner[] spawners = FindObjectsOfType<EnemySpawner>();
			foreach (EnemySpawner sp in spawners) sp.StartCoroutine(sp.Spawn());
			waveDuration = Mathf.Max(spawners.Select(x => x.cooldownTime + x.spawnTime).ToArray());
			waveStartTime = Time.time;
			spawningQueue = spawners.Length;
		}
	}

	IEnumerator Spawn()
	{
		ProceduralSpawnScript[] scripts = GetComponents<ProceduralSpawnScript>();
		float selection = Mathf.Clamp01(proceduralScriptDistribution.Evaluate(Random.value)) * scripts.Length;
		ProceduralSpawnScript wavegen = scripts[Mathf.RoundToInt(selection)];
		GameObject[] wave = wavegen.Wave(waveNo);
		float healthPool = 0;
		spawnTime = 0;
		foreach (GameObject enemy in wave)
		{
			EnemyAI enemyStats = enemy.GetComponentInChildren<EnemyAI>();
			healthPool += enemyStats.health;
			spawnTime += Mathf.Max(spawnIntervalOverride, enemyStats.spawnInterval);
		}
		spawnTime = Mathf.Ceil(spawnTime);
		cooldownTime = Mathf.Ceil(wavegen.CooldownTime(waveNo, healthPool));
		int currentWave = waveNo;
		yield return null;

		foreach (GameObject enemy in wave)
		{
			EnemyAI enemyStats = enemy.GetComponentInChildren<EnemyAI>();
			
			GameObject e = Instantiate(enemy, transform.position, Quaternion.identity);
			e.name = enemy.name;
            //increment enemy speed depending on wave
            //TODO: make speed increase vary depending on enemy type
            e.GetComponentInChildren<EnemyAI>().Speed += Mathf.Min(3, Mathf.Floor(_waveNo/3));
			yield return new WaitForSeconds(Mathf.Max(spawnIntervalOverride, enemyStats.spawnInterval));
		}
		while (timeRemainingInWave > 0) yield return null;
		if (currentWave == waveNo)
		{
			if (--spawningQueue == 0) ++waveNo;
		}
	}
}
