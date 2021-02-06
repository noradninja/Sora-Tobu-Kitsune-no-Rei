using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Title_DoF_Animator : MonoBehaviour {
	public float DoF;
	public float ArP;
	public float incrementor = 0.001f;
	public float timeIncrementor = 0.001f;
	public float delay = 0.0f;
	public float time = 0.0f;
	public GameObject mainCamera;
	

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		//get focal distance from main camera
		DoF = mainCamera.GetComponent<DepthOfField>().focalDistance;
		ArP = mainCamera.GetComponent<DepthOfField>().aperture;
		if (time < delay){
			time = time + ((timeIncrementor/10000) * 12);
		}
		if (mainCamera.GetComponent<DepthOfField>().focalDistance < 2.4f && time >= delay){
			DoF = DoF += ((incrementor/10000) * 12);
			mainCamera.GetComponent<DepthOfField>().focalDistance = DoF;
		}	
	}
}
