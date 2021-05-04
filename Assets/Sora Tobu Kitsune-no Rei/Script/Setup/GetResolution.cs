using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class GetResolution : MonoBehaviour {
	public RenderTexture foreGround;
    public RenderTexture backGround;
    public RenderTexture combinedTex;
	// Use this for initialization
	 void OnRenderImage(RenderTexture src, RenderTexture dst)
    {
        src = foreGround;
        dst =  backGround;
        RenderTexture final = combinedTex;
        Graphics.Blit (src, dst);
        Graphics.Blit (dst, final);
    }
}
