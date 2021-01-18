using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet_Destroyer : MonoBehaviour {

	public void OnTriggerEnter(Collider other)
	{
		Destroy (other.gameObject);
	}
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	public void ApplyDamage(float damage){
		//this is so bullets/missiles don't destroy this object
		return;
	}
}
