using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Bezerk_Blinker : MonoBehaviour {

	public Color baseColor;
	public Color dimColor;
	public Color brightColor;
	public GameObject eventManager;
	public float repeatRate;
	public bool blinkerOn = false;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (eventManager.GetComponent<BezerkControl>().meterCharged == true && blinkerOn == false){ //is meter > 25% full
			Blinker(baseColor, dimColor, repeatRate);
		}
	}

	void Blinker(Color intialColor, Color flashColor, float duration){
		StartCoroutine(colorAnimator(intialColor, flashColor, (repeatRate/4)));
	}

	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		float time = 0;
		if(eventManager.GetComponent<BezerkControl>().meterCharged == false){ //if we're blinking and meter drop below 25%, lerp back to red
			blinkerOn = false;
			while (time < duration){
				Color currentColor = GetComponent<Image>().color;
				GetComponent<Image>().color = Color.Lerp(currentColor, baseColor, (time/duration)*4);
				time += Time.deltaTime;
				yield return null;
			}
		}
		else{
			time = 0;
			while (time < duration){
				blinkerOn = true;
				GetComponent<Image>().color = Color.Lerp(startColor, endColor, time/duration); //lerp the colors from dark to light
				time += Time.deltaTime;
				yield return null;
			}
		}
		StopCoroutine("colorAnimator");
		StartCoroutine(colorAnimator(brightColor, dimColor, repeatRate)); //call the routine again to lerp the color back from light to dark, this will cycle until bezerk drops below
	}
}
