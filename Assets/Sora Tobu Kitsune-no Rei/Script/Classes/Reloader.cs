﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Reloader : MonoBehaviour {

	void OnTriggerEnter(Collider other){
		if (other.tag == "Player"){
			SceneManager.LoadScene("Test");
			}
		if (other.tag != "Player") {
			Destroy (other);
		}
	}
}
