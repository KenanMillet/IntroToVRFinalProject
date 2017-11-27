using System.Collections.Generic;
using UnityEngine;

public class EnemyAI : MonoBehaviour
{
    public float originSpeed;
	[HideInInspector]
	public float Speed;
	[SerializeField]
	protected float MaxHealth;
	[SerializeField]
	protected int Group;
	[SerializeField]
	protected Gradient healthColors;
    public float spawnInterval;

	private float _health;
	public float health
	{
		get { return _health; }
		protected set { _health = value; dying = (value == 0); GetComponent<Renderer>().material.color = healthColors.Evaluate(1.0f - (value / MaxHealth)); }
	}

	private bool _reachedEnd;
	public bool reachedEnd
	{

		get { return _reachedEnd || transform.parent.position == path[path.Count - 1].transform.position; }
		set { _reachedEnd = value;
        }
	}

	protected List<PathPoint> path
	{
		get
		{
			try
			{
				return GameManager.paths[Group];
			}
			catch(KeyNotFoundException)
			{
				GameManager.paths.Add(Group, null);
				initPathing();
				return GameManager.paths[Group];
			}
		}
		private set { GameManager.paths[Group] = value; }
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
        Speed = originSpeed;
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
		
	}

	public static bool UpdatePathingForGroup(int group, PathPoint point, bool pointAdded, bool adjustOnMatch = true)
	{
		//location = index in path that has same Order as point (or bitwise compliment of first element with larger order if there is no match)
		int location = GameManager.paths[group].BinarySearch(point, new PathPoint.OrderComparator());

		//if there are multiple points in the path with the same order, make location refer to the first of those points
		while (location > 0 && GameManager.paths[group][location - 1].Order == GameManager.paths[group][location].Order) --location;

		//when adding a point, if no match was found, bitwise complement location to get spot where point should be inserted; otherwise, place as normal
		if (pointAdded) GameManager.paths[group].Insert((location < 0 ? ~location : location), point);

		//when removing, remove the point at location if and only if it is positive
		else if (location >= 0) GameManager.paths[group].RemoveAt(location);

		//if the point is negative, we never found it
		else Debug.Log("[Pathing] Attempted to remove a path point from a group which does not contain that path point");

		//if we should adjust on match, and there was a match
		if (adjustOnMatch && location >= 0)
		{
			for (int i = location + 1; i < GameManager.paths[group].Count; ++i) GameManager.paths[group][i].Order++;
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

	public static void initPathing(int group)
	{
		GameManager.paths[group] = new List<PathPoint>(FindObjectsOfType<PathPoint>() as PathPoint[]);
		foreach (PathPoint p in GameManager.paths[group])
		{
			if (p.Group != group) GameManager.paths[group].Remove(p);
		}
		GameManager.paths[group].Sort((a, b) => a.Order.CompareTo(b.Order));
	}

	public virtual void damage(Projectile p)
	{
		health -= p.damage;
	}

	protected virtual void die()
	{
        if (reachedEnd)
        {
            Debug.Log(transform.parent.name + " reached the end");
            GameManager.lives -= (int)_health;
            GameManager.consecutiveKills = 0;
            Debug.Log("Lives remaining: " + GameManager.lives);
        }
        else
        {
            Debug.Log(transform.parent.name + " was killed");
            GameManager.score += (int)(this.MaxHealth * 10 * GameManager.scoreMult);
            GameManager.consecutiveKills++;
            Debug.Log("Score is now: " + GameManager.score);
        }
        Destroy(gameObject); //TODO: Replace with a real death animation and such
	}
}