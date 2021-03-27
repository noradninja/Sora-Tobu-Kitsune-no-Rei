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
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (eventManager.GetComponent<Link_System>().newValue >= 0.25f){ //is meter > 25% full
			Blinker();
		}
	}

	void Blinker(){
		StartCoroutine(colorAnimator(dimColor, brightColor, repeatRate)); //blinkenlights
	}

	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		float time = 0;
		if(eventManager.GetComponent<Link_System>().newValue < 0.25f){ //if we're blinking and meter drop below 25%, lerp back to red
			while (time < duration){
				Color currentColor = GetComponent<Image>().color;
				GetComponent<Image>().color = Color.Lerp(currentColor, baseColor, time/duration);
				time += Time.deltaTime;
				yield return null;
			}
			
		}
		while (time < duration){
			GetComponent<Image>().color = Color.Lerp(startColor, endColor, time/duration); //lerp the colors from dark to light
			time += Time.deltaTime;
			yield return null;
		}
	StartCoroutine(colorAnimator(brightColor, dimColor, repeatRate)); //call the routine again to lerp the color back from light to dark, this will cycle until bezerk drops below 25%
	}
}
