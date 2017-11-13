using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class Projectile : MonoBehaviour
{
    bool primed;
    bool dying;

    public Transform hitEffect;
    public Rigidbody respawnEffect;
	public float respawnTime;

    public Vector3 originPos;
    public Rigidbody rbody;
    public Collider myColl;
    public MeshRenderer myRend;
    // Use this for initialization
    void Start()
    {
        primed = false;
        originPos = transform.position;
        rbody = GetComponent<Rigidbody>();
        myColl = GetComponent<Collider>();
        myRend = GetComponent<MeshRenderer>();
        rbody.isKinematic = true;
        rbody.useGravity = false;
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
        // Debug.Log("Exit");
    }

    void OnCollisionEnter(Collision coll)
    {
        // if it hit's enemy. Take damage.
        // if (primed) { Destroy(this.gameObject); }
        if((coll.collider.GetComponent<EnemyAI>() != null && !dying) || coll.collider.tag.Contains("Ground"))
        {
            StartCoroutine(Die());
        }
    }

    public void primeProjectile()
    {
        primed = true;
    }

    IEnumerator Die()
    {
        yield return new WaitForEndOfFrame();
        dying = true;
        myRend.enabled = false;
        rbody.isKinematic = true;
        rbody.constraints = RigidbodyConstraints.FreezeAll;
        myColl.enabled = false;
        Transform newHitEff = Instantiate(hitEffect, transform.position, transform.rotation);
        Destroy(newHitEff.gameObject, 1f);
        yield return new WaitForSeconds(respawnTime);
        transform.position = originPos;
        dying = false;
        myRend.enabled = true;
        // GetComponent<Rigidbody>().isKinematic = false;
        rbody.constraints = RigidbodyConstraints.None;
        rbody.useGravity = false;
        myColl.enabled = true;
        Rigidbody newRespawnEff = Instantiate(respawnEffect, transform.position, Quaternion.identity);
        newRespawnEff.angularVelocity = new Vector3(0, 180, 0);
        Destroy(newRespawnEff.gameObject, 3f);
        primed = false;
    }
}
