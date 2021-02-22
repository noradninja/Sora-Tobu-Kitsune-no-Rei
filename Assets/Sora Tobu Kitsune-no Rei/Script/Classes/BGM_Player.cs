using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGM_Player : MonoBehaviour {

private AudioSource bgmMusic;
private AudioLowPassFilter filter;
//[HideInInspector]
public float scaler;
[Range(0.0f, 1.0f)]
public float LPFSweepDuration = 0.5f; //we clamp this range because anything > 1.0f causes unpredicatble behavior on the cutoff frequency


	// Use this for initialization
	void Start () {
		filter = GetComponent<AudioLowPassFilter>();
		bgmMusic = GetComponent<AudioSource>();
		bgmMusic.Play(0);
		//Debug.Log("BGM is playing!");
	}
	
	// Update is called once per frame
	void Update () {
		if (PlayerPrefs.GetInt ("SavedOnce") == 1){
		bgmMusic.volume = PlayerPrefs.GetFloat("SavedBGM");
		}
		else bgmMusic.volume = 1.0f;
	}
	//scales audio LPF with time when pausing/unpausing game, called from Buttons.cs when Start is pressed
	public IEnumerator scaleLPF(float endValue){
		
		float time = 0;
		while (time < LPFSweepDuration) {
			filter.cutoffFrequency = Mathf.Lerp(filter.cutoffFrequency, endValue, time / LPFSweepDuration);	
			time += Time.deltaTime;
			yield return null;	
		}
		if (scaler == 0 ){
			//PauseManager.isPaused = true;
		}
		filter.cutoffFrequency = endValue;
		//Debug.Log("Scaling Audio");
	}
}