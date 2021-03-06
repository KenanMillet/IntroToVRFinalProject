﻿using UnityEngine;
using UnityEngine.Events;
using Valve.VR.InteractionSystem;

public sealed class GazeButton : MonoBehaviour
{
	public float FOV = 20f;
	[SerializeField]
	public bool seeThroughWalls = true;

	public UnityEvent OnGlance;
	public UnityEvent OnStare;
	public UnityEvent OnAvert;

	private bool glancing = false;

	public float StareTime { get; private set; }

	public Transform observer { get { return FindObjectOfType<Player>().transform.GetComponentInChildren<Camera>().transform; } }

	private void Update()
	{
		if (observer.gameObject.activeInHierarchy)
		{
			Vector3 fromCameraToButton = transform.position - observer.position;

			float distanceDegrees = Vector3.Angle(observer.forward, fromCameraToButton.normalized);

			if (distanceDegrees < FOV)
			{
				if (seeThroughWalls)
				{
					Debug.DrawRay(transform.position, observer.position, Color.yellow);
					if (!glancing)
					{
						OnGlance.Invoke ();
					}
					else
					{
						StareTime += Time.deltaTime;
						OnStare.Invoke();
					}
					glancing = true;
				}
				else
				{
					RaycastHit rayHit = new RaycastHit();
					if (Physics.Raycast(new Ray(observer.position, fromCameraToButton.normalized), out rayHit) && rayHit.transform == transform)
					{
						Debug.DrawRay(transform.position, observer.position, Color.green);
						if (!glancing) OnGlance.Invoke();
						else
						{
							StareTime += Time.deltaTime;
							OnStare.Invoke();
						}
						glancing = true;
					}
					else
					{
						OnAvert.Invoke();
						glancing = false;
						StareTime = 0;
					}
				}
			}
			else
			{
				if (glancing) OnAvert.Invoke();
				glancing = false;
			}
		}
	}

	public void GlanceTest()
	{
		Debug.Log(observer.root.name + " has glanced at " + name);
	}
	public void StareTest()
	{
		Debug.Log(observer.root.name + " has stared at " + name + " for " + StareTime + " consecutive seconds.");
	}
	public void AvertTest()
	{
		Debug.Log(observer.root.name + " has averted its gase from " + name + ".");
	}
}