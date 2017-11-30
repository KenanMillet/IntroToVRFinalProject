﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Poison Projectile")]
public class PoisonBombProjectile : ProjectileType {

    [Range(0.1f, 20f)] public float lifeSpan;
    [Range(0f, 10f)] public float frequency;
    [Range(0f, 10f)] public float delayTime;
    public LayerMask enemyTypes;

    public override IEnumerator Die(Projectile proj, Collision coll)
    {
        yield return new WaitForSeconds(delayTime);
        float startTime = Time.time;
        proj.rbody.constraints = RigidbodyConstraints.FreezeAll;
        proj.myColl.enabled = false;
        while(Time.time - startTime < lifeSpan)
        {
            Collider[] enemyColls = Physics.OverlapSphere(proj.transform.position, radius, enemyTypes);
            if(enemyColls.Length > 0)
            {
                foreach(Collider enemy in enemyColls) {
                    EnemyAI enem = enemy.GetComponent<EnemyAI>();
                    if (enem)
                    {
                        enem.damage(proj);
                        Debug.Log("Exploded " + enemy.name + " for " + damage + " points of damage");
                    }
                }
            }
            yield return new WaitForSeconds(frequency);
        }
        proj.Die();
    }

}
