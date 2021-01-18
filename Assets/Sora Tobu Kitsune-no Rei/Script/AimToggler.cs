using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AimToggler : MonoBehaviour {
public bool aimToggler = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey(KeyCode.Space) && aimToggler == true){
			print("Fire while holding");
		}
		if (Input.GetKeyDown(KeyCode.Space) && aimToggler == false){
			print("Fire while tapping");
		}
	}
}
