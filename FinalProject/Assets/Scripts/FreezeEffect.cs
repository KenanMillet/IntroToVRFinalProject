using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FreezeEffect : MonoBehaviour {

    public float duration;
    float startTime;
	public float speedMod;

    List<EnemyAI> losers = new List<EnemyAI>();

    void Start() {
        startTime = Time.time;
    }

    void Update() {
        if(Time.time - startTime >= duration) { StartCoroutine(Die()); }
    }

	void OnTriggerEnter(Collider coll)
    {
		Debug.Log(coll.name + " entered the cold AoE.");
        EnemyAI enem = coll.GetComponent<EnemyAI>();
        if (enem) {
            enem.Speed = enem.originSpeed * speedMod;
            losers.Add(enem);
        }
    }

    void OnTriggerExit(Collider coll)
    {
		Debug.Log(coll.name + " exited the cold AoE.");
		EnemyAI enem = coll.GetComponent<EnemyAI>();
        if (enem && losers.Contains(enem)) {
            enem.Speed = enem.originSpeed;
            losers.Remove(enem);
        }
    }

    IEnumerator Die() {
        GetComponent<Collider>().enabled = false;
        if(losers.Count != 0) {
            for (int i = 0; i < losers.Count; i++) { losers[i].Speed = losers[i].originSpeed; }
        }
        losers.Clear();
        ParticleSystem[] partSys = GetComponentsInChildren<ParticleSystem>();
        foreach(ParticleSystem part in partSys) { part.Stop(); }
		GetComponent<SphereCollider>().radius = 0;
		yield return new WaitForSeconds(1f);
        Destroy(gameObject);
    }
}
