﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGM_Player : MonoBehaviour {

private AudioSource bgmMusic;
private AudioLowPassFilter filter;
//[HideInInspector]
public AudioSource sfxPlayer;
public float scaler;
public float LPFSweepDuration;
	// Use this for initialization
	void Start () {
		filter = GetComponent<AudioLowPassFilter>();
		bgmMusic = GetComponent<AudioSource>();
		sfxPlayer = GameObject.Find("SFXManager_Prefab").GetComponent<AudioSource>();
		bgmMusic.Play(0);
		//Debug.Log("BGM is playing!");
	}
	
	// Update is called once per frame
	void Update () {
		if (PlayerPrefs.GetInt ("SavedOnce") == 1 && PlayerPrefs.HasKey("SavedBGM") && PlayerPrefs.HasKey("SavedSFX")){
		bgmMusic.volume = PlayerPrefs.GetFloat("SavedBGM");
		sfxPlayer.volume = PlayerPrefs.GetFloat("SavedSFX");
		}
		else {
			bgmMusic.volume = 1.0f;
			sfxPlayer.volume = 1.0f;
		}
	}
	//scales audio LPF with time when pausing/unpausing game, called from Buttons.cs when Start is pressed
	public IEnumerator scaleLPF(float endValue, float duration){
		
		float time = 0;
		while (time < duration) {
			filter.cutoffFrequency = Mathf.Lerp(filter.cutoffFrequency, endValue, time / duration);	
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