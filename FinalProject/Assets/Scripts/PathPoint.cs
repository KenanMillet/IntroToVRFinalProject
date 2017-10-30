using System.Collections.Generic;
using UnityEngine;

public class PathPoint : MonoBehaviour
{
	private void Start()
	{
		GetComponent<SpriteRenderer>().enabled = false;
	}

	public class OrderComparator : IComparer<PathPoint>
	{
		public int Compare(PathPoint a, PathPoint b)
		{
			return a.Order.CompareTo(b.Order);
		}
	}

	public int Group;
	public int Order;
}
