using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class HandScript : MonoBehaviour {

    Hand hand;
    public Transform heldObject;
    
    public Material highlightBallMat;
    public Material originMaterial;

    // Use this for initialization
    void Start()
    {
        hand = GetComponent<Hand>();
    }

    // Update is called once per frame
    void Update()
    {
        // is the user holding down the trigger on this Hand?
        if (hand.GetStandardInteractionButtonUp())
        {
            if (heldObject != null)
            {
                heldObject.parent = null;
                heldObject.GetComponent<Rigidbody>().useGravity = true;
                heldObject.GetComponent<Rigidbody>().isKinematic = false;
                Vector3 velocity = hand.GetTrackedObjectVelocity();
                Debug.Log("Velocity of throw is: " + velocity.magnitude);
                // heldObject.GetComponent<Rigidbody>().AddForce(velocity, ForceMode.Impulse);
                heldObject = null;
            }
        }
        // Debug.Log(hand.GetTrackedObjectVelocity()); // get the movement speed of your hand(for stuff like throwing shit)
    }

    void OnTriggerStay(Collider coll)
    {
        Transform touchedObject = coll.transform;
        originMaterial = coll.GetComponent<MeshRenderer>().material;
        if (touchedObject.tag == "Throwable")
        {
            touchedObject.GetComponent<MeshRenderer>().material = highlightBallMat;
            if (hand.GetStandardInteractionButton())
            {
                if (heldObject == null && touchedObject.GetComponent<Rigidbody>() != null)
                {
                    heldObject = touchedObject;
                    touchedObject.parent = transform;
                    heldObject.GetComponent<Rigidbody>().useGravity = false;
                    heldObject.GetComponent<Rigidbody>().isKinematic = true;
                }
            }
        }
    }

    void OnTriggerExit(Collider coll)
    {
        if (coll.transform == heldObject)
        {
            heldObject.GetComponent<MeshRenderer>().material = originMaterial;
        }
    }
}
