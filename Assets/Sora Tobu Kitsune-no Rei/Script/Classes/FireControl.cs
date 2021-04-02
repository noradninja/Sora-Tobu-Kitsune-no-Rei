using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FireControl : MonoBehaviour {
	
	//privates
	private RawImage img;
	private RawImage img2;
	private Vector3 playerLocation;
	private RaycastHit hit;
	private float reticleX = 0.0f;
	private float reticleY = 0.0f;
	private GameObject obj;

	//publics
	public Camera aimCam;
	public int objCount = 0;
	public int missileCount = 0;
	public int storedCount;
	public GameObject player;
	private Vector3 shootVec;
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
	public GameObject Distorter;
	public GameObject targetVector;
	public GameObject shootVecLoc;
	public GameObject BGMManager;
	private GameObject resetVector;
	private int maskLayer;
	public GameObject Reticle;
	public Component joyTarget;
	public List<GameObject> targetList;
	
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
		missileTarget = resetVector;
		//filter = GameObject.Find("BGMManager_Prefab").GetComponent<AudioLowPassFilter>();		
	}

	// Update is called once per frame
	void Update ()
    {
		float randRangeX = (Random.Range((shootVecLoc.transform.position.x + 1.0f), (shootVecLoc.transform.position.x - 1.0f)));
		float randRangeY = (Random.Range((shootVecLoc.transform.position.y + 1.0f), (shootVecLoc.transform.position.y)));
		float randRangeZ = (Random.Range((shootVecLoc.transform.position.z + 1.0f), (shootVecLoc.transform.position.z))); //we don't reduce z because misssiles will destroy themselves if they hit player
		shootVec = new Vector3 (randRangeX, randRangeY, randRangeZ);
        targetingSystem();

    }

    // called in Update for tracking targets
    void targetingSystem()
    {
		if(PauseManager.isPaused == false){
			// update needed positions
			playerLocation = GameObject.Find("ShootPoint").transform.position;
			Vector3 position = Reticle.transform.position;
			reticleX = position.x;
			reticleY = position.y;
			int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies

			// set up targeting ray
			Ray targetingRay = new Ray();
			// cast ray from camera through location of targeting reticle sprite
			targetingRay = aimCam.ScreenPointToRay(new Vector3(reticleX, reticleY, 45));
			// draw for debug purposes
			Debug.DrawRay(targetingRay.origin, targetingRay.direction * 45f, Color.red);
			// cast a sphere along the length of the ray
			if (Physics.SphereCast(targetingRay, 0.5f, out hit, 45f, maskLayer) && (frameCounter >= lockDelay))
			{
				// get the name of the object we hit
				GameObject checkHit = GameObject.Find(hit.transform.name);
					print("There is a new collision with " + checkHit.transform.name + " in front of the reticle!");
					// make the enemy a target for a missile
					missileTarget = checkHit;
			}
			else missileTarget = resetVector;
			//reenable missile firing when all missiles have been fired
			if (targetList.Count == missileCount)
			{
				firingMissiles = false;
				targetList.Clear();
				missileCount = 0;
				obj = null;
			}
		}
    }

    //deals with lock on system
    void fireControl(){ //called from Buttons.cs when fire button is down
		
		
		//Increment frame counter while held
		frameCounter = frameCounter + 1;
		if (frameCounter >= lockDelay){
			myguiText.text = "Lock On";
			//change reticle to lock on texture if held for delay period
			img.texture = (Texture)Locked;
			img2.texture = (Texture)Locked;
			
			//add enemies to list if we still have empty spots, and the current target under the recticle isnt the previous one
			//and the current target is an enemy and not null
			if (objCount < maxTargets && missileTarget != obj && firingMissiles == false && missileTarget != resetVector){
				
                targetVector = missileTarget;// set our current vector location to the target location- this is used for the missile 
				//make sure target isn't already in list, if it is ignore it
				if (targetList.Contains(targetVector)){
					return;
				}
				//add the target to the list and keep track of how long the list is
				targetList.Add (targetVector);
				objCount = objCount + 1;
				
					obj = targetVector;
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
	void missileMode(){
		//print ("Fire Missiles");
		if (targetList.Count > 0 && PauseManager.isPaused == false) {	
			firingMissiles = true;
			for (int i = 0; i < (targetList.Count); i++){
			StartCoroutine(shotIterator(i*0.2f, i));			
			}
		}
	}
	void fireMissiles(GameObject target){
		GameObject firedMissile = Instantiate (Missile, shootVec, Quaternion.identity);
		GameObject blastRing = Instantiate (Distorter, shootVec, Quaternion.identity);
		audioSource.PlayOneShot(clipList[6]);
		firedMissile.GetComponent<Missile>().missileTarget = target;
		firedMissile.SetActive(true);
		blastRing.SetActive(true);
	}

	void reset(){
		frameCounter = 0;
		objCount = 0;
		targetVector = resetVector;
		missileTarget = resetVector;
		// foreach (GameObject targets in targetList){
		// 	targets.gameObject.transform.GetChild (0).gameObject.SetActive(false);
		// }
	}
	IEnumerator shotIterator(float time, int i){
		yield return new WaitForSeconds(time);
			if (firingMissiles == true && targetList[i] != null && targetList.Contains(targetList[i])){
				//fire a missile at the current target
				missileTarget = GameObject.Find(targetList[i].transform.name);
				fireMissiles (missileTarget);
				missileCount ++;
			}
	}
}