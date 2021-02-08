using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour {

	private Vector3 point;
	private RaycastHit hit;
	private float reticleX = 0.0f;
	private float reticleY = 0.0f;
	private int spanCount = 0;
	private Vector3 noTarget;
	
	public float damage = 10.0f;
	public GameObject target;
	public GameObject Reticle;
	public float speed=6.0f;
	public int lifespan = 180;
	public Component FireController;
	private GameObject checkHit;


	// Use this for initialization
	void Start () {
		FireController = GameObject.Find ("EventSystem").GetComponent("FireControl");
		//find the position of the reticle
		Vector3 position = Reticle.transform.position;
		reticleX = position.x;
		reticleY = position.y;
		noTarget = Camera.main.ScreenToWorldPoint (new Vector3 (reticleX, reticleY, Camera.main.farClipPlane));

		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies

        // set up targeting ray
        Ray targetingRay = new Ray();
        // cast ray from camera through location of targeting reticle sprite
        targetingRay = Camera.main.ScreenPointToRay(new Vector3(reticleX, reticleY, 0));
        // draw for debug purposes
        Debug.DrawRay(targetingRay.origin, targetingRay.direction * 45f, Color.yellow);
        // cast a sphere along the length of the ray
        if (Physics.SphereCast(targetingRay, 0.5f, out hit, 45f, maskLayer))
        {
            // get the name of the object we hit
        	checkHit = GameObject.Find(hit.transform.name);
                print("There is a new collision with " + checkHit.transform.name + " in front of the reticle!");
                // make the enemy a target for a missile
               target = checkHit;
        }
	}
		
	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
		float step = speed * Time.deltaTime;
		spanCount += 1;
		//if the bullet has reached the maximum lifespan, destroy it
		if (spanCount == lifespan) {
			Destroy (gameObject);
		}
		//if reticle is over an enemy, get its position and fire the
		//bullet from the spawn point to the enemy position
		if (target == null) {
			//Destroy (gameObject);
			return;
		}
		if (target == checkHit) {
			transform.position = Vector3.MoveTowards (transform.position, target.transform.position, step);
		} 
		else transform.position = Vector3.MoveTowards (transform.position, noTarget, step);
		}
	}

	public void OnTriggerEnter(Collider other)
	{
		//if bullet hits and enemy, destroy the bullet and apply damage to enemy
		if (other.tag == "Enemy") {
			Destroy (gameObject);
			other.gameObject.BroadcastMessage ("ApplyDamage", damage); 
			//Debug.Log ("Bullet collided with " + other.gameObject.name);
		}
		// if the bullet hits a missile or another bullet, destroy the bullet 
		if (other.tag == "Bullet" || other.tag == "Missile") {
			Destroy (gameObject);
		}
	}
	
	public void ApplyDamage(float damage){
		//This is so bullets dont break the game if they collide due to broadcasting damage to each other
		return;
	}
}


