using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Fadeout : MonoBehaviour {
	public float delay = 0.0f;
	public float time = 2.0f;
	public RawImage img;
	public GameObject Target;
	private bool ignore = true;


	// Use this for initialization
	
	void Start () {
		//Execute Wait coroutine
		StartCoroutine(Wait());
		//Grab image to fade out
		img = (RawImage)Target.GetComponent<RawImage> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	IEnumerator Wait(){
		//allow for a wait period before crossfading
		yield return new WaitForSeconds(delay);
		//reduce image alpha value to 0 over time
		img.CrossFadeAlpha (0, time, ignore);
	}
}
