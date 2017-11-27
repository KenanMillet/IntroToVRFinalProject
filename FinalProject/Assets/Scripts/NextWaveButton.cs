using UnityEngine;
using Valve.VR.InteractionSystem;

[RequireComponent(typeof(Rigidbody))]
public class NextWaveButton : MonoBehaviour
{
	public bool push = false, throwAt = false;

	private void OnCollisionEnter(Collision collision)
	{
		if (push)
		{
			Hand hand = collision.gameObject.GetComponent<Hand>();
			if (hand != null && hand.controller != null && hand.controller.GetPress(Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger)) ++EnemySpawner.waveNo;
		}
		else if (throwAt && collision.gameObject.GetComponent<Throwable>()) ++EnemySpawner.waveNo;
	}
}