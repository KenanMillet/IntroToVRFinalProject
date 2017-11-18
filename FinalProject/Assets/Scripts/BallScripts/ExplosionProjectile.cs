﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Explosive")]
public class ExplosionProjectile : ProjectileType {

    public LayerMask affectedTargets;

    public override IEnumerator Die(Projectile proj, Collision coll)
    {
        Collider[] hits = Physics.OverlapSphere(proj.transform.position, radius, affectedTargets);
        if(hits.Length > 0)
        {
            foreach(Collider hit in hits) {
                // hit.TakeDamage();
                Debug.Log("Exploded " + hit.name + " for " + damage + " points of damage");
            }
        }
        proj.Die();
        yield return new WaitForEndOfFrame();
    }
}