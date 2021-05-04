using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraResolutionScaler : MonoBehaviour
{

	[ExecuteInEditMode]
	
	[Range(1.0F, 2.0F)]
	[Tooltip ("1= full (960x544), 1.334 = mid (720x408), 1.5 = low (640x368) 2= very low (PSP, 480x272)")]
	public float renderDivisor = 1.0F;
	public FilterMode filterMode = FilterMode.Bilinear;
	private new Camera camera;
	/* You should create a render texture for this, ARGB32 at 960 x 544 resolution and drop it on the script in the Inspector */
	public RenderTexture rendertex; 
	private Rect originalRect;
	private Rect scaledRect;
	void Awake(){
		camera = this.GetComponent<Camera>();
	}
	void OnDestroy ()
	{
		camera.rect = originalRect;
	}

	void OnPreRender ()
	{
		originalRect = camera.rect;
		scaledRect.Set(originalRect.x, originalRect.y, originalRect.width / renderDivisor, originalRect.height / renderDivisor);
		camera.rect = scaledRect;
	}

	void OnRenderImage (RenderTexture src, RenderTexture dest)
	{
		camera.rect = originalRect;
		src.filterMode = filterMode;
		Graphics.Blit(src, rendertex);
		Graphics.Blit(rendertex, dest);
	}
}
