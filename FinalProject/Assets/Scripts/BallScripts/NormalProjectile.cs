using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Projectile Type/Normal")]
public class NormalProjectile : ProjectileType
{
	public override IEnumerator Die(Projectile proj, Collision coll)
	{
		var baseCall = base.Die(proj, coll);
		while (baseCall.MoveNext()) yield return baseCall.Current;
		proj.Die();
		yield return null;
	}
}
