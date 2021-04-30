using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BG_Parallax : MonoBehaviour {
	public GameObject followPoint;
	public GameObject rotatePoint;

	// Update is called once per frame
	void Update () {
		gameObject.transform.rotation = Quaternion.Euler(gameObject.transform.rotation.x,  (rotatePoint.transform.rotation.y), gameObject.transform.rotation.z);
	}
}
