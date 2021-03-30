using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PauseManager : MonoBehaviour {
public static bool isPaused;
public bool isPausedInspector;

	// Update is called once per frame
	void Update () {
		//set isPausedInspector so we can verify state in Editor
		isPausedInspector = isPaused;
		//set framerate based on wether the game is paused or not- 60FPS in menus, 30FPS in game
		// if (isPaused == true){
		// 		Time.timeScale = 0;
		// 	}
		// 	else Time.timeScale = 1;
	}
}
