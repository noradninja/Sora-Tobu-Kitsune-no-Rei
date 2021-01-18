using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BG_Parallax : MonoBehaviour {
	public GameObject followPoint;
	public GameObject rotatePoint;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		gameObject.transform.rotation = Quaternion.Euler(gameObject.transform.rotation.x,  (rotatePoint.transform.rotation.y), gameObject.transform.rotation.z);
		//playerRotation = new Vector3 (followPoint.transform.position.x, followPoint.transform.position.y, followPoint.transform.position.z);
	}
}
