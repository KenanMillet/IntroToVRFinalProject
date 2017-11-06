using System;
using System.Collections;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{
	public float SpawnInterval;

	[Serializable]
	public class Wave
	{
		[Serializable]
		public class Group
		{
			public int Quantity;
			public GameObject Type;
		}
		public Group[] enemies;
	}
	public Wave[] waves;

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
		StartCoroutine("Spawn");
	}
	
	void Update ()
	{
		
	}

	IEnumerator Spawn()
	{
		if(WaveNo < waves.Length)
		{
			int n = WaveNo;
			foreach (Wave.Group group in waves[n].enemies)
			{
				for (int i = 0; i < group.Quantity; ++i)
				{
					Instantiate(group.Type, transform.position, Quaternion.identity);
					yield return new WaitForSeconds(SpawnInterval);
				}
			}
			yield return new WaitForSeconds(5);
			WaveNo++;
		}
	}
}
