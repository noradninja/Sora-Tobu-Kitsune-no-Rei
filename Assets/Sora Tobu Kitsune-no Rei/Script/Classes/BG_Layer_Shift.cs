﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BG_Layer_Shift : MonoBehaviour {

	public GameObject Target;
	public string Stick;
	public float Speed = 1.0F;
	private float tiltAngle = -45.0F;

	// Update is called once per frame
	void Update () {
		float yTarget = Input.GetAxis (Stick + " Stick Vertical") * tiltAngle;
		// Move Recticle
		var move = new Vector3 (0, yTarget, 0);
		Target.transform.position += move * Speed * Time.deltaTime * Speed;

	}
}
