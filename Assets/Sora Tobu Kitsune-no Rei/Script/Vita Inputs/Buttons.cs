using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using TMPro;
using NprPaintFilter;
public class Buttons : MonoBehaviour {


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
	private Quaternion qTo;
	private RawImage img;
	private RawImage img2;
	private GameObject playerTemp;
	
	//public bool PauseManager.isPaused = false;
	public Text myguiText;
	public Text pauseguiText;
	public Text indicatorText;
	public GameObject left;
	public GameObject right;
	public GameObject Cam_Rotate_Point;
	public GameObject Player;
	public GameObject FireControl;
	public Texture Unlocked;
	public Texture Blank;
	public GameObject Target;
	public GameObject Target2;
	public GameObject eventManager;
	public GameObject BGMManager;
	public GameObject saveManager;
	public GameObject menuManager;
	public CanvasGroup menuCanvas;
	public CanvasGroup saveCanvas;
	public CanvasGroup optionCanvas;
	public Canvas textCanvas;
	public GameObject audioManager;
	public List<AudioClip> clipList;
	public AudioSource audioSource;
	public enum SelectedEnemy{enemy, mpBoss, mtBoss};
	public SelectedEnemy enemyGroup = SelectedEnemy.enemy;
	public GameObject[] enemyTypes;
	public int screenWidth = 960;
	public int screenHeight = 544;
	[Range (1.0f, 2.0f)]
	public float divisionFactor = 1.0f;
	public bool enablePaint = true;
	public bool enableDoF = true;
	private TextMeshProUGUI currentRes;
	private GameObject mainCam;
	private GameObject bgCam;
	private GameObject miniMapCam;
	private GameObject overlayCam;
	private Camera aaCam;
	public bool canFire = true;
	private string paintOn = "Paint Effect On";
	private string paintOff = "Paint Effect Off";
	private string depthOn = "Depth Effect On";
	private string depthOff = "Depth Effect Off";



