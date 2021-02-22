using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BezerkMissile : MonoBehaviour {

	private GameObject Event;
	public List<GameObject> List;
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
		Event = GameObject.Find ("EventSystem");
		//targetObject = GameObject.Find ("Main Camera");
		bezerkMeter = GameObject.Find ("Bezerk_Bar").GetComponent<Image>();
		List = Event.GetComponent<FireControl>().bezerkList;					
	}

	// Update is called once per frame
	void Update () {
		
	float step = speed * Time.deltaTime;
	
	if (Event.GetComponent<FireControl>().bezerkActive || List.Count > 0){
		if ((PauseManager.isPaused) == false){
			if (missileTarget == null) {
				Destroy (gameObject);
			}
			else {
				missileTarget.gameObject.transform.GetChild (0).gameObject.SetActive(true);
				missileTarget.gameObject.transform.GetChild (0).gameObject.transform.GetChild (0).GetComponent<Animation>().Play("Target_Bounce");
				transform.position = Vector3.Slerp (transform.position, missileTarget.transform.position, step);
			}
		}	
	}
	else Destroy (gameObject);
	}

	public void OnTriggerEnter(Collider other)
	{
		//if you collide with an enemy, remove it from the list
		if (other.tag == "Enemy") {
			other.gameObject.BroadcastMessage ("BezerkMissile");
			//Destroy the missile, and apply its damage to the target
			other.gameObject.BroadcastMessage ("ApplyDamage", 2.5f);
			missileTarget.gameObject.transform.GetChild (0).gameObject.SetActive(false);
			//List.Remove (missileTarget);
			Destroy (gameObject);
				//if there are still enemies in the target list and the first item isnt null, generate another missile	
			// if (List.Count > 1 && List[0] != null) {
			// 		Event.gameObject.BroadcastMessage ("fireBezerk");
			// 		Destroy (gameObject);
			// 	} 
		}
		//if missile somehow collides with the player, destroy missile
		if (other.tag == "Player") {
			Destroy (gameObject);
		}

		
	
	}
}
