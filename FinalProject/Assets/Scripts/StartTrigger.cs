using UnityEngine;

public class StartTrigger : MonoBehaviour
{
	private void OnCollisionEnter(Collision collision)
	{
		GameManager.StartGame();
	}
}
