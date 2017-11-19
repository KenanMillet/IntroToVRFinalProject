using UnityEngine;

public abstract class ProceduralSpawnScript : MonoBehaviour
{
	[SerializeField]
	protected GameObject[] enemyTypes;
	public abstract float CooldownTime(float waveNo, float healthPool);
	public abstract GameObject[] Wave(int waveNo);
}
