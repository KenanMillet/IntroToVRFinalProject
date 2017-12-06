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

	void Start ()
	{
		renderers = GetComponentsInChildren<Renderer>();
        main = portal.main;
	}
	
	void Update ()
	{
		foreach(Renderer renderer in renderers) {
			renderer.material.color = healthColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives);
            renderer.material.SetColor("_EmissionColor", healthColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives));
        }
        main.startColor = portalColors.Evaluate(1.0f - GameManager.lives / (float)GameManager.maxLives);
    }
}
