﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Valve.VR.InteractionSystem;

public class Projectile : MonoBehaviour
{
    
    public Transform hitEffect;
    public Rigidbody respawnEffect;

    public ProjectileType blueprint;
    
    public Rigidbody rbody;
    public SphereCollider myColl;
    public MeshRenderer myRend;

    public int damage;

    // Use this for initialization
    void Start() {
        blueprint.setup(this);
        rbody.isKinematic = true;
        rbody.useGravity = false;
        Rigidbody newRespawnEff = Instantiate(respawnEffect, transform.position, Quaternion.identity);
        newRespawnEff.angularVelocity = new Vector3(0, 180, 0);
        Destroy(newRespawnEff.gameObject, 3f);
    }

    // Update is called once per frame
    void Update()
    {
        if (transform.position.y < -10f)
        {
            Die();
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
        Debug.Log("Doing it.");
        StartCoroutine(blueprint.Die(this, coll));
    }

    public void Die()
    {
        Transform newHitFX = Instantiate(hitEffect, transform.position, transform.rotation);
        // Deregister from spawner
        Destroy(gameObject);
    }
}