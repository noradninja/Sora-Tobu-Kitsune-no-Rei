using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BossHealthBar : MonoBehaviour {

public GameObject bossBarObject;
public GameObject bossEnemy;
public Image bossHealthBar;
public Image bossHealthBG;
public float originalValue;
public float originalBGValue;
public float currentValue;
public float currentBGValue;
public Color brightColor;
public Color dimColor;
public float repeatRate;
public bool blinkerOn;

	
	// Update is called once per frame
	void Update () {
		if (bossEnemy != null && bossEnemy.activeSelf == true && bossBarObject.activeSelf == false){
			bossBarObject.SetActive(true);
		}
		else if (bossEnemy != null && bossEnemy.activeSelf == false && bossBarObject.activeSelf == true){
			bossBarObject.SetActive(false);
			bossHealthBar.fillAmount = 0.0f;
			bossHealthBG.fillAmount = 0.0f;
		}
		if (bossBarObject.activeSelf == true && bossEnemy != null){
			
			originalValue = bossHealthBar.fillAmount;
			originalBGValue = bossHealthBG.fillAmount;
			currentValue = bossEnemy.GetComponent<Actor>().bossHealth/100.0f;
			currentBGValue = 1-bossEnemy.GetComponent<Actor>().bossHealth/100.0f;
			bossHealthBar.fillAmount = Mathf.Lerp (originalValue, currentValue, 0.1f);	
			bossHealthBG.fillAmount = Mathf.Lerp (originalBGValue, currentBGValue, 0.1f);
		}
		else if (bossBarObject.activeSelf == true && bossEnemy == null){
			originalValue = bossHealthBar.fillAmount;
			originalBGValue = bossHealthBG.fillAmount;
			currentValue = 0.0f;
			currentBGValue = 0.0f;
			bossHealthBar.fillAmount = Mathf.Lerp (originalValue, currentValue, 0.1f);	
			bossHealthBG.fillOrigin = 0;
			bossHealthBG.fillAmount = Mathf.Lerp (originalBGValue, currentBGValue, 0.1f);
			blinkerOn = false;
		}
		if (bossEnemy != null && currentValue <= 0.25f && bossEnemy.GetComponent<Actor>().bossHealth > 0.0001f && !blinkerOn){
			Blinker(dimColor, brightColor, repeatRate);
		}
		
	}
	void Blinker(Color intialColor, Color flashColor, float duration){
		blinkerOn = true;
		StartCoroutine(colorAnimator(intialColor, flashColor, (repeatRate/4)));
	}
	IEnumerator colorAnimator (Color startColor, Color endColor, float duration){
		float time = 0;
		while (time < duration){
			bossHealthBar.color = Color.Lerp(startColor, endColor, time/duration); //lerp the bar colors from dark to light
			time += Time.deltaTime;
			yield return null;
		}
		//if the boss has died, kill the routine
		if (bossEnemy == null){
				StopCoroutine("colorAnimator");
		}
		else StartCoroutine(colorAnimator(brightColor, dimColor, repeatRate)); //call the routine again to lerp the color back from light to dark
	}
}
