﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Ice Projectile")]
public class IceProjectile : ProjectileType {

    public LayerMask affectedTargets;
    public float duration;

    public override IEnumerator Die(Projectile proj, Collision coll)
    {
        Collider[] hits = Physics.OverlapSphere(proj.transform.position, radius, affectedTargets);
        if (hits.Length > 0)
        {
            foreach (Collider hit in hits)
            {
                EnemyAI enem = hit.GetComponent<EnemyAI>();
                if (enem) {
                    // hit.TakeDamage();
                    enem.StartCoroutine(freezeEffect(enem));
                    Debug.Log("Froze " + hit.name + " for " + damage + " points of damage");
                }
            }
        }
        proj.Die();
        yield return new WaitForEndOfFrame();
    }

    public IEnumerator freezeEffect(EnemyAI enemy)
    {
        // get enemy's original speed
        // reduce enemy's current speed
        yield return new WaitForSeconds(duration);
        // return enemy's speed to original
    }
}