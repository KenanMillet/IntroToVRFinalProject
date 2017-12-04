using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Poison Projectile")]
public class PoisonBombProjectile : ProjectileType {

	public float duration;
	public float poisonDamage;
	public float MarkerHeight;

	public override IEnumerator Die(Projectile proj, Collision coll)
    {
		var baseCall = base.Die(proj, coll);
		while (baseCall.MoveNext()) yield return baseCall.Current;

		proj.hitEffect.localScale = new Vector3(radius * 2, hitEffect.localScale.y, radius * 2);
		proj.hitEffect.GetComponent<PoisonEffect>().damagePerSecond = poisonDamage;
		proj.hitEffect.GetComponent<PoisonEffect>().duration = duration;
		proj.hitEffect.position = new Vector3(proj.hitEffect.position.x, MarkerHeight, proj.hitEffect.position.z);

		proj.Die();
		yield return null;
    }

}
