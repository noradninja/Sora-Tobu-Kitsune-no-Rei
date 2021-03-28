using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Particle_Pauser : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if(PauseManager.isPaused == true){
			gameObject.GetComponent<ParticleSystem>().Pause();
		}
	}

	void Resume(){
		gameObject.GetComponent<ParticleSystem>().Play();
	}
}
