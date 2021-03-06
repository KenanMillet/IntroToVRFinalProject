﻿using UnityEngine;

public class Projectile : MonoBehaviour
{
    [HideInInspector]
    public Transform hitEffect;
	[HideInInspector]
	public Transform idleEffect;
    public Rigidbody respawnEffect;

	[SerializeField]
    private ProjectileType _blueprint;
	public ProjectileType blueprint
	{
		get { return _blueprint; }
		set { _blueprint = value; value.setup(this); }
	}

	public BallSpawner spawner;
    
    public Rigidbody rbody;
    public SphereCollider myColl;
    public MeshRenderer myRend;

    public float damage;

	public bool holstered = true;

    // Use this for initialization
    void Start() {
        blueprint.setup(this);
        rbody.isKinematic = true;
        rbody.useGravity = false;
        Rigidbody newRespawnEff = Instantiate(respawnEffect, transform.position, Quaternion.identity);
        newRespawnEff.angularVelocity = new Vector3(0, 180, 0);
        Destroy(newRespawnEff.gameObject, 3f);
    }

    // Update is called once per frame
    void Update()
    {
		if (transform.position.y < -10f)
        {
			Die();
        }
    }

    void OnCollisionEnter(Collision coll)
    {
        StartCoroutine(blueprint.Die(this, coll));
    }

    public void Die()
    {
        Destroy(gameObject);
    }

	public void CallForNewSpawn()
	{
		if (holstered) spawner.Spawn();
		holstered = false;
	}
}
