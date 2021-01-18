using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//using UnityEditor;
// [CustomEditor(typeof(PostBuild))]
//[CanEditMultipleObjects]
[ExecuteInEditMode]
public class BuildSetup : MonoBehaviour {
	public bool USB = false;
	public string IP_Address = "0.0.0.0";
	public string Build_Name = "Build";
	public string Drive = "E:";
	void Update(){
		//BroadcastMessage("refreshValues");
	}
}