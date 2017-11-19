using cakeslice;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class TowerScript : MonoBehaviour {
    public Material blue;
	public Material red;
	public Transform TeleportPoint;
	public float teleportFadeTime;

	GameObject player { get { return GetComponent<GazeButton>().observer.gameObject; } }

	private void Start()
	{
		denyTeleport();
	}

	public void onGlance()
	{
		foreach (Outline outline in GetComponentsInChildren<Outline>())
		{
			outline.enabled = true;
		}
	}

	public void allowTeleport()
	{
		Player p = player.transform.root.GetComponentInChildren<Player>();
		if (p == null) return;

		foreach (Hand hand in p.hands)
		{
			if (Input.GetKeyDown(KeyCode.Space) || hand.controller != null && hand.controller.GetPressDown(SteamVR_Controller.ButtonMask.Touchpad))
			{
				SteamVR_Fade.Start(Color.black, 0);
				SteamVR_Fade.Start(Color.clear, teleportFadeTime);

				player.transform.root.position = TeleportPoint.transform.position;
			}
		}
	}

	public void denyTeleport()
	{
		foreach (Outline outline in GetComponentsInChildren<Outline>())
		{
			outline.enabled = false;
		}

	}
}
