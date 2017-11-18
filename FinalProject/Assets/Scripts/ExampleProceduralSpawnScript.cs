using UnityEngine;

public class ExampleProceduralSpawnScript : ProceduralSpawnScript
{
	public float BaseCooldownTime = 30.0f;
	public float HealthPoolModifier = 0.5f;
	public override float CooldownTime(float waveNo, float healthPool)
	{
		Debug.Log("Cooldown time");
		return Mathf.Max(BaseCooldownTime / Mathf.Log(waveNo+1,2), HealthPoolModifier * healthPool);
	}
	public override GameObject[] Wave(int waveNo)
	{
		Debug.Log("Wave " + waveNo);
		GameObject[] wave = new GameObject[waveNo];
		for (int i = 0; i < wave.Length; i++)
		{
			int enemyIndex = Random.Range(0, enemyTypes.Length);
			wave[i] = enemyTypes[enemyIndex];
		}
		return wave;
	}
}
