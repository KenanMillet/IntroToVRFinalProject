using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class CustomThrowing : MonoBehaviour {

    Hand hand;
    public Transform heldObject;

    // Use this for initialization
    void Start () {
        hand = GetComponent<Hand>();
	}
	
	// Update is called once per frame
	void Update () {
        if (hand.GetStandardInteractionButtonUp())
        {
            if (heldObject != null)
            {
                heldObject.parent = null;
                heldObject.GetComponent<Rigidbody>().useGravity = true;
                heldObject.GetComponent<Rigidbody>().isKinematic = false;
                Vector3 velocity = hand.GetTrackedObjectVelocity();
                heldObject.GetComponent<Rigidbody>().AddForce(velocity, ForceMode.Impulse);
                heldObject.GetComponent<MeshRenderer>().material.color = Color.red;
                heldObject = null;
            }
        }
    }
    void OnTriggerStay(Collider coll)
    {
        Transform touchedObject = coll.transform;
        if (hand.GetStandardInteractionButton())
        {
            if (heldObject == null && touchedObject.GetComponent<Rigidbody>() != null && touchedObject.tag == "Throwable")
            {
                heldObject = touchedObject;
                touchedObject.parent = transform;
                heldObject.GetComponent<Rigidbody>().useGravity = false;
                heldObject.GetComponent<Rigidbody>().isKinematic = true;
                heldObject.GetComponent<MeshRenderer>().material.color = Color.blue;
                Debug.Log("laldsfsadf");
            }
        }
    }

    void OnTriggerExit(Collider coll)
    {
        Debug.Log("Ah");
    }
}
