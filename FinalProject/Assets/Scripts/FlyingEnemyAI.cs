using UnityEngine;

public class FlyingEnemyAI : EnemyAI
{
	public override void damage(float d)
	{
		base.damage(d * MaxHealth);
	}
}
