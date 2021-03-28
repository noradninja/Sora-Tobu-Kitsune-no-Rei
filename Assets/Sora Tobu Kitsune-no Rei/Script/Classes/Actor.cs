using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Actor : MonoBehaviour {
//test update
[Range(0.0f, 100.0f)]
	public float health;
[Range(0.0f, 100.0f)]
	public float bossHealth;
	public float colDamage = 20.0f;
	private GameObject Event;
	private List<GameObject> List;	
	public float actorDamage = 10.0f;
	public GameObject eventManager;
	public bool playerDead = false;
	public GameObject currentTarget;
	public GameObject explosion;
	public Graphic deathOverlay;
	public Color deathColor;
	public GameObject audioManager;
	public AudioSource audioSource;
	public bool bezerkHit = false;
	public Component[] subObjectsScripts;
	public List<GameObject> subObjectsGO;
	public bool isActive = true;
	public GameObject bossObject;
	public Text bossInfoText;
	private List<AudioClip> clipList;
	public string hitTag;


	
	void Start () {
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		List = eventManager.GetComponent<BezerkControl>().bezerkList;
		if (gameObject.tag == "Boss"){
			//get Actor scripts of subObjets so we can access their individual health values for the boss object
				subObjectsScripts = GetComponentsInChildren<Actor>();
				foreach (Actor subsScript in subObjectsScripts){
					bossHealth += subsScript.GetComponent<Actor>().health;
				}
			//get a list of the actual subObjects so we can do things with them when they die
				foreach (Transform subs in this.transform){
					subObjectsGO.Add(subs.gameObject);
				}

			}
	}
	
	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
			if (gameObject.tag == "Boss"){
				if (bossHealth > 0){
				bossInfoText.text = ("Boss Health: " + bossHealth);
				}
				else bossInfoText.text = ("Boss Health: 0");

				for (int i = 0; i<subObjectsGO.Count; i++){
					if (subObjectsGO[i].GetComponent<Actor>().health <=0){
						subObjectsGO[i].GetComponent<Actor>().isActive = false;
						subObjectsGO[i].GetComponent<Collider>().enabled = false;
					}
				}
			}
			//check enemy for no health, kill if true
			if (gameObject.tag == "Enemy" && health <=0 && gameObject != null && PauseManager.isPaused == false){
				//print(gameObject.name + " Has Died!");
				if (bezerkHit == false){
					eventManager.BroadcastMessage ("LinkIncrementer");
				}
				if (bezerkHit == true){
					eventManager.GetComponent<BezerkControl>().bezerkList.Remove(gameObject);
				}
				
				GameObject boom = Instantiate (explosion, transform.position, Quaternion.identity);
				boom.SetActive(true);
				audioSource.PlayOneShot(clipList[13]);
				Destroy(gameObject);	
			}
			if (gameObject.tag == "Boss" && bossHealth <=0 && gameObject != null && PauseManager.isPaused == false){
				//print(gameObject.name + " Has Died!");
				for (int i = 0; i<subObjectsGO.Count; i++){
					eventManager.GetComponent<BezerkControl>().bezerkList.Remove(subObjectsGO[i]);
					GameObject boom = Instantiate (explosion, subObjectsGO[i].transform.position, Quaternion.identity);
					boom.SetActive(true);
					audioSource.PlayOneShot(clipList[14]);
					Destroy(gameObject);
				}	
			}
			if (gameObject.tag == "Player" && health <=0){
				print ("Player has Died!");
				//flash screen red when player dies
				deathOverlay.color = deathColor;
				playerDead = true;
			}
			if (playerDead == true){
				StartCoroutine(eventManager.GetComponent<OnGameOver>().StartLoad());
				playerDead = false;
				health = 0.0001f;
			}
		}
	
	}
	//apply damage
	public void ApplyDamage(float damage){
		
		health -= damage;
		//print(gameObject.name + " health Remaining: " + health);
		if (gameObject.tag == "BossSO"){
			bossObject.GetComponent<Actor>().bossHealth -= damage;
		}
	}

	public void BezerkMissile(){
		//Debug.Log(gameObject.transform.name + " hit by bezerker");
		bezerkHit = true;
		
	}
	public void Shot(){
		bezerkHit = false;
	}

}


