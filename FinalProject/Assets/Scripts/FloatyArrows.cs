using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FloatyArrows : MonoBehaviour {

    public static float maxDelta = 0.2f;
    public static float speed = 0.3f;

    int mod = 1;

    Vector3 originPos;
    RectTransform myRect;
	// Use this for initialization
	void Start () {
        myRect = GetComponent<RectTransform>();
        originPos = myRect.position;
	}
	
	// Update is called once per frame
	void Update () {
        myRect.position += Vector3.up * speed * mod * Time.deltaTime;
        if(Vector3.Distance(myRect.position, originPos) >= maxDelta) {
            mod *= -1;
        }
	}
}
