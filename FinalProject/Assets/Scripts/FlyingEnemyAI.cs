﻿using UnityEngine;

public class FlyingEnemyAI : EnemyAI
{
	public ProjectileType baseProjectile;
	public override void damage(float d)
	{
		base.damage(d/baseProjectile.damage * MaxHealth/2.0f);
	}
}
