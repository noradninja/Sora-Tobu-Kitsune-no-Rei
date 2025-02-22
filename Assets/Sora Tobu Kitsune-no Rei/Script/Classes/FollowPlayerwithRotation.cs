﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowPlayerwithRotation : MonoBehaviour {

	// Use this for initialization	public GameObject Player;
	public GameObject Player;
	private Vector3 playerPosition;
	private Vector3 playerRotation;

	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
			gameObject.transform.rotation = Player.transform.rotation;
			playerPosition = new Vector3 (Player.transform.position.x, Player.transform.position.y, Player.transform.position.z);
			transform.position = playerPosition;
		}
	}
}
