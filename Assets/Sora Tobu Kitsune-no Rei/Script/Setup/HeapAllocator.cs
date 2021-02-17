using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PSVita;

public class HeapAllocator : MonoBehaviour {

	// Use this for initialization
	void Awake () {
		//release memory that is preallocated for FMV playback
	UnityEngine.PSVita.PSVitaVideoPlayer.TransferMemToHeap();
	}
}
