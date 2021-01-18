using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]

public class DepthOfField : MonoBehaviour {

  public Transform focus;
  public float focalDistance = 10.0f;
  public float aperture = 3;
  public bool debug = false;

  [Range(2, 8)]
  public int downsampleFactor = 2;

  [HideInInspector]
  public Shader shader;

  [HideInInspector]
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
      shader = Shader.Find("Post Effects/Depth of Field (Mobile)");
    }

    if (material == null) {
      material = new Material(shader);
    }

    // Set depth of field variables
    if (focus != null) {
      Shader.SetGlobalFloat("_DepthFar", Vector3.Distance(transform.position, focus.position));
    } else {
      Shader.SetGlobalFloat("_DepthFar", focalDistance);
    }
    Shader.SetGlobalFloat("_DepthAperture", aperture);

    if (debug) {
      Graphics.Blit(src, dest, material, 5); // Render depth from alpha
      return;
    }

    int scale = 1; // Multiply downsampleFactor by 2 to compensate for retina if you use this on iOS

    int temporaryWidth = (Screen.width / (downsampleFactor * scale));
    int temporaryHeight = (Screen.height / (downsampleFactor * scale));
    if (temporaryWidth > temporaryHeight) {
      temporaryHeight = temporaryWidth;
    } else {
      temporaryWidth = temporaryHeight;
    }

    // Create temporary textures- changed grabbed resolutions here to compensate for the higher downsample factor for FPS boost
    var grabTextureA = GetTemporaryTexture(temporaryWidth, temporaryHeight);
    var grabTextureB = GetTemporaryTexture(temporaryWidth / 1, temporaryHeight / 1);
    var grabTextureC = GetTemporaryTexture(temporaryWidth / 1, temporaryHeight / 1);
    var grabTextureD = GetTemporaryTexture(temporaryWidth / 1, temporaryHeight / 1);

    // Pass in textures
    material.SetTexture("_GrabTextureB", grabTextureB);
    material.SetTexture("_GrabTextureC", grabTextureC);
    material.SetTexture("_GrabTextureD", grabTextureD);

    Graphics.Blit(src, grabTextureA, material, 0); // Downsample 1
    Graphics.Blit(grabTextureA, grabTextureB, material, 1); // Downsample 2
    RenderTexture.ReleaseTemporary(grabTextureA);
    Graphics.Blit(grabTextureB, grabTextureC, material, 1); // Upsample
    RenderTexture.ReleaseTemporary(grabTextureB);
    RenderTexture.ReleaseTemporary(grabTextureC);
    Graphics.Blit(null, grabTextureD, material, 2); // Blend midground and background
    RenderTexture.ReleaseTemporary(grabTextureD);
    Graphics.Blit(src, dest, material, 3); // Blend foreground and background

    // Release textures
   
   
    
   
  }
}