using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FreezeEffect : MonoBehaviour {

	void OnTriggerEnter(Collider coll)
    {
        EnemyAI enem = coll.GetComponent<EnemyAI>();
        if (enem) {

        }
    }

    void OnTriggerExit(Collider coll)
    {

    }
}
