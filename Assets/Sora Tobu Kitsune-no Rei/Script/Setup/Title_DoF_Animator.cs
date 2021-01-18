using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Title_DoF_Animator : MonoBehaviour {
	public float DoF;
	public float ArP;
	public float incrementor = 0.001f;
	public GameObject mainCamera;
	

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		//get focal distance from main camera
		DoF = mainCamera.GetComponent<DepthOfField>().focalDistance;
		ArP = mainCamera.GetComponent<DepthOfField>().aperture;
		if (mainCamera.GetComponent<DepthOfField>().focalDistance < 2.4f){
			DoF = DoF += ((incrementor/10000) * 6);
			mainCamera.GetComponent<DepthOfField>().focalDistance = DoF;
		}	
	}
}
