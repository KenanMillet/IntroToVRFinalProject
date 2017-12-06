using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExplosionEffect : MonoBehaviour
{
	[HideInInspector]
	public float duration = 0.2f;
	[HideInInspector]
	public float radius = 3;
	[HideInInspector]
	public float damage = 2;
	private float elapsed;

	void Start ()
	{
		transform.localScale = Vector3.zero;
		elapsed = 0;
	}
	
	void Update ()
	{
		elapsed += Time.deltaTime;
		transform.localScale = Vector3.Lerp(Vector3.zero, Vector3.one * radius * 2, elapsed / duration);
		if (elapsed >= duration) Destroy(gameObject);
	}

	protected void OnTriggerEnter(Collider collider)
	{
		EnemyAI enemy = collider.GetComponent<EnemyAI>();
		if (enemy) enemy.damage(damage);
	}
}
