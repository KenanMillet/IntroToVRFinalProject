using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Explosive")]
public class ExplosionProjectile : ProjectileType
{
	public float blastDamage;
	public float duration;
	public override IEnumerator Die(Projectile proj, Collision coll)
    {
		var baseCall = base.Die(proj, coll);
		object garbage;
		while (baseCall.MoveNext()) garbage = baseCall.Current;
		proj.hitEffect.GetComponent<ExplosionEffect>().radius = radius;
		proj.hitEffect.GetComponent<ExplosionEffect>().damage = blastDamage;
		proj.hitEffect.GetComponent<ExplosionEffect>().duration = duration;
		proj.Die();
		yield return null;
    }
}
