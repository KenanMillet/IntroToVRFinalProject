using UnityEngine;

using Valve.VR.InteractionSystem;

public class Projectile : MonoBehaviour
{
    
    public Transform hitEffect;
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

    public int damage;

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
        Transform newHitFX = Instantiate(hitEffect, transform.position, transform.rotation);
        Destroy(newHitFX.gameObject, 2f);
        Destroy(gameObject);
    }

	public void CallForNewSpawn()
	{
		if (holstered) spawner.Spawn();
		holstered = false;
	}
}
