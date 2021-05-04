using System.Collections;
using System.Collections.Generic;
using UnityEngine;
[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class OutlineController : MonoBehaviour {

	public float outlineWidth;
	public Color outlineColor;
	public float amplitude;
	public float speed;
	public Shader shader;
	public Material material;
	public RenderTexture GetTemporaryTexture(int width, int height) {
	RenderTexture temporaryTexture = RenderTexture.GetTemporary(width, height, 0, RenderTextureFormat.Default);
	temporaryTexture.wrapMode = TextureWrapMode.Clamp;
	temporaryTexture.filterMode = FilterMode.Bilinear;
	return temporaryTexture;
	}
	void OnRenderImage(RenderTexture src, RenderTexture dest) {
		if (shader == null) {
		shader = Shader.Find("NPR Contour Drawing/Contour Drawing");
		}

		if (material == null) {
		material = new Material(shader);
		material.SetFloat("_ContourWidth", outlineWidth);
		material.SetFloat("_Amplitude", amplitude);
		material.SetFloat("_Speed", speed);
		material.SetColor("_ContourColor", outlineColor);
		}
		var grabTextureA = GetTemporaryTexture(960, 544);
		var grabTextureB = GetTemporaryTexture(960, 544);
		var grabTextureC = GetTemporaryTexture(960, 544);
		var grabTextureD = GetTemporaryTexture(960, 544);
		Graphics.Blit(src, grabTextureA, material, 1);
		Graphics.Blit(grabTextureA, grabTextureB, material, 2);
		Graphics.Blit(grabTextureB, grabTextureC, material, 3);
		Graphics.Blit(grabTextureC, grabTextureD, material, 0);
		Graphics.Blit(grabTextureD, dest);
	}
}
