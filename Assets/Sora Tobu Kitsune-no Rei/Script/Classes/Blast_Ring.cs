using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Blast_Ring : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (gameObject.GetComponent<Animation>().IsPlaying("Blast_Ring") == false){
			Destroy(gameObject);
		}
	}
}
