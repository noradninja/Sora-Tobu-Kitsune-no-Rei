using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BezerkControl : MonoBehaviour {
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
	}
	 void bezerkManager(){
	//update the player location so we are always generating shots from there
		playerLocation = originVec.transform.position;
    //various checks to ensure proper resetting of bezerk mode    
	    if (bezerkMeter.fillAmount <= 0)
        {
            bezerkHit = null;
        }
        if (bezerkArray.Length == 0 && bezerkMeter.fillAmount > 0 && bezerkActive == true)
        {
			bezerkHit = null;
		    BroadcastMessage("resetBar");
           	bezerkOff();
        }
        if (bezerkHit == null && bezerkMeter.fillAmount <= 0 && bezerkActive == true)
        {
            BroadcastMessage("resetBar");
           	bezerkOff();
        }
		if (bezerkHit == null && bezerkMeter.fillAmount > 0 && bezerkActive == true && bezerkArray.Length == 1)
        {
            BroadcastMessage("resetBar");
           	bezerkActive = false;
			StartCoroutine(Fader(0.0f,0.5f));
			StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
			bezerkList.Clear();
        }
	//reinitialize bezerk if there are still objects in the array, cycle selection icon on each loop through the array
        if (bezerkArray.Length > 0)
        {
            // for (int i = 0; i < bezerkArray.Length; i++)
            // {
            //     if (bezerkActive == false && bezerkArray[i] != null)
            //     {
            //         bezerkArray[i].gameObject.transform.GetChild(0).gameObject.SetActive(false); //turn off target icon 
            //     }
            // }
            if (counter < bezerkArray.Length && bezerkActive == true && bezerkList.Count == 0 && bezerkArray.Length > 1)
            {
                bezerkMode();
            }
        }
    }
	void bezerkMode(){
		int maskLayer = 1 << 15; //this is a bitshift check to ignore objects in layers that don't contain enemies
		if (bezerkMeter.fillAmount > 0){
			bezerkActive = true;
			bezerkArray = Physics.OverlapSphere(playerLocation, bezerkRadius, maskLayer); //draw a sphere around the player and check for enemy objects
			
			for (int i = 0; i < bezerkArray.Length; i++){
				counter = i;
				bezerkHit = GameObject.Find(bezerkArray[i].GetComponent<Collider>().name);
				bezerkList.Add(bezerkHit);
				StartCoroutine(bezerkAdder((counter*0.2f), counter)); //get current counter value and pass it to adder CR

			}		
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
	 void bezerkOff(){
        bezerkActive = false;
        for (int i = 0; i < bezerkList.Count; i++){
			if (bezerkArray[i] != null){
				bezerkArray[i].gameObject.transform.GetChild(0).gameObject.SetActive(false);
			}
		}
		StartCoroutine(Fader(0.0f,0.5f));
		StartCoroutine(BGMManager.GetComponent<BGM_Player>().scaleLPF(22000.0f));
		bezerkList.Clear();
    }
	IEnumerator bezerkAdder(float time, int i){
		yield return new WaitForSeconds(time); //wait for counter value increment
		float step = speed * Time.deltaTime;
		if(bezerkActive == true && bezerkArray[i] != null){
			missileTarget = GameObject.Find(bezerkArray[i].transform.name);
			audioSource.PlayOneShot(clipList[7]); //play target sfx
			fireBezerk(missileTarget);
			yield return null;
		}
		
	}
	public IEnumerator Fader(float targetValue, float duration){
        float startValue = bezerkCanvas.alpha;
        float time = 0;

		//fade out the menu canvas group
        while (time < duration)
        {
            bezerkCanvas.alpha = Mathf.Lerp(startValue, targetValue, time / duration);
            time += Time.deltaTime;
            yield return null;
        }
		bezerkCanvas.alpha = targetValue;
	}
}
