using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class HealthBar : MonoBehaviour {

	public GameObject playerTemp;
	public Color baseColor;
	public Color dimColor;
	public Color brightColor;
	public float repeatRate;
	public Image fillImage;
	public Image endImage;
	public float originalValue;
	public float currentValue;
	public float oldCapAngle;
	public float capAngle;
	public float angleCalc;
	public Color newColor;
	public Color finalColor;
	public RectTransform capRotationPoint;
	private float r;
	private float g;
	private float b;

	// Use this for initialization
	void Start () {
		//find the player
		playerTemp = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () {
		originalValue = fillImage.fillAmount;
		//convert the player health to a float
		currentValue = (playerTemp.GetComponent<Actor>().health/100.0f);
		//calculate cap angles
		oldCapAngle = originalValue * 360.0f;
		capAngle = currentValue * 360.0f;
		//calculate cap angle change over time
		angleCalc = Mathf.Lerp (oldCapAngle, capAngle, 0.1f);
		//set mask angle so blob follows lifebar reduction to eliminate sharp edge
		capRotationPoint.localEulerAngles = new Vector3(0,0,angleCalc);
		//adjust the size of the lifebar/cap based on the health amount the player has with change over time
		fillImage.fillAmount = Mathf.Lerp (originalValue, currentValue, 0.1f);
		//calculate lifebar/cap color based on health value
		newColor = new Color ((1.205f-currentValue),((currentValue-0.4075f)),(currentValue-0.55f), 1.0f);
		//Set color of lifebar/cap based on newColor
		//apply those values to finalColor
		finalColor = Color.Lerp(fillImage.color, newColor, 0.1f);
		//apply finalColor to lifebar/cap
		fillImage.color = finalColor;
		endImage.color = finalColor;
		// if (currentValue <= 0.25f && playerTemp.GetComponent<Actor>().health != 0.0001f){
		// 	Blinker(baseColor, dimColor, repeatRate);
		// }
		//turn off cap when player dies
		if (playerTemp.GetComponent<Actor>().health <= 0.0001f){
			endImage.color = new Vector4(0,0,0,0);
		}
	}

	void Blinker(Color intialColor, Color flashColor, float duration){
		StartCoroutine(colorAnimator(intialColor, flashColor, (repeatRate/4)));
	}
	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		float time = 0;
		while (time < duration){
			fillImage.color = Color.Lerp(startColor, endColor, time/duration); //lerp the colors from dark to light
			endImage.color = Color.Lerp(startColor, endColor, time/duration); //lerp the colors from dark to light
			time += Time.deltaTime;
			yield return null;
		}
	StopCoroutine("colorAnimator");
	StartCoroutine(colorAnimator(brightColor, dimColor, repeatRate)); //call the routine again to lerp the color back from light to dark, this will cycle until bezerk drops below
	}
}
