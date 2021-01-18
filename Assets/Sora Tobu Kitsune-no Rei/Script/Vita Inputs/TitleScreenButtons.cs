using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using TMPro;

public class TitleScreenButtons : MonoBehaviour {

	private const string joystick1 = "joystick 1 button ";
	private const int CROSS = 0;
	private const int CIRCLE = 1;
	private const int START = 7;
	AsyncOperation loadingOperation;
	public CanvasGroup canvasGroup;
	public float fadeDuration;
	public GameObject eventManager;
	public GameObject saveManager;
	public GameObject menuManager;
	public CanvasGroup menuCanvas;
	public CanvasGroup saveCanvas;
	public CanvasGroup optionCanvas;
	public GameObject audioManager;

	public bool inputEnabled = false;

	public List<AudioClip> clipList;
	public AudioSource audioSource;
	public TextMeshProUGUI startText;
	private Animation anim;
	private GameObject mainCam;
	private GameObject bgCam;




	// Use this for initialization
	void Start () {
		//delay input white title fades in
		StartCoroutine(InputDelay());
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		audioSource = GetComponent<AudioSource>();
		anim = startText.GetComponent<Animation>();
		mainCam = GameObject.Find("Main Camera");
		bgCam = GameObject.Find("BG Camera");
	}
	
	// Update is called once per frame
	void Update () {	
		//Enable/disable ingame cameras when menus are on/offscreen	
		if (menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled == true){
			mainCam.SetActive(false);
			bgCam.SetActive(false);
		}
			if (menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled == false){
			mainCam.SetActive(true);
			bgCam.SetActive(true);
		}

		//if we are at the title sceeen and hit start, fade in the main menu
		if ((Input.GetKeyDown (joystick1 + START) || Input.GetKeyDown(KeyCode.Space)) && PauseManager.isPaused == false && menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled == false && inputEnabled == true){
			anim.Play("Text_Bounce");
			StartCoroutine(FadeLoadingScreen(1, fadeDuration));
			menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled = true;
			audioSource.PlayOneShot(clipList[0]);
			PauseManager.isPaused = true;

		}
		//fade out the menu screen if we are in the main menu and hit Circle 
		if (Input.GetKeyDown (joystick1 + CIRCLE) && inputEnabled == true){
			if (menuManager.GetComponent<StartMenuManagerInputs>().loaderEnabled == false && menuManager.GetComponent<StartMenuManagerInputs>().optionEnabled == false){
				StartCoroutine(FadeLoadingScreen(0,0.5f));
				saveManager.gameObject.BroadcastMessage("setColor");
				menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled = false;
				menuManager.GetComponent<StartMenuManagerInputs>().loadDialogEnabled = false;
				audioSource.PlayOneShot(clipList[1]);
				PauseManager.isPaused = false;
			}
			//if we are in the save/load menu with no dialog and hit Circle, fade back to the main menu
			else if (menuManager.GetComponent<StartMenuManagerInputs>().loaderEnabled == true && menuManager.GetComponent<StartMenuManagerInputs>().loadDialogEnabled == false){
				saveCanvas.alpha = 0;
				menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled = true;
				menuManager.GetComponent<StartMenuManagerInputs>().loaderEnabled = false;
				audioSource.PlayOneShot(clipList[1]);
			}
			//if we are in the save/load menu with a dialog and hit Circle, close the dialog
			else if (menuManager.GetComponent<StartMenuManagerInputs>().loaderEnabled == true && menuManager.GetComponent<StartMenuManagerInputs>().loadDialogEnabled == true){
				menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled = true;
				menuManager.GetComponent<StartMenuManagerInputs>().loaderEnabled = true;
				menuManager.GetComponent<StartMenuManagerInputs>().loadDialogEnabled = false;
				menuManager.GetComponent<StartMenuManagerInputs>().loadDialogGroup.GetComponent<CanvasGroup>().alpha = 0;
				audioSource.PlayOneShot(clipList[1]);
			}
			//if we are in the options menu and hit circle, fade back to the main menu
			else if (menuManager.GetComponent<StartMenuManagerInputs>().optionEnabled == true){
				optionCanvas.alpha = 0;
				menuManager.GetComponent<StartMenuManagerInputs>().menuEnabled = true;
				menuManager.GetComponent<StartMenuManagerInputs>().optionEnabled = false;
				PlayerPrefs.Save();
				audioSource.PlayOneShot(clipList[1]);
			}
		}
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
    }
	IEnumerator InputDelay(){
		float duration = 9.5f;
		float time = 0.0f;
		//burn some time before flagging input as enabled, so title screen can fade in comletely before menu can be brought up
		while (time < duration){
			time +=Time.deltaTime;
			//print (time);
            yield return null;
		}
		inputEnabled = true;
	}
}