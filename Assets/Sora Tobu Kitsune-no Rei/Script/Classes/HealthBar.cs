using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class HealthBar : MonoBehaviour {

	public GameObject playerTemp;
	public float targetValue;
	public Image fillImage;
	public Image endImage;
	public float originalValue;
	public float currentValue;
	public float oldMaskAngle;
	public float maskAngle;
	public float angleCalc;
	public Color newColor;
	public Color finalColor;
	public RectTransform mask;
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
		//get the current amount of health the player has
		targetValue = playerTemp.GetComponent<Actor>().health;
		//convert the player health to a float
		currentValue = (targetValue/100);
		//calculate cap angles
		oldMaskAngle = originalValue * 360;
		maskAngle = currentValue * 360;
		//calculate cap angle change over time
		angleCalc = Mathf.Lerp (oldMaskAngle, maskAngle, 0.1f);
		//set mask angle so blob follows lifebar reduction to eliminate sharp edge
		mask.localEulerAngles = new Vector3(0,0,angleCalc);
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
		//turn off cap when player dies
		if (targetValue == 0.0001f){
			endImage.color = new Vector4(0,0,0,0);
		}
	}
}
