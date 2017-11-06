using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TowerScript : MonoBehaviour {
    public Material blue;
    public int counter = 2;
	private bool once = true;
	public Transform Base;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        counter = Mathf.Max(counter - 1, 0);
		if (counter == 0 && once)
		{
			Renderer[] r = GetComponentsInChildren<Renderer>();
			foreach (Renderer re in r)
			{
				re.material = blue;
			}
			once = false;
		}
		if(counter > 0) once = true;
	}
}
