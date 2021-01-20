using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeMe : MonoBehaviour {

public Shader fadeShader;
public Shader defaultShader;
private RaycastHit hit;
private GameObject hitObject;
private GameObject lastObject;


	// Update is called once per frame
	void Update () {
		//create ray that aims behind player 10 units
		Ray stencilCheckRay = new Ray(transform.position, (-1*transform.forward));
		//draw ray for debug
		Debug.DrawRay (transform.position, (-1*transform.forward * 10), Color.green);
			//if the ray hits something
			if (Physics.Raycast (stencilCheckRay, out hit)) {
				//get the name of the object we hit
				hitObject = GameObject.Find (hit.transform.name);
				//if the tag on the object is a fadeable object
				if (hitObject.tag == "Fade"){
					//set lastHit to the object we are currently hitting
					lastObject = hitObject;
					//switch the shader used on the object to enable the stencil test so object doesn't obscure the player
					hitObject.GetComponent<Renderer>().material.shader = fadeShader;
				}
			}
			//if the current object we are hitting isn't the last object we hit
			if (lastObject != hitObject){
				//restore the shader on the last object so stencil testing is diabled so that it only happens when the object is between the player and camera
				lastObject.GetComponent<Renderer>().material.shader = defaultShader;
			}
	}
}

