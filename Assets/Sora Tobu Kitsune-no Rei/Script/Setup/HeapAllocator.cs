using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PSVita;

public class HeapAllocator : MonoBehaviour {

	// Use this for initialization
	void Awake () {
		//release memory that is preallocated for FMV playback
	UnityEngine.PSVita.PSVitaVideoPlayer.TransferMemToHeap();
	UnityEngine.PSVita.Utility.gcEnable = false;
	//SimpleNativePlugin.SetFrequencies(499,222,222,166);
	}
	void Update(){
		if (Time.frameCount % 30 == 0){
  			System.GC.Collect();
		}
	}
}
