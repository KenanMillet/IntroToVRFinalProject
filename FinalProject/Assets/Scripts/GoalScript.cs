using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoalScript : MonoBehaviour
{
	Renderer[] renderers;
	[SerializeField]
	Gradient healthColors;
    [SerializeField]
    Gradient portalColors;
    [SerializeField]
    ParticleSystem portal;
    ParticleSystem.MainModule main;

	AudioSource alert;

	int enemyCount;

	void Start ()
	{
		renderers = GetComponentsInChildren<Renderer>();
        main = portal.main;
		enemyCount = 0;
		alert = GetComponent<AudioSource>();
	}
	
	void Update ()
	{
		foreach(Renderer renderer in renderers) {
			renderer.material.color = healthColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives);
            renderer.material.SetColor("_EmissionColor", healthColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives));
        }
        main.startColor = portalColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives);
    }

	private void OnTriggerEnter(Collider other)
	{
		EnemyAI enemy = other.transform.root.GetComponentInChildren<EnemyAI>();
		if (enemy == null) return;
		++enemyCount;
		if (!alert.isPlaying) alert.Play();

		enemy.onDeath += () =>
		{
			--enemyCount;
			if (enemyCount == 0) alert.Stop();
		};
	}
	private void OnTriggerExit(Collider other)
	{
		if (other.transform.root.GetComponentInChildren<EnemyAI>() == null) return;
		--enemyCount;
		if(enemyCount == 0) alert.Stop();
	}
}
