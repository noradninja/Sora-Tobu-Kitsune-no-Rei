using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BezerkMissile : MonoBehaviour {

	private GameObject eventManager;
	public List<GameObject> bezerkList;
	public GameObject missileTarget;
	//private GameObject targetObject;
	public float speed=6.0f;
	public float damage;
	//public int targetCount = 0;
	//public float current = 0;
	//public int counter;

	private Image bezerkMeter;
	// Use this for initialization

	void Awake () {
		//find the event manager
		eventManager = GameObject.Find ("EventSystem");
		//targetObject = GameObject.Find ("Main Camera");
		eventManager.BroadcastMessage("LinkDecrementor");	
		//Event.GetComponent<FireControl>().firingBezerk = true;	
		missileTarget = eventManager.GetComponent<BezerkControl>().missileTarget;	
		//speed = eventManager.GetComponent<BezerkControl>().missileSpeed;
	}

	// Update is called once per frame
	void Update () {
	//bezerkMeter = GameObject.Find ("Bezerk_Bar").GetComponent<Image>();
	bezerkList = eventManager.GetComponent<BezerkControl>().bezerkList;		
	float step = speed * Time.deltaTime;
	
	
		if ((PauseManager.isPaused) == false){
			if (missileTarget == null) {
				Destroy (gameObject);
			}
			else {
				
				transform.position = Vector3.Slerp (transform.position, missileTarget.transform.position, step);
			}
		}	
	
	else Destroy (gameObject);
	}

	public void OnTriggerEnter(Collider other)
	{
		//if you collide with an enemy, remove it from the list
	
			other.gameObject.BroadcastMessage ("BezerkMissile");
			//Destroy the missile, and apply its damage to the target
			other.gameObject.BroadcastMessage ("ApplyDamage", damage);
			missileTarget.gameObject.transform.GetChild (0).gameObject.SetActive(false);
			Destroy (gameObject);
	
		//if missile somehow collides with the player, destroy missile
		if (other.tag == "Player") {
			Destroy (gameObject);
		}

		
	
	}
}
