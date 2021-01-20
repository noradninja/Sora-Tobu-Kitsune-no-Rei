using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FireControl : MonoBehaviour {
	private const string joystick1 = "joystick 1 button ";
	private const int SQUARE = 2;
	private RawImage img;
	private RawImage img2;
	private Vector3 playerLocation;
	private Vector3 point;
	private Vector3 NTLoc;
	private RaycastHit hit;
	private float reticleX = 0.0f;
	private float reticleY = 0.0f;
	private GameObject obj;
	private Transform transfer;
	public int objCount = 0;
	public GameObject missileTarget;

	public int frameCounter = 0;
	public int lockDelay = 30;
	public int maxTargets = 4;
	public bool firingMissiles;
	public Text myguiText;
	public Texture Locked;
	public GameObject Target;
	public GameObject Target2;
	public GameObject Bullet;
	public GameObject Missile;
	public GameObject Player;
	
	public GameObject targetVector;
	private GameObject resetVector;
	public GameObject Reticle;
	public float speed = 6.0f; 
	public Component joyTarget;
	public List<GameObject> targetList;
	public static GameObject currtarget;
	public GameObject audioManager;
	public List<AudioClip> clipList;
	public AudioSource audioSource;
	

	// Use this for initialization
	void Start () {
		joyTarget = GameObject.Find ("Main Camera").GetComponent("Joystick_Target");
		targetList = new List<GameObject>();
		img = (RawImage)Target.GetComponent<RawImage> ();
		img2 = (RawImage)Target2.GetComponent<RawImage> ();	
		frameCounter = 0;
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		resetVector = GameObject.Find ("Main Camera");

	}

	// Update is called once per frame
	void Update () {

		//clear target list if it is empty
		if (targetList.Count <1){
			targetList.Clear();
		}
		playerLocation = GameObject.Find ("ShootPoint").transform.position;
		Vector3 position = Reticle.transform.position;
		reticleX = position.x;
		reticleY = position.y;
		Ray[] targetingRays = new Ray[9];
	
		//set up rays in a rough circle
			targetingRays [0] = Camera.main.ScreenPointToRay (new Vector3 (reticleX + 16, reticleY, 0));
			targetingRays [1] = Camera.main.ScreenPointToRay (new Vector3 (reticleX, reticleY + 16, 0));
			targetingRays [2] = Camera.main.ScreenPointToRay (new Vector3 (reticleX - 16, reticleY, 0));
			targetingRays [3] = Camera.main.ScreenPointToRay (new Vector3 (reticleX, reticleY - 16, 0));
			targetingRays [4] = Camera.main.ScreenPointToRay (new Vector3 (reticleX + 8, reticleY + 8, 0));
			targetingRays [5] = Camera.main.ScreenPointToRay (new Vector3 (reticleX - 8, reticleY - 8, 0));
			targetingRays [6] = Camera.main.ScreenPointToRay (new Vector3 (reticleX + 8, reticleY - 8, 0));
			targetingRays [7] = Camera.main.ScreenPointToRay (new Vector3 (reticleX - 8, reticleY + 8, 0));
			targetingRays [8] = Camera.main.ScreenPointToRay (new Vector3 (reticleX, reticleY, 0));

		for (int i=0; i<8; i ++){
			
			if (Physics.Raycast (targetingRays[i], out hit, 45)) {
				Debug.DrawRay (targetingRays[i].origin, targetingRays[i].direction * 45, Color.red);
				GameObject checkHit = GameObject.Find (hit.transform.name);
				if (checkHit.tag == "Enemy") {
					print ("There is a new collision with " + checkHit.transform.name + " in front of the reticle!");
					missileTarget = checkHit;
				}
				//else missileTarget = null;
			}
		
		}
		//reenable missile firing when the list is empty
		if (targetList.Count < 1){
			firingMissiles = false;
		}	
	}

	//deals with lock on system
	void fireControl(){ //called from Buttons.cs when fire button is down
		
		//clear list and reset target vector 
		if (targetList.Count <1){
		targetList.Clear();
		targetVector = resetVector;
		
		}
		
		//Increment frame counter while held
		frameCounter = frameCounter + 1;
		if (frameCounter >= lockDelay){
			myguiText.text = "Lock On";
			//change reticle to lock on texture if held for delay period
			img.texture = (Texture)Locked;
			img2.texture = (Texture)Locked;
			//add enemies to list if we still have empty spots, and the current target under the recticle isnt the previous one
			//and the current target is an enemy and not null
			if (objCount < maxTargets && missileTarget != obj && missileTarget.tag == "Enemy" && missileTarget != null && firingMissiles == false){
                targetVector = missileTarget;// set our current vector location to the target location- this is used for the missile 
				//make sure target isn't already in list, if it is ignore it
				if (targetList.Contains(targetVector)){
					return;
				}
				//add the target to the list and keep track of how long the list is
				targetList.Add (targetVector);
				objCount = objCount + 1;
				obj = missileTarget;
				//turn on the lock cursor on the target so we have visual feedback, and play back an animation and sound effect
				obj.gameObject.transform.GetChild (0).gameObject.SetActive(true);
				obj.gameObject.transform.GetChild (0).gameObject.transform.GetChild (0).GetComponent<Animation>().Play("Target_Bounce");
				audioSource.PlayOneShot(clipList[7]);
			}
		}
	}

	//fires bullets
	void fireBullet(){
		frameCounter = frameCounter + 1;
		//if we havent held the button long enough to initiate lock on, shoot a bullet
		//we have to check the cardinal location of the camera to adjust to starting point of the bullet, otherwise it will collide with the player and destroy it
		if (frameCounter <= (lockDelay / 2) && Joystick_Target.count == 0 ) {
			Vector3 shootVec = new Vector3 (playerLocation.x, (playerLocation.y), (playerLocation.z));
			GameObject fired = Instantiate (Bullet, shootVec, Quaternion.identity);
			fired.SetActive(true);
			print ("Bullet Fired");
		}
		if (frameCounter <= (lockDelay / 2) && Joystick_Target.count == 2 ) {
			Vector3 shootVec = new Vector3 (playerLocation.x, (playerLocation.y), (playerLocation.z));
			GameObject fired = Instantiate (Bullet, shootVec, Quaternion.identity);
			fired.SetActive(true);
			print ("Bullet Fired");
		}
		if (frameCounter <= (lockDelay / 2) && Joystick_Target.count == 1 ) {
			Vector3 shootVec = new Vector3 ((playerLocation.x), (playerLocation.y), playerLocation.z);
			GameObject fired = Instantiate (Bullet, shootVec, Quaternion.identity);
			fired.SetActive(true);
			print ("Bullet Fired");
		}
		if (frameCounter <= (lockDelay / 2) && Joystick_Target.count == 3 ) {
			Vector3 shootVec = new Vector3 ((playerLocation.x), (playerLocation.y), playerLocation.z);
			GameObject fired = Instantiate (Bullet, shootVec, Quaternion.identity);
			fired.SetActive(true);
			print ("Bullet Fired");
		}
	}

	//fires missiles
	void fireMissiles(){
		//print ("Fire Missiles");
		if (targetList.Count > 0) {
			//fire a missile at the current target
			Vector3 shootVec = new Vector3 (playerLocation.x, playerLocation.y, (playerLocation.z));
			GameObject fired2 = Instantiate (Missile, shootVec, Quaternion.identity);
			audioSource.PlayOneShot(clipList[6]);
			fired2.SetActive(true);
			firingMissiles = true;
			
		}
	}

	/*reset frameCounter and objCount when called (happens on release of fire button)
	reset targetVector and missileTarget to defaults, set current obj to null so we can
	reselect the last selected target on new lock-on*/		
	void reset(){
		frameCounter = 0;
		objCount = 0;
		targetVector = resetVector;
		missileTarget = null;
		obj = null;
	}
}