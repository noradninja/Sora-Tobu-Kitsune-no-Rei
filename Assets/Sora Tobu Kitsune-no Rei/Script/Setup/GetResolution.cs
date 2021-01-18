using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class GetResolution : MonoBehaviour {
	public Text resText;
	// Use this for initialization
	 void Start()
    {
        Resolution[] resolutions = Screen.resolutions;

        // Print the resolutions
        foreach (var res in resolutions)
        {
            resText.text += (res.width + "x" + res.height + " : " + res.refreshRate + "  ");
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
