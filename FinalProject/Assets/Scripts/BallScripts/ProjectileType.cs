using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileType : ScriptableObject {

    public float radius;
    public int damage;
    public Transform hitEffect;
    public Mesh model;
    public Color baseColor;

    public virtual void setup(Projectile proj)
    {
        proj.GetComponent<MeshFilter>().mesh = model;
        proj.GetComponent<TrailRenderer>().startColor = baseColor;
    }

    public virtual IEnumerator Die(Projectile proj, Collision coll)
    {
        EnemyAI enemy = coll.collider.GetComponent<EnemyAI>();
        if (enemy) {
            /* Deal Damage.*/
            Debug.Log("Hit " + coll.collider.name + " for " + damage + " points of damage");
        }
        proj.Die();
        yield return new WaitForEndOfFrame();
    }
}
