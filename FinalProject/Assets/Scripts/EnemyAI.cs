using System.Collections.Generic;
using UnityEngine;

public class EnemyAI : MonoBehaviour
{
	[SerializeField]
	protected float Speed, MaxHealth;
	[SerializeField]
	protected int Group;

	private float _health;
	protected float health
	{
		get { return _health; }
		set { _health = value; dying = (value == 0); }
	}

	private bool _reachedEnd;
	public bool reachedEnd
	{
		get { return _reachedEnd || transform.parent.position == path[path.Count - 1].transform.position; }
		set { _reachedEnd = value; }
	}

	private static Dictionary<int, List<PathPoint>> paths = new Dictionary<int, List<PathPoint>>();
	protected List<PathPoint> path
	{
		get
		{
			try
			{
				return paths[Group];
			}
			catch(KeyNotFoundException)
			{
				paths.Add(Group, null);
				initPathing();
				return paths[Group];
			}
		}
		private set { paths[Group] = value; }
	}
	protected int index;
	protected Vector3 segment;

	private bool _dying = false;
	public bool dying
	{
		get { return _dying; }
		set { _dying = value; if (value) die(); }
	}

	protected void Start ()
	{
		health = MaxHealth;
		index = 0;
		if (path.Count < 2) dying = true;
		segment = path[index + 1].transform.position - path[index].transform.position;
	}

	protected void Update()
	{
		if (!dying)
		{
			if (segment.magnitude > Vector3.Distance(transform.parent.position, path[index].transform.position)) transform.parent.position += segment.normalized * Speed * Time.deltaTime;
			else
			{
				++index;
				transform.parent.position = path[index].transform.position;
				if (index == path.Count - 1)
				{
					dying = true;
					return;
				}
				segment = path[index + 1].transform.position - path[index].transform.position;
			}
		}
	}

	protected void OnCollisionEnter(Collision collision)
	{
		Projectile p = collision.gameObject.GetComponent<Projectile>();
		if (p) damage(p);
	}

	public static bool UpdatePathingForGroup(int group, PathPoint point, bool pointAdded, bool adjustOnMatch = true)
	{
		//location = index in path that has same Order as point (or bitwise compliment of first element with larger order if there is no match)
		int location = paths[group].BinarySearch(point, new PathPoint.OrderComparator());

		//if there are multiple points in the path with the same order, make location refer to the first of those points
		while (location > 0 && paths[group][location - 1].Order == paths[group][location].Order) --location;

		//when adding a point, if no match was found, bitwise complement location to get spot where point should be inserted; otherwise, place as normal
		if (pointAdded) paths[group].Insert((location < 0 ? ~location : location), point);

		//when removing, remove the point at location if and only if it is positive
		else if (location >= 0) paths[group].RemoveAt(location);

		//if the point is negative, we never found it
		else Debug.Log("[Pathing] Attempted to remove a path point from a group which does not contain that path point");

		//if we should adjust on match, and there was a match
		if (adjustOnMatch && location >= 0)
		{
			for (int i = location + 1; i < paths[group].Count; ++i) paths[group][i].Order++;
		}

		//return whether or not there was a point with the same order already
		return location < 0;
	}

	private void initPathing()
	{
		path = new List<PathPoint>(FindObjectsOfType<PathPoint>() as PathPoint[]);
		foreach (PathPoint p in path)
		{
			if (p.Group != Group) path.Remove(p);
		}
		path.Sort((a, b) => a.Order.CompareTo(b.Order));
	}

	protected virtual void damage(Projectile p)
	{
		--health;
	}

	protected virtual void die()
	{
		if(reachedEnd) Debug.Log(transform.parent.name + " reached the end");
		else Debug.Log(transform.parent.name + " was killed");
		Destroy(gameObject); //TODO: Replace with a real death animation and such
	}
}