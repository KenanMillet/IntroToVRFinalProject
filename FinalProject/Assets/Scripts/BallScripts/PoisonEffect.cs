using System.Collections.Generic;
using UnityEngine;

public class PoisonEffect : MonoBehaviour
{
	[HideInInspector]
	public float duration;
    float startTime;
	[HideInInspector]
	public float damagePerSecond;

	public float rotationspeed = 15;

	void Start() {
        startTime = Time.time;
    }

    void Update() {
        if(Time.time - startTime >= duration) { Die(); }
		transform.Rotate(transform.up, Time.deltaTime * rotationspeed);
	}

	void OnTriggerStay(Collider coll)
    {
		Debug.Log(coll.name + " entered the cold AoE.");
        EnemyAI enem = coll.GetComponent<EnemyAI>();
        if (enem) {
			enem.damage(damagePerSecond * Time.deltaTime);
        }
    }

    void Die() {
        GetComponent<Collider>().enabled = false;
        ParticleSystem[] partSys = GetComponentsInChildren<ParticleSystem>();
        foreach(ParticleSystem part in partSys) { part.Stop(); }
		GetComponent<SphereCollider>().radius = 0;
        Destroy(gameObject);
    }
}