	// Use this for initialization
	void Start(){
		
		mainCam = GameObject.Find("Main Camera");
		bgCam = GameObject.Find("Skybox_Geo_Camera");
		miniMapCam = GameObject.Find("MiniMap_Camera");
		overlayCam =  GameObject.Find("Overlay_Camera");
		img = (RawImage)Target.GetComponent<RawImage> ();
		img2 = (RawImage)Target2.GetComponent<RawImage> ();	
		playerTemp = GameObject.Find("Player");
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		screenWidth = Mathf.RoundToInt(screenWidth/divisionFactor);
		screenHeight = Mathf.RoundToInt(screenHeight/divisionFactor);
		}
	// Update is called once per frame
	void Update () {
	//Enable/disable ingame cameras when menus are on/offscreen	
	if (PauseManager.isPaused == true){
		mainCam.SetActive(false);
		bgCam.SetActive(false);
		overlayCam.SetActive(false);
		miniMapCam.SetActive(false);
	}	
	if (PauseManager.isPaused == false){
		mainCam.SetActive(true);
		bgCam.SetActive(true);
		overlayCam.SetActive(true);
		miniMapCam.SetActive(true);
	}

	if (PauseManager.isPaused == false) {	//ignore all inputs in game world if game is paused 
	if (enablePaint == true && enableDoF == false){
		indicatorText.text = (paintOn + " / " + depthOff);// + " / Threshold: " + mainCam.GetComponent<FXAA>().Threshold);
	}
	if (enablePaint == false && enableDoF == false){
		indicatorText.text = (paintOff + " / " + depthOff);// + " / Threshold: " + mainCam.GetComponent<FXAA>().Threshold);
	}
	if (enablePaint == true && enableDoF == true){
		indicatorText.text = (paintOn + " / " + depthOn);// + " / Threshold: " + mainCam.GetComponent<FXAA>().Threshold);
	}
	if (enablePaint == false && enableDoF == true){
		indicatorText.text = (paintOff + " / " + depthOn);// + " / Threshold: " + mainCam.GetComponent<FXAA>().Threshold);
	}
		if (Input.GetKeyDown (joystick1 + UP) || (Input.GetKeyDown(KeyCode.UpArrow))){
			switch (enemyGroup){
			 	case SelectedEnemy.enemy:
				 	enemyGroup = SelectedEnemy.mpBoss;
					if (enemyTypes[0] !=null){	
					enemyTypes[0].SetActive(false); 
					}
					if (enemyTypes[1] !=null){
						enemyTypes[1].SetActive(true);
					}
					if (enemyTypes[2] !=null){
					enemyTypes[2].SetActive(false);
					}
					break;
				case SelectedEnemy.mpBoss:
					enemyGroup = SelectedEnemy.mtBoss;
					if (enemyTypes[0] !=null){	
					enemyTypes[0].SetActive(false); 
					}
					if (enemyTypes[1] !=null){
						enemyTypes[1].SetActive(false);
					}
					if (enemyTypes[2] !=null){
					enemyTypes[2].SetActive(true);
					}
					break;
				case SelectedEnemy.mtBoss:
					enemyGroup = SelectedEnemy.enemy;
				if (enemyTypes[0] != null){
						if (enemyTypes[0] !=null){	
					enemyTypes[0].SetActive(true); 
					}
					if (enemyTypes[1] !=null){
						enemyTypes[1].SetActive(false);
					}
					if (enemyTypes[2] !=null){
					enemyTypes[2].SetActive(false);
					}
					GameObject.Find("BossInfoText").GetComponent<Text>().text = " ";
				}
					break;
			 }
			myguiText.text = "Up";
		}
		else if (Input.GetKeyDown (joystick1 + DOWN) || (Input.GetKeyDown(KeyCode.DownArrow))){
			if (enableDoF == true){
				mainCam.GetComponent<DepthOfField>().enabled = false;
				enableDoF = false;
			}
			else if (enableDoF == false){
				enableDoF = true;
				mainCam.GetComponent<DepthOfField>().enabled = true;
			}
			if (enablePaint == true){
				mainCam.GetComponent<FiltersController>().enabled = false;
				enablePaint = false;
			}
			else if (enablePaint == false){
				mainCam.GetComponent<FiltersController>().enabled = true;
				enablePaint = true;
			}
			myguiText.text = "Down";
			}
		else if (Input.GetKeyDown (joystick1 + LEFT) || Input.GetKeyDown(KeyCode.LeftArrow)){
			if (eventManager.GetComponent<Link_System>().newBezerkValue > 0.0f){
				eventManager.GetComponent<Link_System>().newBezerkValue -= 0.05f;
			}
			else eventManager.GetComponent<Link_System>().newBezerkValue = 0.0f;
			myguiText.text = "Left";
		}
		else if (Input.GetKeyDown (joystick1 + RIGHT) || Input.GetKeyDown(KeyCode.RightArrow)){
			
			if (eventManager.GetComponent<Link_System>().newBezerkValue < 1.0f){
				eventManager.GetComponent<Link_System>().newBezerkValue += 0.05f;
			}
			else eventManager.GetComponent<Link_System>().newBezerkValue = 1.0f;
			myguiText.text = "Right";
		}
		else if (Input.GetKeyDown (joystick1 + CROSS) && playerTemp.GetComponent<PlayerMoveJump>().jumpEnable == true) {
			//make player jump
			playerTemp.gameObject.BroadcastMessage ("Jump");
			myguiText.text = "Jump";
			//if you havent jumped yet
			if (playerTemp.gameObject.GetComponent<PlayerMoveJump>().jumpCount < 2){
					audioSource.PlayOneShot(clipList[4]); //play first jump SFX
					
				}
			//if you've jumped once
			if (playerTemp.gameObject.GetComponent<PlayerMoveJump>().jumpCount == 2){
					audioSource.PlayOneShot(clipList[8]); //play doublejump SFX3
					
				}
		}	
		else if (Input.GetKey (joystick1 + SQUARE)) {
			//initiate lock on when button is held
			FireControl.gameObject.BroadcastMessage ("fireControl");
		} 
		else if (Input.GetKeyUp(joystick1 + SQUARE)) {
			//fire missiles, reset the frame counter and number of objects counted on release
			FireControl.gameObject.BroadcastMessage ("missileMode");
			//change to regular texture on release
			img.texture = (Texture)Unlocked;
			img2.texture = (Texture)Blank;
			StartCoroutine(timer(1, 0.25f));
			FireControl.gameObject.BroadcastMessage ("reset");
		} 
		//disable triangle when player has died, to keep us from endlessley loading the load screen if you keep mashing the button
		else if ((Input.GetKeyDown (joystick1 + TRIANGLE) || Input.GetKeyDown(KeyCode.Space)) && playerTemp.GetComponent<Actor>().health != 0.0001f && eventManager.GetComponent<BezerkControl>().meterCharged == true){
			myguiText.text = "Triangle";
			FireControl.gameObject.BroadcastMessage ("bezerkMode");
		}
		else if (Input.GetKeyDown (joystick1 + SELECT)){
			playerTemp.GetComponent<Actor>().health -= 10f;
		}	
		else {
			//myguiText.text = " ";
		}

		if (Input.GetKeyDown(joystick1 + SQUARE)) {
			//fire a bullet
			myguiText.text = "Fire";
			FireControl.gameObject.BroadcastMessage ("fireBullet");
			audioSource.PlayOneShot(clipList[5]);
		}
	} 

	//handle inputs that change when paused/not
	if (Input.GetKeyDown (joystick1 + CIRCLE) && eventManager.GetComponent<OnNextLevel>().loading == false){
			if (PauseManager.isPaused == false){
				SetScenes.sceneToLoad = "LoadScreen";
				StartCoroutine(eventManager.GetComponent<OnNextLevel>().StartLoad());
			}
			//if the game is paused but we are at the main pause menu
			else if (PauseManager.isPaused == true && menuManager.GetComponent<MenuManagerInputs>().loaderEnabled == false && menuManager.GetComponent<MenuManagerInputs>().optionEnabled == false){
								PauseManager.isPaused = false;
				BGMManager.GetComponent<BGM_Player>().scaler = 1;
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
				StartCoroutine(FadeLoadSaveScreen(0,0.5f));
				saveManager.gameObject.BroadcastMessage("setColor");
				audioSource.PlayOneShot(clipList[1]);

				if ((GameObject.Find("Explode(Clone)") != null)||(GameObject.Find("Boss_Explode(Clone)")) != null){
					GameObject[] bossExplosions = (GameObject.FindGameObjectsWithTag("Exploder"));
					foreach (GameObject targetObject in bossExplosions){
						targetObject.BroadcastMessage ("Resume");
					}
				}
				if ((GameObject.Find("Explode(Clone)") != null)||(GameObject.Find("Boss_Explode(Clone)")) != null){
					GameObject[] bossExplosions = (GameObject.FindGameObjectsWithTag("Exploder"));
					foreach (GameObject targetObject in bossExplosions){
						targetObject.BroadcastMessage ("Resume");
					}
				}
					//FireControl.gameObject.BroadcastMessage ("resumeMissiles");
				
				
				/*fire missiles, reset the frame counter and number of objects counted change to regular texture on release when unpaused
				to avoid hard crash*/
				//FireControl.gameObject.BroadcastMessage ("reset");
				//FireControl.gameObject.BroadcastMessage ("fireMissiles");
				img.texture = (Texture)Unlocked;
				img2.texture = (Texture)Blank;
			}
			//if we are paused and in the save/load menu
			else if (PauseManager.isPaused == true && menuManager.GetComponent<MenuManagerInputs>().loaderEnabled == true && menuManager.GetComponent<MenuManagerInputs>().dialogEnabled == false){
				saveCanvas.alpha = 0;
				menuManager.GetComponent<MenuManagerInputs>().delayTimer = false;
				audioSource.PlayOneShot(clipList[1]);
			}
			else if (PauseManager.isPaused == true && menuManager.GetComponent<MenuManagerInputs>().loaderEnabled == true && menuManager.GetComponent<MenuManagerInputs>().dialogEnabled == true){
				menuManager.GetComponent<MenuManagerInputs>().dialogEnabled = false;
				menuManager.GetComponent<MenuManagerInputs>().dialogCanvas.GetComponent<CanvasGroup>().alpha = 0;
				audioSource.PlayOneShot(clipList[1]);
			}
			//if we are paused and in the options menu
			else if (PauseManager.isPaused == true && menuManager.GetComponent<MenuManagerInputs>().optionEnabled == true){
				optionCanvas.alpha = 0;
				PlayerPrefs.Save();
				audioSource.PlayOneShot(clipList[1]);
			}
	}	

	if (Input.GetKeyDown(joystick1 + START)){
			//pause/unpause game
			if (PauseManager.isPaused == false) { 
				audioSource.PlayOneShot(clipList[0]);
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(860.0F));
				StartCoroutine(FadeLoadSaveScreen(1,0.5f));
				PauseManager.isPaused = true;	
			} 
			
			else if (PauseManager.isPaused == true && menuManager.GetComponent<MenuManagerInputs>().optionEnabled == false && menuManager.GetComponent<MenuManagerInputs>().loaderEnabled == false) {
				PauseManager.isPaused = false;
				BGMManager.GetComponent<BGM_Player>().scaler = 1;
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
				StartCoroutine(FadeLoadSaveScreen(0,0.5f));
				saveManager.gameObject.BroadcastMessage("setColor");
				if ((GameObject.Find("Explode(Clone)") != null)||(GameObject.Find("Boss_Explode(Clone)")) != null){
					GameObject[] bossExplosions = (GameObject.FindGameObjectsWithTag("Exploder"));
					foreach (GameObject targetObject in bossExplosions){
						targetObject.BroadcastMessage ("Resume");
					}
				}
				//FireControl.gameObject.BroadcastMessage ("resumeMissiles");
				/*fire missiles, reset the frame counter and number of objects counted change to regular texture on release when unpaused
				to avoid hard crash*/
				//FireControl.gameObject.BroadcastMessage ("reset");
				if (eventManager.GetComponent<BezerkControl>().bezerkActive == true){
					eventManager.BroadcastMessage ("bezerkMode");
				}
				//Time.timeScale = 1;
				//FireControl.gameObject.BroadcastMessage ("fireMissiles", eventManager.GetComponent<FireControl>().missileTarget);
				img.texture = (Texture)Unlocked;
				img2.texture = (Texture)Blank;
			}
		}
		
	}


IEnumerator FadeLoadSaveScreen(float targetValue, float duration)
    {
        float startValue = menuCanvas.alpha;
        float time = 0;
		if (PauseManager.isPaused == false){
			Time.timeScale = 1;
		}
		//fade out the menu canvas group
        while (time < duration)
        {
            menuCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
            time += Time.deltaTime;
            yield return null;
        }
		menuCanvas.alpha = targetValue;
		if (PauseManager.isPaused == true){
			Time.timeScale = 0;
		}
	}
	IEnumerator timer(float targetValue, float duration)
    {
        float time = 0;

		//fade out the menu canvas group
        while (time < duration)
        {
            time += Time.deltaTime;
            yield return null;
        }
		canFire = true; 
	}
}