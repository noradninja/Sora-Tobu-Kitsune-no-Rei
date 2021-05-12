using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Match_Rotation : MonoBehaviour {
	public GameObject rotator;
	public GameObject water;
	public Renderer rend;
	public Quaternion rotation;
	float yVelocity = 0.0f;
	private Quaternion qTo;

	// Use this for initialization
	void Start () {
		rend = water.GetComponent <Renderer> ();
	
	}
	
	// Update is called once per frame
	void Update () {
		rotation = Quaternion.RotateTowards (rotator.transform.localRotation, qTo, 90.0F * Time.deltaTime); //set up rotation angle
		float oldValue = rotation.eulerAngles.y; //store the current rotation angle
		if (rotator.transform.localRotation == qTo) {
				
				qTo = Quaternion.AngleAxis (90.0F, new Vector3 (0,rotation.eulerAngles.y, 0)) * qTo; //rotate by 90 degrees from current angle
		}
		rend.material.SetFloat("_RotationDegrees", Mathf.SmoothDamp(oldValue, rotation.eulerAngles.y, ref yVelocity, 0.3f)); //pass the angle value to the shader
	}
}
