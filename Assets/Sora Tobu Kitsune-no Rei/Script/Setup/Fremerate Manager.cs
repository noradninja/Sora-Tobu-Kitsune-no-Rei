using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FremerateManager : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (PauseManager.isPaused == true){
			Application.targetFrameRate = 60;
		}
		else Application.targetFrameRate = 30;
	}
}
