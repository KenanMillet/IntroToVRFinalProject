using System.Collections;
using UnityEngine;

public class BallSpawner : MonoBehaviour
{
	public BallSpawnerGroup group;
	public Projectile baseThrowable;
	public ProjectileType currentThrowable { get; private set; }
	public float delay;

	void Start ()
	{
		float tmp = delay;
		delay = 0;
		Spawn();
		delay = tmp;
	}

	public void Spawn()
	{
		StartCoroutine(DelayThenSpawn());
	}

	IEnumerator DelayThenSpawn()
	{
		yield return new WaitForSeconds(delay);
		Projectile p = Instantiate(baseThrowable, transform.position, transform.rotation);
		p.blueprint = group.Next();
		p.spawner = this;
		currentThrowable = p.blueprint;
	}
}
