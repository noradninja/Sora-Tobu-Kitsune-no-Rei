using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeMe : MonoBehaviour {

public Shader fadeShader;
public Shader defaultShader;
public RaycastHit hit;
public GameObject checkHit;
public GameObject lastHit;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//create ray that aims behind player 10 units
		Ray stencilCheckRay = new Ray(transform.position, (-1*transform.forward));
		//draw ray for debug
		Debug.DrawRay (transform.position, (-1*transform.forward * 10), Color.green);
		//cast a sphere along the ray so you have a larger area to check with- this way your player is never obscured and you 
		//don't have to cast multiple rays
		if (Physics.SphereCast (stencilCheckRay, 4.1f, out hit)) {
			//get the name of the object we hit
			checkHit = GameObject.Find (hit.transform.name);
			//if the tag on the object is a fadeable object
			if (checkHit.tag == "Fade"){
				//set lastHit to the object we are currently hitting
				lastHit = checkHit;
				//switch the shader used on the object to enable the stencil test so object doesn't obscure the player
				checkHit.GetComponent<Renderer>().material.shader = fadeShader;
			}
		}
		//if the current object we are hitting isn't the last object we hit
		if (lastHit != checkHit){
			//restore the shader
			lastHit.GetComponent<Renderer>().material.shader = defaultShader;
		}
	}
}

