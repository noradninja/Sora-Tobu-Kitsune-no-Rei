using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeIn : MonoBehaviour {

	public float time = 2.0f;
	public RawImage img;
	public GameObject Target;
	
	private bool ignore = true;


	// Use this for initialization
	void Start () {
		img = (RawImage)Target.GetComponent<RawImage> ();
		//reduce image alpha value to 0 over time
		img.CrossFadeAlpha (100, time, ignore);
		
	}
}
