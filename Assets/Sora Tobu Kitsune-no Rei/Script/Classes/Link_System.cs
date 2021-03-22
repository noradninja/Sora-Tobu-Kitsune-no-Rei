using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Link_System : MonoBehaviour {

public int linkCount;
public int totalLinkCount;
public int currentBonus;
public int bonusCount;
public float time;
public int endingLinkCount;
public int endingBonusCount;
public float delayTimer;
public CanvasGroup bezerkCanvas;
public TextMeshProUGUI linkText;
public GameObject audioManager;
public List<AudioClip> clipList;
public AudioSource audioSource;
public Image bezerkMeter;
public Image bezerkMeterBG;
public Color restoreColor;
private Animation anim;
public float newValue = 1.0f;
private float originalValue;
private float bgOriginalvalue;
public List<GameObject> bezerkList;

	// Use this for initialization
	void Start () {
		bezerkList = gameObject.GetComponent<BezerkControl>().bezerkList;
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		anim = linkText.GetComponent<Animation>();
		bezerkMeter.fillAmount = 0.0f;
		bezerkMeterBG.fillAmount = 1.0f;
	}
	
	void Update (){
		originalValue = bezerkMeter.fillAmount;
		bgOriginalvalue = bezerkMeterBG.fillAmount;
		bezerkMeter.fillAmount = Mathf.Lerp(originalValue, newValue, 0.1f);
		bezerkMeterBG.fillAmount = Mathf.Lerp(bgOriginalvalue, 1-newValue, 0.1f);
		//Update link count text or blank it if link delay has expired
		if (linkCount > 1){
				linkText.text = (linkCount + " Link");
		}
		else if (linkCount == 0){
			linkText.text = ("");
		}
		
	}
	public void LinkIncrementer () {
		StartCoroutine(IncrementCount());
	}
	public void LinkDecrementor (){
		newValue = originalValue - 0.08f;	
	}
	public void resetBar(){
		newValue = 0.0f;
		gameObject.GetComponent<BezerkControl>().bezerkActive = false;
		StartCoroutine(Fader(0.0f, 0.5f));
		//BroadcastMessage("bezerkOff");
	}
	public IEnumerator Fader(float targetValue, float duration){
        float startValue = bezerkCanvas.alpha;
        float time = 0;
		//fade out the menu canvas group
		while (time < duration){
			bezerkCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
			time += Time.deltaTime;
			yield return null;
		}
	}	 	
	public IEnumerator IncrementCount(){
		//This is called when an enemy dies, and we increment linkCount as they are destroyed, and increment a time counter between each destruction.
		linkCount += 1;
		newValue = originalValue + (linkCount * 0.025f);
		//Play back ever increasing SFX tones based on the number of successive links you earn
		if (linkCount == 2){
		audioSource.PlayOneShot(clipList[9]);
		anim.Play("Text_Bounce");
		}
		if (linkCount == 3){
			audioSource.PlayOneShot(clipList[10]);
			anim.Play("Text_Bounce");
		}
		if (linkCount > 3){
			audioSource.PlayOneShot(clipList[11]);
			anim.Play("Text_Bounce");
		}
		//start timer incrementor
		StartCoroutine(WaitCalculate());
		yield return null;
	}	public IEnumerator WaitCalculate(){
		//increment a timer to create a window for adding to linkCount
		while (time <= delayTimer){
					time += Time.deltaTime;
			yield return null;
		}	
		//If the counter goes beyond a set delay value, we want to add linkCount to totalLinkCount, and reset linkCount and time to 0 
		
		
		if (time >= delayTimer){
			//add current linkCount to totalLinkCount
			totalLinkCount += linkCount;
			//Calculate currentBonus based on linkCount
			currentBonus = (totalLinkCount + Mathf.RoundToInt(linkCount/2));
			time = 0;	
		}
			
		
		endingLinkCount += totalLinkCount;
		bonusCount += currentBonus;
		endingBonusCount = ((bonusCount - endingLinkCount));
		
		
		currentBonus = 0;
		totalLinkCount = 0;
		linkCount = 0;

		yield return null;
	}
		
}
