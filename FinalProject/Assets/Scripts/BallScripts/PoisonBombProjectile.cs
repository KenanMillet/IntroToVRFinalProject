using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Poison Projectile")]
public class PoisonBombProjectile : ProjectileType {

	public float duration;
	public float poisonDamage;

    public override IEnumerator Die(Projectile proj, Collision coll)
    {
		var baseCall = base.Die(proj, coll);
		while (baseCall.MoveNext()) yield return baseCall.Current;

		hitEffect.localScale = new Vector3(radius * 2, hitEffect.localScale.y, radius * 2);
		hitEffect.GetComponent<PoisonEffect>().damagePerSecond = poisonDamage;
		hitEffect.GetComponent<PoisonEffect>().duration = duration;

		proj.Die();
		yield return null;
    }

}
