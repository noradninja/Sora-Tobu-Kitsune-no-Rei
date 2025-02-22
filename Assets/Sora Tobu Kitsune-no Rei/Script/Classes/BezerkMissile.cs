﻿using System.Collections;
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
		eventManager.BroadcastMessage("LinkDecrementor");	
		missileTarget = eventManager.GetComponent<BezerkControl>().missileTarget;	
	}

	// Update is called once per frame
	void Update () {

	bezerkList = eventManager.GetComponent<BezerkControl>().bezerkList;		
	float step = speed * Time.deltaTime;
	
	
		if (PauseManager.isPaused == false){
			if (missileTarget == null) {
				Destroy (gameObject);
			}
			else {
				
				transform.position = Vector3.Slerp (transform.position, missileTarget.transform.position, step);
			}
		}	
	}

	public void OnTriggerEnter(Collider other)
	{
		//if you collide with an enemy, remove it from the list

			other.gameObject.BroadcastMessage ("BezerkMissile");
			//Destroy the missile, and apply its damage to the target
			other.gameObject.BroadcastMessage ("ApplyDamage", damage);
			missileTarget.gameObject.transform.GetChild (0).gameObject.SetActive(false);
			eventManager.GetComponent<BezerkControl>().bezerkList.Remove(missileTarget);
			eventManager.GetComponent<BezerkControl>().hitCount++;
			Destroy (gameObject);
	
		//if missile somehow collides with the player, destroy missile
		if (other.tag == "Player") {
			Destroy (gameObject);
		}
	}
}
