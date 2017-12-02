using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinScript : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		Vector3 rot = this.transform.rotation.eulerAngles;
		rot.y += 100f*Time.deltaTime;
		this.transform.rotation = Quaternion.Euler (0, rot.y, 0);
	}
}
