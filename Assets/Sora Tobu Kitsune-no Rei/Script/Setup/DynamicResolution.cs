using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DynamicResolution : MonoBehaviour {

    public float widthScale = 1.0f;
    public float heightScale = 1.0f;

    // Use this for initialization
    void Start() {
        ScalableBufferManager.ResizeBuffers(widthScale, heightScale);
    }
}
