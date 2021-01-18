using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GameOverButtons : MonoBehaviour {

	private const string joystick1 = "joystick 1 button ";
	private const int CROSS = 0;
	AsyncOperation loadingOperation;
	public CanvasGroup canvasGroup;
	public float fadeDuration;
	public float loadProgress;	
	public bool loading = false;


	// Use this for initialization
	void Start () {
	SetScenes.sceneToLoad = "LoadScreen";
	}
	
	// Update is called once per frame
	void Update () {		
		//start loading coroutine if X is pressed
		if (Input.GetKeyDown (joystick1 + CROSS)){
			StartCoroutine(StartLoad());
		}
		//check if we are actually loading a level to avoid spamming the console with nullrefs 
		if (loading==true){
			//Store the load progress
		loadProgress = loadingOperation.progress;
		}
	}
	

	IEnumerator StartLoad() {
		loading = true;
		//load the level, but don't activate it yet
		loadingOperation = SceneManager.LoadSceneAsync(SetScenes.sceneToLoad, LoadSceneMode.Single);
		loadingOperation.allowSceneActivation = false;
		
		while (loadProgress < 0.9f && !loadingOperation.isDone) {
            yield return null;
        }
		
		//after loadProgress hits 0.9, start fading routine
        yield return StartCoroutine(FadeLoadingScreen(1, fadeDuration));
		
    }

	IEnumerator FadeLoadingScreen(float targetValue, float duration) {
        float startValue = canvasGroup.alpha;
        float time = 0;

		//fade out the loadscreen canvas group
        while (time < duration)
        {
            canvasGroup.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
            time += Time.deltaTime;
            yield return null;
        }
		canvasGroup.alpha = targetValue;
		//activate the scene
		loadingOperation.allowSceneActivation = true;
		//if loading is done, activate the level and unload the loader
		if(loadingOperation.isDone) {
			SceneManager.SetActiveScene(SceneManager.GetSceneByName(SetScenes.sceneToLoad));
			SceneManager.UnloadSceneAsync(SceneManager.GetSceneByName(SetScenes.sceneToUnload));
		}	
		//reload the current scene because you died
   		SetScenes.sceneToLoad = SetScenes.currentScene;
	}
}