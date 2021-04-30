using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Title_DoF_Animator : MonoBehaviour {
	public float DoF;
	public float ArP;
	public float camIncrementor = 0.001f;
	public float timeIncrementor = 0.001f;
	public float delay = 0.0f;
	public float time = 0.0f;
	public GameObject mainCamera;

	// Update is called once per frame
	void Update () {
		//get focal distance from main camera
		DoF = mainCamera.GetComponent<DepthOfField>().focalDistance;
		ArP = mainCamera.GetComponent<DepthOfField>().aperture;
		if (time < delay){
			time += (timeIncrementor * Time.deltaTime);
		}
		if (mainCamera.GetComponent<DepthOfField>().aperture < 0.6f && time >= delay){
			ArP += (camIncrementor * Time.deltaTime);
			mainCamera.GetComponent<DepthOfField>().aperture = ArP;
		}
		if (mainCamera.GetComponent<DepthOfField>().focalDistance < 2.3f && time >= delay){
			DoF += (camIncrementor * Time.deltaTime);
			mainCamera.GetComponent<DepthOfField>().focalDistance = DoF;
		}		
	}
}
