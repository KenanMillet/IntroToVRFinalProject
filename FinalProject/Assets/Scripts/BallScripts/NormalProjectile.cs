using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Projectile Type/Normal")]
public class NormalProjectile : ProjectileType
{
	public override IEnumerator Die(Projectile proj, Collision coll)
	{
		var baseCall = base.Die(proj, coll);
		object garbage;
		while (baseCall.MoveNext()) garbage = baseCall.Current;
		Destroy(proj.hitEffect.gameObject, 0.5f);
		proj.Die();
		yield return null;
	}
}
