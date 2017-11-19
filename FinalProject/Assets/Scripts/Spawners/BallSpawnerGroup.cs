using System;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class BallSpawnerGroup : MonoBehaviour
{
	[Serializable]
	class LotteryTicketGroup
	{
		public ProjectileType type;
		public int count;
	}
	[SerializeField]
	LotteryTicketGroup[] ballBasket;
	Queue<ProjectileType> BallBasket = new Queue<ProjectileType>();

	void refill()
	{
		List<ProjectileType> tmp = new List<ProjectileType>();
		foreach (LotteryTicketGroup group in ballBasket) tmp.AddRange(Enumerable.Repeat(group.type, group.count));
		tmp.Shuffle();
		BallBasket = new Queue<ProjectileType>(tmp);
	}

	public ProjectileType Next()
	{
		if (BallBasket.Count == 0) refill();
		return BallBasket.Dequeue();
	}
}
