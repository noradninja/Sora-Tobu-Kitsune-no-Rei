using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Bezerk_Blinker : MonoBehaviour {

	public Color baseColor;
	public Color brightColor;
	public GameObject eventManager;
	public float repeatRate;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (eventManager.GetComponent<Link_System>().newValue >= 0.25f){
			Blinker();
		}
	}

	void Blinker(){
		StartCoroutine(colorAnimator(baseColor, brightColor, repeatRate));
	}

	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		if(eventManager.GetComponent<Link_System>().newValue < 0.25f){
			GetComponent<Image>().color = baseColor;
			yield break;
		}
		float time = 0;
		while (time < duration){
			GetComponent<Image>().color = Color.Lerp(startColor, endColor, time/duration);
			time += Time.deltaTime;
			yield return null;
		}
	StartCoroutine(colorAnimator(brightColor, baseColor, repeatRate));	
	}
}
