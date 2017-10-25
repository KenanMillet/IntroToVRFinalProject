using UnityEngine;

public class PathPoint : MonoBehaviour
{
	private void Start()
	{
		GetComponent<SpriteRenderer>().enabled = false;
	}


	public bool FinalDestination;
	public int Group;
	public int Order;
}
