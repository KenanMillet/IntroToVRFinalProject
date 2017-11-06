using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class GazeTeleporting : MonoBehaviour {

	public GameObject player;
	public float teleportFadeTime = 0.1f;

	public Material blue;
	public Material red;

	public Hand myHand;
	SteamVR_Controller.Device myController { get { return myHand.controller; } }

	// Use this for initialization
	void Start () {
		
	}

	GameObject obj = null;

	// Update is called once per frame
	void Update () {
		// STEP 1: make a Ray object
		Ray myRay = new Ray( transform.position, transform.forward );

		// STEP 3: visualize the Raycast
		Debug.DrawRay( myRay.origin, myRay.direction, Color.yellow );

		// STEP 3.5: setup a RaycastHit object, to hold RaycastHit data
		RaycastHit myRayHit = new RaycastHit(); // this is just an empty container

		// STEP 4: shoot the Raycast
		if (Physics.Raycast (myRay, out myRayHit)) {
			obj = myRayHit.collider.gameObject;
            if(obj.name == "Tower")
            {
                obj.GetComponent<TowerScript>().counter = 2;
                Debug.Log("I'm looking at " + myRayHit.collider.name); // the thing the raycast hit
                Renderer[] r;
                r = myRayHit.collider.GetComponentsInChildren<Renderer>();
                foreach (Renderer re in r)
                {
                    re.material = red;
                }
				if (myController != null) {
					if (myController.GetPressDown (SteamVR_Controller.ButtonMask.Touchpad)) {
						//if (myController.GetTouch (SteamVR_Controller.ButtonMask.Touchpad)) {
						SteamVR_Fade.Start (Color.black, 0);
						SteamVR_Fade.Start (Color.clear, teleportFadeTime);

						player.transform.position = new Vector3 (myRayHit.transform.position.x, player.transform.position.y, myRayHit.transform.position.z);
					}
				} else if (Input.GetKeyDown (KeyCode.Space)) {
					SteamVR_Fade.Start (Color.black, 0);
					SteamVR_Fade.Start (Color.clear, teleportFadeTime);

					player.transform.position = new Vector3 (myRayHit.transform.position.x, player.transform.position.y, myRayHit.transform.position.z);

				}

            }


        } 
		
	}
}
