using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoalScript : MonoBehaviour
{
	Renderer[] renderers;
	[SerializeField]
	Gradient healthColors;

	void Start ()
	{
		renderers = GetComponentsInChildren<Renderer>();
	}
	
	void Update ()
	{
		foreach(Renderer renderer in renderers)
		{
			renderer.material.color = healthColors.Evaluate(1.0f - (float)GameManager.lives / (float)GameManager.maxLives);
		}
	}
}
