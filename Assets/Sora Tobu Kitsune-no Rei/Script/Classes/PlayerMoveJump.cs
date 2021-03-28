using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerMoveJump : MonoBehaviour {

	public Text myguiText;
	public float speed = 0.0f;
	public float doubleJumpDivisor = 6.0f; 
	public Rigidbody playerRB;

	public int jumpCount = 0;
	public bool jumpEnable = true;
	public float jumpHeight = 0f;
	public float jumpVelocity = 0f;

	// Use this for initialization
	void Start () {
		jumpEnable = true;
	}
	
	// Update is called once per frame
	void Update () {
		if ((PauseManager.isPaused) == false){
		// check jumpCount and fix height, if weve jumped twice set to 0 so we cant jump more, if grounded, reset to calc
		if (jumpCount >= 2){
			jumpEnable = false;
			jumpVelocity = 0;
		}
		if (jumpCount == 0){
			jumpVelocity = Mathf.Sqrt(-2f * Physics.gravity.y * jumpHeight);
		}
		}
	}

	//make player jump
	void Jump (){
		//If the player is jumping, increase the jump count by one to enable a double jump	
		if (jumpCount < 2 && PauseManager.isPaused == false){
		myguiText.text = "Jump";
		jumpCount = jumpCount + 1;
		//we've jumped once, so reduce the height of the second jump by the divisor assuming < 1.0f, otherwise increase it if > 1.0f
		jumpVelocity *= doubleJumpDivisor;
		playerRB.velocity = new Vector3 (playerRB.velocity.x,jumpVelocity,speed);
		}
	}
	
	void OnCollisionEnter(Collision other) {
        //checks if collider is named "Collider"
		//When the player touches the ground, reenable ground check and reset jump count so player can jump again
        if(other.gameObject.name == "Collider"){
            //if the collider is tagged "ground", sets jumpEnable boolean to true
            jumpEnable = true;
			jumpCount = 0;
		}
	}
	void FixedUpdate(){
		if (PauseManager.isPaused == false){
			playerRB.useGravity = true;
			playerRB.velocity = new Vector3 (playerRB.velocity.x,playerRB.velocity.y,speed);
		}
		else {
			playerRB.useGravity = false;
			playerRB.velocity = new Vector3 (0,0,0);
		}
	}
}