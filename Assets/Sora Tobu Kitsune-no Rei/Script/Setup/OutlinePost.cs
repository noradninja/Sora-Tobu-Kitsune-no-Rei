using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OutlinePost : MonoBehaviour {

  [Range(1, 4)]
  public int downsampleFactor = 1;

  public Shader shader;

  public Material material;

  private RenderTexture GetTemporaryTexture(int width, int height) {
    RenderTexture temporaryTexture = RenderTexture.GetTemporary(width, height, 0, RenderTextureFormat.Default);//changes RenderTextureFormat to Default, better on Vita than RGBA32
    temporaryTexture.wrapMode = TextureWrapMode.Clamp;
    temporaryTexture.anisoLevel = 0;
    temporaryTexture.antiAliasing = 1;
    temporaryTexture.isPowerOfTwo = false; //disable PoT texture for this effect- was forcing a 1024x1024 texture for the screen which is slow on Vita due to rendering clipped pixels
    temporaryTexture.filterMode = FilterMode.Bilinear;
    return temporaryTexture;
  }

  void Awake() {
    GetComponent<Camera>().depthTextureMode = DepthTextureMode.None; // Explicitly disable depthmap
  }

  void OnRenderImage(RenderTexture src, RenderTexture dest) {
    if (shader == null) {
      shader = Shader.Find("PostOutlineEffectShader");
    }

    if (material == null) {
      material = new Material(shader);
    }

    int temporaryWidth = 960;
    int temporaryHeight = 544;
    // if (temporaryWidth > temporaryHeight) {
    //   temporaryHeight = temporaryWidth;
    // } else {
    //   temporaryWidth = temporaryHeight;
    // }

    // Create temporary textures- changed grabbed resolutions here to compensate for the higher downsample factor for FPS boost
    var grabTexture1 = GetTemporaryTexture(temporaryWidth, temporaryHeight);
    var grabTexture2 = GetTemporaryTexture(temporaryWidth, temporaryHeight);
    var grabTexture3 = GetTemporaryTexture(temporaryWidth, temporaryHeight);
    var grabTexture4 = GetTemporaryTexture(temporaryWidth, temporaryHeight);

    // Pass in textures
    material.SetTexture("_GrabTextureB", grabTexture2);
    material.SetTexture("_GrabTextureC", grabTexture3);
    material.SetTexture("_GrabTextureD", grabTexture4);

    Graphics.Blit(src, grabTexture2, material, 0); // Downsample 1
    Graphics.Blit(grabTexture1, grabTexture2, material, 1); // Downsample 2
    Graphics.Blit(grabTexture2, grabTexture3, material, 2); // Upsample
    Graphics.Blit(grabTexture3, grabTexture4, material, 3); // Blend midground and background
    Graphics.Blit(src, dest, material, 4); // Blend foreground and background

    // Release textures
    RenderTexture.ReleaseTemporary(grabTexture1);
    RenderTexture.ReleaseTemporary(grabTexture2);
    RenderTexture.ReleaseTemporary(grabTexture3);
    RenderTexture.ReleaseTemporary(grabTexture4);
  }
}
