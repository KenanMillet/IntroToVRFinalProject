using UnityEngine;
using UnityEngine.UI;

public class CanvasInformation : MonoBehaviour
{
	public bool lookedAtBefore { get; set; }

	public Text nameOfObject;

	public GameObject player;
	Quaternion initialRotation;

	private Vector3 targetPoint;
	private Quaternion targetRotation;

	// Use this for initialization
	void Start()
	{
		player = GameObject.Find("PlayerPrefab");
		lookedAtBefore = false;
	}

	void updateData()
	{
		//check to see what kind of parent my parent's parent is (my grand parend)
		//parent is a tower
		targetPoint = new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z) - transform.position;
		targetRotation = Quaternion.LookRotation(-targetPoint, Vector3.up);
		transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * 4.0f);
	}

	public void doABunchOfUpdating()
	{
		updateData();
		nameOfObject.text = transform.root.name;
		if (GetComponentInParent<TowerScript>())
		{
			
		}
		//parent is goal
		else if (GetComponentInParent<GoalScript>())
		{
			string gOName = "goal_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.Find(gOName).GetComponent<Text>().text = GameManager.lives + " out of " + GameManager.maxLives;
		}
		//parent is enemy spawner thing
		else if (transform.root.GetComponentInChildren<ProceduralSpawnScript>())
		{
			string gOName = "wave_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.Find(gOName).GetComponent<Text>().text = "Wave " + EnemySpawner.waveNo;
		}
		//parent is enemy
		else if (GetComponentInParent<EnemyAI>())
		{
			string gOName = "enemy_info";
			if (!lookedAtBefore)
			{
				createNewInfoGO(gOName);
			}
			transform.Find(gOName).GetComponent<Text>().text = "" + GetComponentInParent<EnemyAI>().health;
		}
		lookedAtBefore = true;
	}

	void createNewInfoGO(string gOName)
	{
		GameObject toAdd = new GameObject(gOName);
		toAdd.transform.SetParent(this.transform);
		toAdd.transform.localPosition = new Vector3(0f, 0f, 0f);
		toAdd.transform.localRotation = new Quaternion();
		toAdd.transform.localScale = new Vector3(1f, 1f, 1f);
		Text theText = toAdd.AddComponent<Text>();
		Font ArialFont = (Font)Resources.GetBuiltinResource(typeof(Font), "Arial.ttf");
		theText.font = ArialFont;
		theText.fontSize = 80;
		theText.alignment = TextAnchor.MiddleCenter;
		theText.verticalOverflow = VerticalWrapMode.Overflow;
		theText.horizontalOverflow = HorizontalWrapMode.Overflow;
	}

}
