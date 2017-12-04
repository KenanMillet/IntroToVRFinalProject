using System.Collections;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Ice Projectile")]
public class IceProjectile : ProjectileType
{
    public float duration;
	public float speedMod;
	public float AoEHeight;

	public override IEnumerator Die(Projectile proj, Collision coll)
    {
		var baseCall = base.Die(proj, coll);
		while (baseCall.MoveNext()) yield return baseCall.Current;

		hitEffect.GetComponent<FreezeEffect>().duration = duration;
		hitEffect.GetComponent<FreezeEffect>().speedMod = speedMod;
		hitEffect.localScale = new Vector3(radius * 2, hitEffect.localScale.y, radius * 2);
		hitEffect.position = new Vector3(hitEffect.position.x, AoEHeight, hitEffect.position.z);
		ParticleSystem[] parts = hitEffect.GetComponentsInChildren<ParticleSystem>();
		foreach (ParticleSystem part in parts)
		{
			ParticleSystem.MainModule main = part.main;
			main.startSpeed = radius;
		}
		proj.Die();
		yield return null;
    }
}
