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


	// Use this for initialization
	void Start () {
		FireController = GameObject.Find ("EventSystem").GetComponent("FireControl");
		//find the position of the reticle
		Vector3 position = Reticle.transform.position;
		reticleX = position.x;
		reticleY = position.y;
		Ray[] raysx = new Ray[16];
		//Ray[] negraysx = new Ray[16]; 
		Ray[] raysy = new Ray[16];
		//Ray[] negraysy = new Ray[16]; 
		noTarget = Camera.main.ScreenToWorldPoint (new Vector3 (reticleX, reticleY, Camera.main.farClipPlane));

		for (int i=1; i<16; i ++){

			raysx [i] = Camera.main.ScreenPointToRay (new Vector3 (reticleX + i, reticleY, 0));

			if (Physics.Raycast (raysx[i], out hit, 45)) {
				Debug.DrawRay (raysx[i].origin,	 raysx[i].direction * 45, Color.yellow);
				if (hit.transform.tag == "Enemy") {
					target = GameObject.Find (hit.transform.name);
				}
			}
		}	
		for (int j=1; j<16; j ++){

			raysy [j] = Camera.main.ScreenPointToRay (new Vector3 (reticleX, reticleY + j, 0));

			if (Physics.Raycast (raysy[j], out hit, 45)) {
				Debug.DrawRay (raysy[j].origin, raysy[j].direction * 45, Color.yellow);
				if (hit.transform.tag == "Enemy") {
					target = GameObject.Find (hit.transform.name);
				}
			}
		}	
		for (int k=1; k<16; k ++){

			raysx [k] = Camera.main.ScreenPointToRay (new Vector3 (reticleX - k, reticleY, 0));

			if (Physics.Raycast (raysx[k], out hit, 45)) {
				Debug.DrawRay (raysx[k].origin, raysx[k].direction * 45, Color.yellow);
				if (hit.transform.tag == "Enemy") {
					target = GameObject.Find (hit.transform.name);
				}
			}
		}	
		for (int l=1; l<16; l ++){

			raysy [l] = Camera.main.ScreenPointToRay (new Vector3 (reticleX, reticleY - l, 0));

			if (Physics.Raycast (raysy[l], out hit, 45)) {
				Debug.DrawRay (raysy[l].origin, raysy[l].direction * 45, Color.yellow);
				if (hit.transform.tag == "Enemy") {
					target = GameObject.Find (hit.transform.name);
				}
			}
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
		if (target.transform.tag == "Enemy") {
			transform.position = Vector3.MoveTowards (transform.position, target.transform.position, step);
		} else if (target.transform.tag == "Enviro") {
			transform.position = Vector3.MoveTowards (transform.position, noTarget, step);
		} else {
			transform.position = Vector3.MoveTowards (transform.position, noTarget, step);
		}
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


