using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class Actor : MonoBehaviour {
//test update
[Range(0.0f, 100.0f)]
	public float health;
	public float colDamage = 20.0f;
	private GameObject Event;
	private List<Vector3> List;	
	public float actorDamage = 10.0f;
	public GameObject eventManager;
	public bool playerDead = false;
	public GameObject currentTarget;
	public GameObject explosion;
	public Graphic deathOverlay;
	public Color deathColor;
	public GameObject audioManager;
	public AudioSource audioSource;
	private List<AudioClip> clipList;

	
	void Start () {
		clipList = audioManager.GetComponent<AudioManager>().SFXList;
		if (gameObject.tag == "Enemy"){
			currentTarget = gameObject;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
			//check for no health, kill if true
			if (gameObject.tag == "Enemy" && health <=0 && gameObject != null){
				//print(gameObject.name + " Has Died!");
				eventManager.BroadcastMessage ("LinkIncrementer");
				GameObject boom = Instantiate (explosion, transform.position, Quaternion.identity);
				boom.SetActive(true);
				audioSource.PlayOneShot(clipList[13]);
				Destroy(gameObject);	
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
	}
}


