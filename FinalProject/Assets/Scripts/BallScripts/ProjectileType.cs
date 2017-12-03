using System.Collections;
using UnityEngine;

public class ProjectileType : ScriptableObject {

    public float radius;
    public int damage;
    public Mesh model;
	public Transform idleEffect, hitEffect;
    public Color baseColor, crystalColor, glowColor;

    public virtual void setup(Projectile proj)
    {
        MeshFilter innerCrystal = proj.transform.Find("InnerCrystal").GetComponent<MeshFilter>();
        innerCrystal.mesh = model;
		if(idleEffect) Instantiate(idleEffect, innerCrystal.transform.position, innerCrystal.transform.rotation, innerCrystal.transform);
		innerCrystal.GetComponent<MeshRenderer>().material.color = crystalColor;
		innerCrystal.GetComponent<MeshRenderer>().material.SetColor("_EmissionColor", glowColor);
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
		if (hitEffect) Instantiate(hitEffect, proj.transform.position, proj.transform.rotation);
		proj.Die();
        yield return new WaitForEndOfFrame();
    }
}
