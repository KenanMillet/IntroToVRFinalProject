using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class Projectile : MonoBehaviour
{
    bool primed;
    bool dying;

    public Vector3 originPos;
    // Use this for initialization
    void Start()
    {
        primed = false;
        originPos = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y < -10f && !dying)
        {
            StartCoroutine(Die());
        }
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
        // if (primed) { Destroy(this.gameObject); }
    }

    public void primeProjectile()
    {
        primed = true;
    }

    IEnumerator Die()
    {
        dying = true;
        GetComponent<MeshRenderer>().enabled = false;
        GetComponent<Rigidbody>().isKinematic = true;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
        GetComponent<Collider>().enabled = false;
        yield return new WaitForSeconds(3f);
        transform.position = originPos;
        dying = false;
        GetComponent<MeshRenderer>().enabled = true;
        GetComponent<Rigidbody>().isKinematic = false;
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.None;
        GetComponent<Collider>().enabled = true;
        primed = false;
    }
}
