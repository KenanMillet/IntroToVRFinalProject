using System.Collections;
using UnityEngine;

[CreateAssetMenu (menuName = "Projectile Type/Ice Projectile")]
public class IceProjectile : ProjectileType
{
    public float duration;
	public float speedMod;
	public float MarkerHeight;

	public override IEnumerator Die(Projectile proj, Collision coll)
    {
		var baseCall = base.Die(proj, coll);
		object garbage;
		while (baseCall.MoveNext()) garbage = baseCall.Current;

		proj.hitEffect.GetComponent<FreezeEffect>().duration = duration;
		proj.hitEffect.GetComponent<FreezeEffect>().speedMod = speedMod;
		proj.hitEffect.localScale = new Vector3(radius * 2, proj.hitEffect.localScale.y, radius * 2);
		proj.hitEffect.position = new Vector3(proj.hitEffect.position.x, MarkerHeight, proj.hitEffect.position.z);
		ParticleSystem[] parts = proj.hitEffect.GetComponentsInChildren<ParticleSystem>();
		foreach (ParticleSystem part in parts)
		{
			ParticleSystem.MainModule main = part.main;
			main.startSpeed = radius;
		}
		proj.Die();
		yield return null;
    }
}
