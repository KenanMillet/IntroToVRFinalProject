﻿using System.Collections;
using UnityEngine;

public class ProjectileType : ScriptableObject {

    public float radius;
    public int damage;
    public Transform hitEffect;
    public Mesh model;
    public Color baseColor;

    public virtual void setup(Projectile proj)
    {
        // proj.GetComponent<MeshFilter>().mesh = model;
        MeshFilter innerCrystal = proj.transform.Find("InnerCrystal").GetComponent<MeshFilter>();
        innerCrystal.mesh = model;
        innerCrystal.GetComponent<MeshRenderer>().material.color = baseColor;
		proj.GetComponent<Renderer>().material.color = baseColor;
        proj.GetComponent<TrailRenderer>().startColor = baseColor;
    }

    public virtual IEnumerator Die(Projectile proj, Collision coll)
    {
        EnemyAI enemy = coll.collider.GetComponent<EnemyAI>();
        if (enemy) {
            enemy.damage(proj);
            Debug.Log("Hit " + coll.collider.name + " for " + damage + " points of damage");
        }
        proj.Die();
        yield return new WaitForEndOfFrame();
    }
}
