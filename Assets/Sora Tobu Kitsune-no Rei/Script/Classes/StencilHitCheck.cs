using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StencilHitCheck : MonoBehaviour {
public bool hitCheck;
public Shader defaultShader;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (!hitCheck){
			this.GetComponent<Renderer>().material.shader = defaultShader;
		}	
	}
	void OnTriggerEnter(){
		hitCheck = true;
	}
	void OnTriggerExit(){
		hitCheck = false;
	}
}
