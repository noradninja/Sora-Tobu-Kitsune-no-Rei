using UnityEngine;

namespace NprPaintFilter
{
	[RequireComponent(typeof(Camera))]
	[ExecuteInEditMode]
	public class FiltersController : MonoBehaviour
	{
		public RenderTexture FinalTex;
		public enum EFilter {
			None,
			WaterColor 
		}
	
		[System.Serializable] public class WaterColor
		{
			public Material m_Mat;

			[Range(0f, 2f)] public float m_EdgeSize = 1f;
			[Range(-3f, 3f)] public float m_EdgePower = 3f;

			public void Apply()
			{
			
				m_Mat.SetFloat("_EdgeSize", m_EdgeSize);
				m_Mat.SetFloat("_EdgePower", m_EdgePower);
			}
		}

		[Header("WaterColor")] public WaterColor m_WaterColor;
	
		RenderTexture GetTemporaryTexture(int width, int height) {
						RenderTexture rt0 = RenderTexture.GetTemporary(960, 544, 0, RenderTextureFormat.Default);
						rt0.wrapMode = TextureWrapMode.Clamp;
						rt0.anisoLevel = 0;
		
						rt0.isPowerOfTwo = false; //disable PoT texture for this effect- was forcing a 1024x1024 texture for the screen which is slow on Vita due to rendering clipped pixels
						rt0.filterMode = FilterMode.Bilinear;
						return rt0;
					}
		void Start ()
		{
			//m_Halftone.GenerateBayerDitherMatrix(16);
		}
		void Update() {
			m_WaterColor.Apply();
		}
		void OnRenderImage(RenderTexture src, RenderTexture dst)
		{
	
				//RenderTexture rt1 = RenderTexture.GetTemporary(src.width, src.height, 0, RenderTextureFormat.Default);
			    var rendertex = GetTemporaryTexture(960, 544);
				var rendertex2 = GetTemporaryTexture(960, 544);

				Graphics.Blit (src, rendertex, m_WaterColor.m_Mat, 0);
				Graphics.Blit(rendertex, rendertex2, m_WaterColor.m_Mat, 1);
				Graphics.Blit(rendertex2, dst, m_WaterColor.m_Mat, 1);
				//Graphics.Blit(FinalTex, dst);

				RenderTexture.ReleaseTemporary(rendertex);
				RenderTexture.ReleaseTemporary(rendertex2);
		}
	}
}