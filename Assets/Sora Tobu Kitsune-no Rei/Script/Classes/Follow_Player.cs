using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Follow_Player : MonoBehaviour {
	public GameObject Player;
	//public GameObject parentRotator;
	private Vector3 playerPosition;
	private Vector3 playerRotation;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
		gameObject.transform.localRotation = Player.transform.localRotation;
		playerPosition = new Vector3 (Player.transform.position.x, Player.transform.position.y, Player.transform.position.z);
		gameObject.transform.position = playerPosition;
	}
	}
}
