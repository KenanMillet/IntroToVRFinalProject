using UnityEngine;

using Valve.VR.InteractionSystem;

public class CustomThrowing : MonoBehaviour {

    Hand hand;
    public Transform heldObject;
    public float throwPowerOffset;

    public Material originMaterial; // the held object's original material
    public Material highlightMaterial; // the material when the object is held

    public Collider mycoll;

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
                Rigidbody heldRbody = heldObject.GetComponent<Rigidbody>();
                heldRbody.useGravity = true;
                heldRbody.isKinematic = false;
                Vector3 velocity = hand.GetTrackedObjectVelocity();
                heldRbody.AddForce(velocity * throwPowerOffset, ForceMode.Impulse);
                heldObject.GetComponent<MeshRenderer>().material = originMaterial;
                originMaterial = null;
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
                MeshRenderer heldMR = heldObject.GetComponent<MeshRenderer>();
                Rigidbody heldRbody = heldObject.GetComponent<Rigidbody>();
                touchedObject.parent = transform;
                heldRbody.useGravity = false;
                heldRbody.isKinematic = true;
                if(originMaterial == null) { originMaterial = heldMR.material; }

            }
        }
    }

    void OnTriggerExit(Collider coll)
    {
        // Debug.Log("Ah");
    }
}
