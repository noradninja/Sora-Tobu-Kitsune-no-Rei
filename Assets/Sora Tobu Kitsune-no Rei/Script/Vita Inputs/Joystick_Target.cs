using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Joystick_Target : MonoBehaviour {

	private const string joystick1 = "joystick 1 button ";
	private const int L = 4;
	private const int R = 5;
	private Quaternion qTo;
	private Quaternion qTo2;

	public string Stick;
	public GameObject player;
	public Rigidbody playerRB;
	public GameObject target;
	public float Speed = 1.0F;
	public float joySensitivity = 1.0f;
	public Text myguiText;
	public Text joyText;
	public GameObject camRotatePoint;

	public GameObject radar;
	public static int count = 0;
	public float rotateSpeed = 90.0F;
	public float moveDamp = 1.0F;
	public float rotateDamp = 1.0F;
	public Vector3 currentRotation, targetRotation;
	
	void Start (){
		qTo = camRotatePoint.transform.rotation;
		qTo2 = radar.transform.rotation;
		count = 0; //verify count is 0 so level reloads don't break joystick inputs
	}

	void Update ()
	{
	if ((PauseManager.isPaused) == false){
		if (PlayerPrefs.GetInt ("SavedOnce") == 1){
			joySensitivity = PlayerPrefs.GetFloat("SavedSensitivity");
		}
		else joySensitivity = 1.0f;
		//Animation setup for L/R triggers
		camRotatePoint.transform.localRotation = Quaternion.RotateTowards (camRotatePoint.transform.localRotation, qTo, rotateSpeed * Time.deltaTime);
		radar.transform.rotation = Quaternion.RotateTowards (radar.transform.rotation, qTo2, rotateSpeed * Time.deltaTime);
		const float smooth = 2.5F;
		const float tiltAngle = -25F;
		const float targetAngle = 25F;
		float tX = target.transform.position.x;
		float tY = target.transform.position.y;

		// Set up x/y coords for joystick and recticle
		float stickX = Input.GetAxis (Stick + " Stick Horizontal") * -45F;
		float stickY = Input.GetAxis (Stick + " Stick Vertical") * 45F;
		float stickXCam = Input.GetAxis (Stick + " Stick Horizontal") * (tiltAngle/2);
		float stickYCam = Input.GetAxis (Stick + " Stick Vertical") * (targetAngle/2);
		float xTarget = Input.GetAxis (Stick + " Stick Horizontal") * targetAngle;
		float yTarget = Input.GetAxis (Stick + " Stick Vertical") * tiltAngle;


		// Get L/R input for cam rotation
		if (Input.GetKeyDown (joystick1 + L)) {
			//Rotate radar right 90 degrees
			if (radar.transform.rotation == qTo2) {
				qTo2 = Quaternion.AngleAxis (-90.0F, Vector3.forward) * qTo2;
			}
			//Rotate camera left 90 degrees
			if (camRotatePoint.transform.localRotation == qTo) {
				qTo = Quaternion.AngleAxis (90.0F, Vector3.up) * qTo;
				myguiText.text = "L";

				//check for cardinal direction of camera
				if (count == 3) {
					count = 0;
				} else if (count == 2) {
					count = 3;
				} else if (count == 1) {
					count = 2;
				} else if (count == 0) {
					count = 1;
				}
			}
		}

		if (Input.GetKeyDown (joystick1 + R)) {
			//Rotate radar right 90 degrees
			if (radar.transform.rotation == qTo2) {
				qTo2 = Quaternion.AngleAxis (90.0F, Vector3.forward) * qTo2;
			}
			//Rotate camera left 90 degrees
			if (camRotatePoint.transform.localRotation == qTo) {
				qTo = Quaternion.AngleAxis (-90.0F, Vector3.up) * qTo;
				myguiText.text = "R";

				//check for cardinal direction of camera
				if (count == 3) {
					count = 2;
				} else if (count == 2) {
					count = 1;
				} else if (count == 1) {
					count = 0;
				} else if (count == 0) {
					count = 3;
				}
			}
		}

		// Move/rotate Player
		//if we are behind the player
		if (count == 0) {     
//			var pxTarget = new Vector3 (Input.GetAxis (Stick + " Stick Horizontal") * targetAngle,0,0);
			Quaternion target = Quaternion.Euler (stickYCam+6f, (-1*stickXCam), 0);
			Quaternion Ptarget = Quaternion.Euler (player.transform.rotation.x, (-1*stickX), 0);
			//rotate camera
			transform.localRotation = Quaternion.Slerp (transform.localRotation, target, Time.deltaTime * smooth);
			//rotate player	
			player.transform.localRotation = Quaternion.Slerp (player.transform.localRotation, Ptarget, Time.deltaTime * rotateDamp);
			//store player position
			Vector3 playerPosition = player.transform.position;
		}

		//Move/rotate Player
		//if we are in front of the player
		if (count == 2) {     
			
			Quaternion target = Quaternion.Euler (stickYCam+6f, (-1*stickXCam), 0);
			Quaternion Ptarget = Quaternion.Euler (0, stickX, 0);
			//rotate camera
			transform.localRotation = Quaternion.Slerp (transform.localRotation, target, Time.deltaTime * smooth);
			//rotate player
			player.transform.localRotation = Quaternion.Slerp (player.transform.localRotation, Ptarget, Time.deltaTime * rotateDamp);
			//move player	
			//store player position
			Vector3 playerPosition = player.transform.position; 
		}
		// Move Camera
		//change axis calculations, because Euler angles are fucking unreliable pieces of shit
		//if we are to the left of the player
		if (count == 1) {
			Quaternion target = Quaternion.Euler (stickYCam+6f, (-1*stickXCam), 0);
			transform.localRotation = Quaternion.Slerp (transform.localRotation, target, Time.deltaTime * smooth);
		}
		//if we are to the right of the player
		if (count == 3) {
			Quaternion target = Quaternion.Euler (stickYCam+6f, (-1*stickXCam), 0);
			transform.localRotation = Quaternion.Slerp (transform.localRotation, target, Time.deltaTime * smooth);
		}

		// Move Recticle
		var move = new Vector3 (xTarget, yTarget, 0);
		target.transform.position += move * Speed * Time.deltaTime * (Speed * joySensitivity);

		//bind recticle to screen bounds
		Vector3 CurrentPos = target.transform.position; 
		tX = target.transform.position.x;
		tY = target.transform.position.y;

		if (target.transform.position.x <= 32f) {
			CurrentPos.x = 32f;
			CurrentPos.y = tY;
		}
		if (target.transform.position.y <= 32f) {
			CurrentPos = target.transform.position;
			CurrentPos.x = tX;
			CurrentPos.y = 32f;
		}
		if (target.transform.position.x >= 928f) {
			CurrentPos = target.transform.position;
			CurrentPos.x = 928f;
			CurrentPos.y = tY;
		}
		if (target.transform.position.y >= 512f) {
			CurrentPos = target.transform.position;
			CurrentPos.x = tX;
			CurrentPos.y = 512f;
		}
		// check for edge cases
		if (target.transform.position.x <= 32f && target.transform.position.y <= 32f) {
			CurrentPos.x = 32f;
			CurrentPos.y = 32f;
		}
		if (target.transform.position.x >= 928f && target.transform.position.y <= 32f) {
			CurrentPos.x = 928f;
			CurrentPos.y = 32f;
		}
		if (target.transform.position.x >= 928f && target.transform.position.y >= 512f) {
			CurrentPos.x = 928f;
			CurrentPos.y = 512f;
		}
		if (target.transform.position.x <= 32f && target.transform.position.y >= 512f) {
			CurrentPos.x = 32f;
			CurrentPos.y = 512f;
		}
		target.transform.position = CurrentPos;
	}
	}

	private void FixedUpdate() {
		if ((PauseManager.isPaused) == false){
		if (count==2){
			const float tiltAngle = -45F;
			var pxTarget = new Vector3 (Input.GetAxis (Stick + " Stick Horizontal") * joySensitivity * tiltAngle,0,0);
			//move player in direction of stick
			player.GetComponent<Rigidbody>().AddForce (pxTarget * moveDamp);
		}
		if (count==0){
			const float targetAngle = 45F;
			var pxTarget = new Vector3 (Input.GetAxis (Stick + " Stick Horizontal") * joySensitivity * targetAngle,0,0);
			//move player in direction of stick
			player.GetComponent<Rigidbody>().AddForce (pxTarget * moveDamp);
		}
	}
	}
}