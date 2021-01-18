using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dupe_Rotation : MonoBehaviour {
	public GameObject duplicatedObject;
	public float yRot;
	public float oldYrot;
	
	// Use this for initialization
	void Start () {
		yRot = gameObject.transform.localRotation.y;
	}

	// Update is called once per frame
	void Update () {
		yRot = gameObject.transform.localRotation.y;
		yRot = (oldYrot + duplicatedObject.transform.rotation.y);
		gameObject.transform.localRotation = Quaternion.Euler (gameObject.transform.localRotation.x, yRot, gameObject.transform.localRotation.z); 
		oldYrot = yRot;
	}
}
