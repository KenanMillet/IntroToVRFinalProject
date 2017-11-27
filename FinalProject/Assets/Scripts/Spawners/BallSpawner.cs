using System.Collections;
using UnityEngine;

public class BallSpawner : MonoBehaviour
{
	public BallSpawnerGroup group;
	public Projectile baseThrowable;
	public float delay;
	private float elapsed;

	void Start ()
	{
		float tmp = delay;
		delay = 0;
		delay = tmp;
		elapsed = 0;
	}

	private void Update()
	{
		if (!GetComponentInChildren<Projectile>())
		{
			elapsed += Time.deltaTime;
		}
		if (elapsed >= delay)
		{
			Spawn();
			elapsed = 0;
		}
	}

	public void Spawn()
	{
		Projectile p = Instantiate(baseThrowable, transform.position, transform.rotation, transform);
		p.blueprint = group.Next();
		p.spawner = this;
	}
}
