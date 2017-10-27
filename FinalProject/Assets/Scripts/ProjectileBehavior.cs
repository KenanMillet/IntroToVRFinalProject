using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class ProjectileBehavior : MonoBehaviour {

    bool primed;

	// Use this for initialization
	void Start () {
        primed = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void HandHoverUpdate(Hand hand)
    {
        if (hand.GetStandardInteractionButtonDown())
        {
            
        }
    }
    
    void OnHandHoverEnd(Hand hand)
    {
        Debug.Log("Exit");
    }

    void OnCollisionEnter(Collision coll)
    {
        // if it hit's enemy. Take damage.
        if (primed) { Destroy(this.gameObject); }
    }

    public void primeProjectile()
    {

    }
}
