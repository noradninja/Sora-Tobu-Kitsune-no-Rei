using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Jump : MonoBehaviour {

	public Rigidbody PlayerRB;
	public Rigidbody ReflectionRB;
	public float jumpVelocity;
	public bool isGrounded;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Space) && isGrounded){
			PlayerRB.AddForce(Vector3.up * (jumpVelocity*100000));
			ReflectionRB.AddForce(Vector3.down * (jumpVelocity*100000));
			isGrounded = false;
		}
		
	}

	void OnCollisionStay(){
	isGrounded = true;

	}
}
