using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuManagerInputs : MonoBehaviour {

private const string joystick1 = "joystick 1 button ";
	private const int CROSS = 0;
	private const int CIRCLE = 1;
	private const int SQUARE = 2;
	private const int TRIANGLE = 3;
	private const int SELECT = 6;
	private const int START = 7;
	private const int UP = 8;
	private const int RIGHT = 9;
	private const int DOWN = 10;
	private const int LEFT = 11;

	public int selectedSlot = 1;
	public Color baseColor;
	public Color hilightColor;
		public Color selectedColor;
	public Image slot1;
	public Image slot2;
	public GameObject saveManager;
	public GameObject optionsManager;
	public GameObject ButtonManager;
	public CanvasGroup loaderCanvas;
	public CanvasGroup optionCanvas;
	public CanvasGroup dialogCanvas;
		public CanvasGroup selectedCanvas;
	public GameObject audioManager;
	public float fadeDuration;
	public float targetValue;
	public bool loaderEnabled = false;
	public bool optionEnabled = false;
	public bool dialogEnabled = false;
	public bool delayTimer = false;
	public float timer = 0.0f;
	private float delay = 0.1f;
	public List<AudioClip> clipList;
	public AudioSource audioSource;
	public GameObject currentSelection;
	public GameObject previousSelection;
	public Animator anim;

	// Use this for initialization
	void Start () {
		//set the color of the initially selected slot
		setColor();
		//EventManager.GetComponent<SaveSerial>();
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
	}
	
	// Update is called once per frame
	void Update () {
		//reset button colors to defaults
		if (loaderCanvas.alpha == 0){
			saveManager.GetComponent<SaveManager_Inputs>().timer = 0.0f;
			saveManager.GetComponent<SaveManager_Inputs>().setColor();
			loaderEnabled = false;
			setColor();
			
		}
		if (optionCanvas.alpha == 0){
			optionsManager.GetComponent<OptionsManagerInputs>().timer = 0.0f;
			optionEnabled = false;
			setColor();
		}
		if (dialogCanvas.alpha == 0){
				dialogEnabled = false;
				saveManager.GetComponent<SaveManager_Inputs>().setColor();
				setColor();
			}
		//change button color when we choose an option
		if (loaderCanvas.alpha > 0){
				selectColor();
				loaderEnabled = true;	
			}
			if (optionCanvas.alpha > 0){
				selectColor();
				optionEnabled = true;
			}
			if (dialogCanvas.alpha > 0){
				dialogEnabled = true;
			}

		if ((PauseManager.isPaused) == true && loaderEnabled == false && optionEnabled == false && dialogEnabled == false){
			timer = timer += 0.01f;
		if (timer > delay){
			//Decrement slot by -1 if you press up
			if (Input.GetKeyDown (joystick1 + UP)){
				audioSource.PlayOneShot(clipList[2]);
				if (selectedSlot == 1){
					//set slot to 2 if you are at slot 1 to wrap selection
					selectedSlot = 2;
				}
				//decrement the slot for each up press
				else if (selectedSlot == 2){
					//set slot to 1 if you are at slot 2 to wrap selection
					selectedSlot = 1;
				}
				//set the color of the selected slot
				setColor();
				animateButtons();
			}
			
			//Increment slot by +1 if you press down
			if (Input.GetKeyDown (joystick1 + DOWN)){
				audioSource.PlayOneShot(clipList[3]);
				if (selectedSlot == 2){
					//set slot to 1 if you are at slot 2 to wrap selection
					selectedSlot = 1;
				}
				//increment the slot by 1 for each down press
				else if (selectedSlot == 1){
					//set slot to 1 if you are at slot 2 to wrap selection
					selectedSlot = 2;
				}
				//set the color of the selected slot
				setColor();
				animateButtons();
			}
			
			if (Input.GetKeyDown (joystick1 + CROSS) && loaderEnabled == false && optionEnabled == false){
					audioSource.PlayOneShot(clipList[0]);
					if (selectedSlot == 1){
						animateButtons();
						selectedCanvas = optionCanvas;
						timer = 0.0f;
						StartCoroutine(FadeScreen(1 , 0.0F));
					}
					if (selectedSlot == 2){
					animateButtons();
						selectedCanvas = loaderCanvas;
						timer = 0.0f;
						StartCoroutine(FadeScreen(1 , 0.0F));
					}
					if (selectedSlot == 3){
						//do stuff to confirm return to title
					}
			}

			}
		}
	}		


//this method checks which slot is currently selected and changes the colors of all the slots to give you a hilight 
//on the selected slot
	void setColor(){
		
		if (selectedSlot==1){
			slot1.color = hilightColor;
			slot2.color = baseColor;
		}
		else if (selectedSlot==2){
			slot1.color = baseColor;
			slot2.color = hilightColor;
		}
	}
	void selectColor(){
			if (selectedSlot==1){
			slot1.color = selectedColor;
			slot2.color = baseColor;
		}
		else if (selectedSlot==2){
			slot1.color = baseColor;
			slot2.color = selectedColor;
		}
	}
		void animateButtons(){
		if (selectedSlot == 2){
			currentSelection = GameObject.Find("Options");
			previousSelection = GameObject.Find("New_Game");
			anim = currentSelection.GetComponent<Animator>();
			anim.SetTrigger("MakeBounce");
			previousSelection.GetComponent<Animator>().SetTrigger("SteadyState");
		}
			else anim.SetTrigger("SteadyState");
		
		if (selectedSlot == 1){
			currentSelection = GameObject.Find("New_Game");
			previousSelection = GameObject.Find("Options");
			anim = currentSelection.GetComponent<Animator>();
			anim.SetTrigger("MakeBounce");
			previousSelection.GetComponent<Animator>().SetTrigger("SteadyState");
		}
		else anim.SetTrigger("SteadyState");
	}

	IEnumerator FadeScreen(float targetValue, float duration) {
        float startValue = selectedCanvas.alpha;
        float fadeTime = 0;
		//fade out the loadscreen canvas group
        while (fadeTime < duration)
        {
            selectedCanvas.alpha = Mathf.Lerp(startValue, targetValue, fadeTime / duration);
            fadeTime += Time.deltaTime;
            yield return null;
        }
		selectedCanvas.alpha = targetValue;
	}
}