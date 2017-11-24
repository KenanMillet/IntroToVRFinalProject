using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Ice Projectile")]
public class IceProjectile : ProjectileType {

    public LayerMask affectedTargets;
    public float lifeSpan;
    public float duration;

    public FreezeEffect freezePrefab;

    public override IEnumerator Die(Projectile proj, Collision coll)
    {
        float startTime = Time.time;
        Vector3 hitPos = proj.transform.position;
        FreezeEffect newFreeze = Instantiate(freezePrefab, hitPos, Quaternion.identity);
        Debug.Log("Oh No!");
        newFreeze.duration = duration;
        newFreeze.GetComponent<SphereCollider>().radius = radius;
        ParticleSystem[] parts = newFreeze.GetComponentsInChildren<ParticleSystem>();
        foreach(ParticleSystem part in parts) {
            ParticleSystem.MainModule main = part.main;
            main.startSpeed = radius;
        }
        proj.Die();
        yield return new WaitForEndOfFrame();
    }
}
