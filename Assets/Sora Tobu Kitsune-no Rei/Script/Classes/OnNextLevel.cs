using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class OnNextLevel : MonoBehaviour {
	

	public string sceneToLoad;
	public string sceneToUnload;
	AsyncOperation loadingOperation;
	public CanvasGroup canvasGroup;
	public float loadProgress;	
	public float fadeDuration;
	public float fadeValue;
	public bool loading = false;

	

    void Start() {
	SetScenes.sceneToLoad = "LoadScreen";	
	loading = false;
	}

	void Update(){
		//check if we are actually loading a level to avoid spamming the console with nullrefs 
		if (loading == true){
		//Store the load progress
		loadProgress = loadingOperation.progress;
		}
	}

   public IEnumerator StartLoad()
    {
		loading = true;
		//load the level, but don't activate it yet
		loadingOperation = SceneManager.LoadSceneAsync(SetScenes.sceneToLoad, LoadSceneMode.Single);
		loadingOperation.allowSceneActivation = false;
		
		while (loadProgress < 0.9f && !loadingOperation.isDone) {
            yield return null;
        }
		
		//after loadProgress hits 0.9, start fading routine
        yield return StartCoroutine(FadeLoadingScreen(fadeValue, fadeDuration));
		
    }

	IEnumerator FadeLoadingScreen(float targetValue, float duration)
    {
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
      SetScenes.sceneToLoad = SetScenes.nextScene;
    }
}	