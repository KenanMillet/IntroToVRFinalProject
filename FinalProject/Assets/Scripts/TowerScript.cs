using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class TowerScript : MonoBehaviour {
    public Material blue;
	public Material red;
	public Transform Base;
	public float teleportFadeTime;

	GameObject player { get { return GetComponent<GazeButton>().observer.gameObject; } }

	public void allowTeleport()
	{
		Player p = player.transform.root.GetComponentInChildren<Player>();
		if (p == null) return;

		foreach (Renderer re in GetComponentsInChildren<Renderer>())
		{
			re.material = red;
		}

		foreach (Hand hand in p.hands)
		{
			if (Input.GetKeyDown(KeyCode.Space) || hand.controller != null && hand.controller.GetPressDown(SteamVR_Controller.ButtonMask.Touchpad))
			{
				SteamVR_Fade.Start(Color.black, 0);
				SteamVR_Fade.Start(Color.clear, teleportFadeTime);

				player.transform.root.position = Base.position + new Vector3(0, Base.lossyScale.y/2, 0);
			}
		}
	}

	public void denyTeleport()
	{
		foreach (Renderer re in GetComponentsInChildren<Renderer>())
		{
			re.material = blue;
		}
	}
}
