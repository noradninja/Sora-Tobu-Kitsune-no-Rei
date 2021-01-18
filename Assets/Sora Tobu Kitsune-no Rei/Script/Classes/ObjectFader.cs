using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectFader : MonoBehaviour {
	Renderer objectRenderer;
	Color startCol;
	Color invisCol;
	// Use this for initialization
	void Start () {
		objectRenderer = gameObject.GetComponent<Renderer>();
		startCol = objectRenderer.material.color;
		invisCol = startCol;
		invisCol.a = 0f;
	}
	
	// Update is called once per frame
	void Update () {
		float distance = (Camera.main.transform.position - transform.position).magnitude;
		if (distance < 5f){
			objectRenderer.material.color = Color.Lerp (startCol, invisCol, distance);
	}
		else if (distance > 5f){
			objectRenderer.material.color = Color.Lerp (invisCol, startCol, distance);
		}
	}
}

