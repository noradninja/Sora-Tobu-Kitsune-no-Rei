using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/* This script expects a stadard color eg. Color or Albedo in the shader. Use Particles/Stadard Unlit for best results*/

public class General_Blinker : MonoBehaviour {

	public Color dimColor;
	public Color brightColor;
	public Color blinkerColor;
	public Renderer objectRenderer;
	public float repeatRate;
	public bool blinkerOn;

	// Set up values when object is enabled
	void OnEnable () {
		blinkerOn = false; //disable blinking 
		objectRenderer = this.GetComponent<Renderer>();

	}
	
	// Update is called once per frame
	void Update () {
		if(!blinkerOn){
			Blinker(dimColor, brightColor, repeatRate);
		}
	}

	void Blinker(Color startColor, Color endColor, float duration){
		blinkerOn = true;
		StartCoroutine(colorAnimator(startColor, endColor, (repeatRate/4)));
	}

	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		float time = 0;
		while (time < duration){	
				blinkerColor = Color.Lerp(startColor, endColor, time/duration); //lerp the colors from dark to light
				objectRenderer.material.SetColor("_Color", blinkerColor); //get the color of the material and set it to our current lerped value
				time += Time.deltaTime;
				yield return null;
			}
		StopCoroutine("colorAnimator");
		StartCoroutine(colorAnimator(brightColor, dimColor, repeatRate)); //call the routine again to lerp the color back from light to dark, this will cycle until bezerk drops below
	}
}
