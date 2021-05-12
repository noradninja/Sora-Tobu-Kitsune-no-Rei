using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UV_Scroller : MonoBehaviour {
	public float scrollSpeed = 0.5F;
	public bool uAxis = false;
	public bool vAxis = false;
	private float offset;
	Renderer rend;
	// Use this for initialization
	void Start () {
		rend = GetComponent <Renderer> ();
	}
	
	// Update is called once per frame
	void Update () {
		float offset = Time.time * scrollSpeed;
		if (uAxis == true && vAxis == true)
		{
			rend.material.SetTextureOffset ("_DistortionTex", new Vector2(offset,offset));
		}
		else if (uAxis == true)
		{
			rend.material.SetTextureOffset ("_DistortionTex", new Vector2(offset,0));
		}
		else if (vAxis == true)
		{
			rend.material.SetTextureOffset ("_DistortionTex", new Vector2(0,offset));
		}
			
	}
}



