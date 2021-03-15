using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeMe : MonoBehaviour {

public Shader fadeShader;
public Shader defaultShader;

[Range (-10,10)]
public float stencilCheckOffset;
[Range (1,10)]
public float stencilCheckDiameter;
private RaycastHit hit;
public GameObject checkHit;
public GameObject lastHit;
public bool isHitting = false;

	// Update is called once per frame
void Update () {
	int maskLayer = 1 << 11; //this is a bitshift check to ignore objects in layers that don't contain enemies
	//create ray that aims behind player 10 units, with an adjustable offset on the Z axis
	Ray stencilCheckRay = new Ray(transform.position + (stencilCheckOffset*transform.forward), (-1*transform.forward));
	//draw ray for debug
	Debug.DrawRay (transform.position + (stencilCheckOffset*transform.forward), (-1*transform.forward * 20f), Color.green);
	//cast a sphere along the ray so you have a larger area to check with- this way your player is never obscured and you don't have to cast multiple rays
		if (Physics.SphereCast (stencilCheckRay, stencilCheckDiameter, out hit, 20f, maskLayer, QueryTriggerInteraction.Collide)) {
			//get the name of the object we hit
			checkHit = GameObject.Find (hit.transform.name);
			//if we havent hit anything previously, change the shader on the curent hit to the stencil check
			if (lastHit == null){
			//switch the shader used on the object to enable the stencil test so object doesn't obscure the player
			checkHit.GetComponent<Renderer>().material.shader = fadeShader;
			lastHit = checkHit;
			}
			//if our last hit and the current hit are the same, keep the shader set to the stencil check and set our last hit to the current one
			else if (lastHit.GetInstanceID() == checkHit.GetInstanceID()){
				checkHit.GetComponent<Renderer>().material.shader = fadeShader;
				lastHit = checkHit;
			}
			//if our last hit and current hit are different, restore the non stencil shader on the last hit and keep our last hit
			else if (lastHit.GetInstanceID() != checkHit.GetInstanceID()){
				lastHit.GetComponent<Renderer>().material.shader = defaultShader;
				checkHit.GetComponent<Renderer>().material.shader = fadeShader;
				lastHit = checkHit;
			}
			isHitting = true;
		}
		else isHitting = false;
	}
}

