using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[ExecuteInEditMode]
public class Contour_Drawing_Post : MonoBehaviour {

	public Color _ContourColor;
	public float _ContourWidth = 0.1f;
	public float _Amplitude = 0.1f;
	public float _Speed = 6.0f;
	public Shader shader;
	public Material material;
	public RenderTexture main;
	int temporaryWidth = 960;
	int temporaryHeight = 544;
	private RenderTexture GetTemporaryTexture(int width, int height) {
		RenderTexture temporaryTexture = RenderTexture.GetTemporary(width, height, 0, RenderTextureFormat.Default);
		temporaryTexture.wrapMode = TextureWrapMode.Clamp;
		temporaryTexture.filterMode = FilterMode.Bilinear;
		return temporaryTexture;
	}
	void OnRenderImage(RenderTexture src, RenderTexture dest) {
		 if (shader == null) {
      shader = Shader.Find ("NPR Contour Drawing/Contour Drawing");
    }

    if (material == null) {
      material = new Material(shader);
    }
	Shader.SetGlobalColor("_ContourColor", _ContourColor);
	Shader.SetGlobalFloat("_ContourWidth", _ContourWidth);
	Shader.SetGlobalFloat("_Amplitude", _Amplitude);
	Shader.SetGlobalFloat("_Speed", _Speed);

		//var grabTextureA = GetTemporaryTexture(temporaryWidth, temporaryHeight);
		var grabTextureB = GetTemporaryTexture(temporaryWidth, temporaryHeight);
		var grabTextureC = GetTemporaryTexture(temporaryWidth, temporaryHeight);
		var grabTextureD = GetTemporaryTexture(temporaryWidth, temporaryHeight);
		material.SetTexture("_GrabTextureB", grabTextureB);
		material.SetTexture("_GrabTextureC", grabTextureC);
		material.SetTexture("_GrabTextureD", grabTextureD);
		Graphics.Blit(src, main, material, 0); // first outline
		Graphics.Blit(main, grabTextureB, material, 1); // second outline
		//Graphics.Blit(grabTextureB, grabTextureC, material, 2); // third outline
		//Graphics.Blit(grabTextureC, grabTextureD, material, 3); // base texture
		Graphics.Blit(grabTextureB, dest); // output
	}
}
