using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BezerkControl : MonoBehaviour {
	public int currentHitCount;
	public int hitCount;
	public Collider[] bezerkArray;
	public List<GameObject> bezerkList;
	public GameObject bezerkHit;
	public GameObject missileTarget;
	public GameObject bezerkMissile;
	public GameObject originVec;
	public int speed;
	public int counter;
	public int BezerkArrayLength;
	public int BezerkListCount;
	public bool bezerkActive;
	public bool meterCharged;
	public float bezerkRadius;
	public Image bezerkMeter;
	public Image bezerkMeterBG;
	public RawImage bezerkBGImage;
	public Color bezerkFadeColor;
	public GameObject SFXManager;
	public GameObject BGMManager;
	public List<AudioClip> clipList;
	public AudioSource audioSource;
	public AudioLowPassFilter filter;
	public float LPFSweepDuration;
	public Vector3 playerLocation;
	// Use this for initialization
	void Start () {
		LPFSweepDuration = GameObject.Find("BGMManager_Prefab").GetComponent<BGM_Player>().LPFSweepDuration;
		clipList = SFXManager.GetComponent<AudioManager>().SFXList;
	}
	
	// Update is called once per frame
	void Update () {
		  bezerkManager();
		  //BezerkArrayLength = bezerkArray.Length;
		  //BezerkListCount = bezerkList.Count;
	}
	void bezerkManager(){

			//update the player location so we are always generating shots from there
			playerLocation = originVec.transform.position;
			//various checks to ensure proper resetting of bezerk mode    
			if (bezerkMeter.fillAmount <= 0)
			{
				bezerkHit = null;
				hitCount = 0;
				currentHitCount = 0;
			}
			if (bezerkHit == null && bezerkMeter.fillAmount <= 0 && bezerkActive == true)
			{
				BroadcastMessage("resetBar");
				StartCoroutine(backgroundFader(bezerkBGImage.color, bezerkFadeColor, 0.5f));
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
				bezerkOff();
				print ("Exit A");
			}
			if (bezerkHit == null && bezerkMeter.fillAmount > 0 && bezerkActive == true && BezerkListCount == 0)
			{
				BroadcastMessage("resetBar");
				StartCoroutine(backgroundFader(bezerkBGImage.color, bezerkFadeColor, 0.5f));
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
				bezerkOff();
				print ("Exit B");
			}
			if (bezerkActive == false && bezerkArray.Length > 1 && currentHitCount > 0){
				StartCoroutine(backgroundFader(bezerkBGImage.color, bezerkFadeColor, 0.5f));
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
				bezerkOff();
				print("Exit C");
			}
			if (bezerkList.Count == 0 && bezerkActive == true && bezerkArray.Length > 1 && currentHitCount > 0 && hitCount >= currentHitCount){
				print("Bezerk again");
				currentHitCount = 0; 
				bezerkMode();
			}
			if (GetComponent<Link_System>().newBezerkValue == 0.25f){
				meterCharged = true;
			}
			else if (GetComponent<Link_System>().newBezerkValue < 0.25f){
				meterCharged = false;
			}
    }
	void bezerkMode(){
		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies
		hitCount = 0;
		bezerkArray = Physics.OverlapSphere(playerLocation, bezerkRadius, maskLayer); //draw a sphere around the player and check for enemy objects
	//	if (GetComponent<Link_System>().newValue > 0f){
			if (bezerkArray.Length > 0){
				bezerkActive = true;
				for (int i = 0; i < bezerkArray.Length; i++){
					counter = i;
					bezerkHit = GameObject.Find(bezerkArray[i].GetComponent<Collider>().name);
					if (!bezerkList.Contains(bezerkHit)){
						bezerkList.Add(bezerkHit);
						currentHitCount ++;
					}
					if (counter == 0){
						StartCoroutine(bezerkAdder(0.0f, bezerkHit)); //get current counter value and pass it to adder CR, this is to ensure NaN doesn't get passed to bezerkAdder()
					}
					else { 
						StartCoroutine(bezerkAdder(counter*0.15f, bezerkHit)); //get current counter value and pass it to adder CR, with a delay that has a shrinking delta for each shot
					}
				}
			}
			else print ("No targets for Bezerk!");
	}

	void fireBezerk(GameObject target){
		if (PauseManager.isPaused == false){
			GameObject firedBezerk = Instantiate (bezerkMissile, originVec.transform.position, Quaternion.identity);
			audioSource.PlayOneShot(clipList[6]);
			firedBezerk.GetComponent<BezerkMissile>().missileTarget = target;
			if (target != null){
				target.gameObject.transform.GetChild (0).gameObject.SetActive(true);
				target.gameObject.transform.GetChild (0).gameObject.transform.GetChild (0).GetComponent<Animation>().Play("Target_Bounce");
				firedBezerk.SetActive(true);
			}
		}
	}
	//cleanup tasks
	 void bezerkOff(){
		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies
     
		bezerkArray = Physics.OverlapSphere(playerLocation, bezerkRadius, maskLayer); //draw a sphere around the player and check for enemy objects
        for (int i = 0; i < bezerkArray.Length; i++){
			GameObject deactivateHit = GameObject.Find(bezerkArray[i].GetComponent<Collider>().name);
			if (deactivateHit != null){
				bezerkArray[i].gameObject.transform.GetChild(0).gameObject.SetActive(false);
					if(bezerkArray[i].GetComponent<Renderer>() != null){
					Color hitColor = deactivateHit.GetComponent<Renderer>().material.color;					
					//TODO: if object has renderer do this otherwise get renderer in parent 
					StartCoroutine(materialFader(0.5f, hitColor, Color.white, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));
					}
				else {
					Color parentColor = deactivateHit.GetComponentInParent<Renderer>().material.color;
					StartCoroutine(materialFader(0.5f, parentColor, Color.white, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));	
				}
			}
		}
		bezerkActive = false;
		bezerkList.Clear();
		hitCount = 0;
		currentHitCount = 0;
    }
	IEnumerator bezerkAdder(float time, GameObject currentHit){
		if (currentHit != null && GetComponent<Link_System>().newBezerkValue > 0){
		yield return new WaitForSeconds(time); //wait for counter value increment
		float step = speed * Time.deltaTime;
			if(bezerkActive == true){
				missileTarget = currentHit;
				audioSource.PlayOneShot(clipList[7]); //play target sfx
				fireBezerk(missileTarget);
			}
		}
		
	}
	public IEnumerator backgroundFader(Color bgStart, Color bgTarget, float duration){
        float time = 0;
        while (time < duration)
        {
          	bezerkBGImage.color = Color.Lerp(bgStart, bgTarget, time / duration);
            time += Time.deltaTime;
            yield return null;
        }
	}
	public IEnumerator materialFader(float duration, Color startColor, Color targetColor, GameObject currentObject){
        float time = 0;
		if (currentObject.GetComponent<Renderer>() != null){
				Material objectMat = currentObject.GetComponent<Renderer>().material;
			if (objectMat.color != targetColor){
				while (time < duration){
					objectMat.color = Color.Lerp(startColor, targetColor, time / duration);
					time += Time.deltaTime;
					yield return null;
				}
			}	 
		}
		else {
			Material objectMat = currentObject.GetComponentInParent<Renderer>().material;
			if (objectMat.color != targetColor){
				while (time < duration){
					objectMat.color = Color.Lerp(startColor, targetColor, time / duration);
					time += Time.deltaTime;
					yield return null;
				}
			}	
		}
	}
}
