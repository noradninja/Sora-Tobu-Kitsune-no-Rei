using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BezerkControl : MonoBehaviour {
	private float adderDelay;
	public float adderInspector;
	public int hitCount;
	public int hitRemaining;
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
	public float bezerkRadius;
	public Image bezerkMeter;
	public Image bezerkMeterBG;
	public CanvasGroup bezerkCanvas;
	public GameObject SFXManager;
	public GameObject BGMManager;
	public List<AudioClip> clipList;
	public AudioSource audioSource;
	public AudioLowPassFilter filter;
	public float LPFSweepDuration;
	private Vector3 playerLocation;
	// Use this for initialization
	void Start () {
		LPFSweepDuration = GameObject.Find("BGMManager_Prefab").GetComponent<BGM_Player>().LPFSweepDuration;
		clipList = SFXManager.GetComponent<AudioManager>().SFXList;
	}
	
	// Update is called once per frame
	void Update () {
		  bezerkManager();
		  BezerkArrayLength = bezerkArray.Length;
		  BezerkListCount = bezerkList.Count;
		  adderInspector = adderDelay;
		  if (bezerkActive == false){
			  hitRemaining = 0;
		  }
	}
	 void bezerkManager(){
	//update the player location so we are always generating shots from there
		playerLocation = originVec.transform.position;
    //various checks to ensure proper resetting of bezerk mode    
	    if (bezerkMeter.fillAmount <= 0)
        {
            bezerkHit = null;
        }
        if (bezerkArray.Length == 0 && bezerkMeter.fillAmount >= 0 && bezerkActive == true)
        {
			bezerkHit = null;
		    BroadcastMessage("resetBar");
			StartCoroutine(Fader(0.0f, 0.5f));
           	bezerkOff();
        }
        if (bezerkHit == null && bezerkMeter.fillAmount <= 0 && bezerkActive == true)
        {
            BroadcastMessage("resetBar");
			StartCoroutine(Fader(0.0f, 0.5f));
           	bezerkOff();
        }
		if (bezerkHit == null && bezerkMeter.fillAmount >= 0 && bezerkActive == true && bezerkList.Count <= bezerkArray.Length)
        {
            BroadcastMessage("resetBar");
			StartCoroutine(Fader(0.0f, 0.5f));
           	bezerkOff();
        }
		
	//reinitialize bezerk if there are still objects in the array, cycle selection icon on each loop through the array

            if (counter < bezerkArray.Length && bezerkActive == true && bezerkList.Count <= bezerkArray.Length && hitCount >= bezerkList.Count && hitRemaining == 0)
            {
                bezerkMode();
            }
	 }
	void bezerkMode(){
		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies
	
		if (bezerkMeter.fillAmount > 0){
			bezerkArray = Physics.OverlapSphere(playerLocation, bezerkRadius, maskLayer); //draw a sphere around the player and check for enemy objects
			if (bezerkArray.Length <=0){
				bezerkOff();
			}
			if (bezerkArray.Length > 0){
				bezerkActive = true;
				StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(880.0f));
				// StartCoroutine(Fader(1.0f,0.5f));
				for (int i = 0; i < bezerkArray.Length; i++){
					counter = i;
					if (bezerkArray[i] != null){
						if(bezerkArray[i].GetComponent<Renderer>() != null){				
						//TODO: if object has renderer do this otherwise get renderer in parent 
						StartCoroutine(materialFader(1.0f, 0.5f, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name).GetComponent<Renderer>().material.color, Color.black, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));
						}
						else {
							StartCoroutine(materialFader(1.0f, 0.5f, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name).GetComponentInParent<Renderer>().material.color, Color.black, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));	
						}
						bezerkHit = GameObject.Find(bezerkArray[i].GetComponent<Collider>().name);
					}
					if (!bezerkList.Contains(bezerkHit)){
						bezerkList.Add(bezerkHit);
						//coroutine to fade enemy color
					}
					if (counter == 0){
						StartCoroutine(bezerkAdder(0.0f, counter)); //get current counter value and pass it to adder CR, this is to ensure NaN doesn't get passed to bezerkAdder()
					}
					else { 
						StartCoroutine(bezerkAdder(counter*0.15f, counter)); //get current counter value and pass it to adder CR, with a delay that has a shrinking delta for each shot
					}
				}
			}
			else print ("No targets for Bezerk!");		
		}
	}
	//shoot the bezerk missile
	void fireBezerk(GameObject target){
		GameObject firedBezerk = Instantiate (bezerkMissile, originVec.transform.position, Quaternion.identity);
					audioSource.PlayOneShot(clipList[6]);
					firedBezerk.GetComponent<BezerkMissile>().missileTarget = target;
					target.gameObject.transform.GetChild (0).gameObject.SetActive(true);
					target.gameObject.transform.GetChild (0).gameObject.transform.GetChild (0).GetComponent<Animation>().Play("Target_Bounce");
					firedBezerk.SetActive(true);
	}
	//cleanup tasks
	public void bezerkOff(){
		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies
		bezerkArray = Physics.OverlapSphere(playerLocation, bezerkRadius, maskLayer); //draw a sphere around the player and check for enemy objects
        bezerkActive = false;
	
        for (int i = 0; i < bezerkArray.Length; i++){
				GameObject.Find(bezerkArray[i].GetComponent<Collider>().name).GetComponent<Transform>().GetChild(0).gameObject.SetActive(false);
				//TODO: if object has renderer do this otherwise get renderer in parent 
				if(bezerkArray[i].GetComponent<Renderer>() != null){				
					//TODO: if object has renderer do this otherwise get renderer in parent 
					StartCoroutine(materialFader(0.0f, 0.5f, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name).GetComponent<Renderer>().material.color, Color.white, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));
					}
				else {
					StartCoroutine(materialFader(0.0f, 0.5f, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name).GetComponentInParent<Renderer>().material.color, Color.white, GameObject.Find(bezerkArray[i].GetComponent<Collider>().name)));	
				}	
		}
		StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
		bezerkList.Clear();
		hitCount = 0;
		hitRemaining = 0;
    }
	IEnumerator bezerkAdder(float time, int i){
		yield return new WaitForSeconds(time); //wait for counter value increment
		float step = speed * Time.deltaTime;
		if(bezerkActive == true && bezerkArray[i] != bezerkHit && bezerkArray[i] != null){
			missileTarget = GameObject.Find(bezerkArray[i].transform.name);
			audioSource.PlayOneShot(clipList[7]); //play target sfx
			fireBezerk(missileTarget);
			hitCount ++;
			hitRemaining ++;
		}
		
	}
	public IEnumerator materialFader(float targetValue, float duration, Color startColor, Color targetColor, GameObject currentObject){
        float startValue = bezerkCanvas.alpha;
        float time = 0;
		if (currentObject.GetComponent<Renderer>() != null){
				Material objectMat = currentObject.GetComponent<Renderer>().material;
				if (objectMat.color != targetColor){
			//fade out the menu canvas group
				while (time < duration){
					bezerkCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
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
					bezerkCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
					objectMat.color = Color.Lerp(startColor, targetColor, time / duration);
					time += Time.deltaTime;
					yield return null;
				}
			}	
		}
	}

	public IEnumerator Fader(float targetValue, float duration){
        float startValue = bezerkCanvas.alpha;
        float time = 0;
		//fade out the menu canvas group
		while (time < duration){
			bezerkCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
			time += Time.deltaTime;
			yield return null;
		}
	}	 	
}