﻿using System.Collections;
using UnityEngine;

public class ProjectileType : ScriptableObject {

    public float radius;
    public float damage;
    public Mesh model;
	public Transform idleEffect, hitEffect;
    public Color baseColor, crystalColor, glowColor;

    public virtual void setup(Projectile proj)
    {
        MeshFilter innerCrystal = proj.transform.Find("InnerCrystal").GetComponent<MeshFilter>();
        innerCrystal.mesh = model;
		if(idleEffect != null) proj.idleEffect = Instantiate(idleEffect, innerCrystal.transform.position, innerCrystal.transform.rotation, innerCrystal.transform);
		innerCrystal.GetComponent<MeshRenderer>().material.color = crystalColor;
		innerCrystal.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", glowColor);
		proj.GetComponent<Renderer>().material.color = baseColor;
		proj.GetComponent<TrailRenderer>().startColor = baseColor;
		proj.damage = damage;
    }

    public virtual IEnumerator Die(Projectile proj, Collision coll)
    {
        EnemyAI enemy = coll.collider.GetComponent<EnemyAI>();
        if (enemy) {
            enemy.damage(proj);
    //        Debug.Log("Hit " + coll.collider.name + " for " + damage + " points of damage");
        }
		if (hitEffect != null) proj.hitEffect = Instantiate(hitEffect, proj.transform.position, Quaternion.identity, null);
		yield return null;
    }
}
