﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Missile : MonoBehaviour {

	private GameObject Event;
	private List<GameObject> List;
	public GameObject missileTarget;
	private GameObject targetObject;
	public float speed=6.0f;
	public float damage;
	public int targetCount = 0;


	// Use this for initialization

	void Start () {
		//find the event manager
		Event = GameObject.Find ("EventSystem");
		targetObject = GameObject.Find ("Main Camera");
		List = Event.GetComponent<FireControl>().targetList;
	}

	// Update is called once per frame
	void Update () {
		
		targetCount = List.Count;
		float step = speed * Time.deltaTime;
		
		//check that list contains more than 0 items, set target to [List.Count-1] transform, send missile to it
			if ((PauseManager.isPaused) == false){
				if (missileTarget == null){
					Destroy(gameObject);
				}
				else transform.position = Vector3.Slerp (transform.position, missileTarget.transform.position, step);
			}
	}

	public void OnTriggerEnter(Collider other)
	{
		//if you collide with an enemy, remove it from the list
		if (other.tag == "Enemy" || other.tag == "BossSO") {
			//Destroy the missile, and apply its damage to the target
			other.gameObject.BroadcastMessage ("ApplyDamage", damage);
			other.gameObject.BroadcastMessage ("Shot");
			other.gameObject.transform.GetChild (0).gameObject.SetActive(false);
			//List.Remove(other.gameObject);	
			Destroy (gameObject);
		}
		//if missile somehow collides with the player, destroy missile
		if (other.tag == "Player") {
			Destroy (gameObject);
		}
	}
}