using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Parallax_BG : MonoBehaviour {
	public GameObject copyObject;
	public GameObject mainCamera;

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		copyObject.transform.localRotation = mainCamera.transform.localRotation;
	}
}
