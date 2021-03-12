using UnityEngine;

namespace NprPaintFilter
{
	[RequireComponent(typeof(Camera))]
	[ExecuteInEditMode]
	public class FiltersController : MonoBehaviour
	{
		//public RenderTexture FinalTex;
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
						RenderTexture temporaryTexture = RenderTexture.GetTemporary(width, height, 0, RenderTextureFormat.Default);
						temporaryTexture.wrapMode = TextureWrapMode.Clamp;
						temporaryTexture.anisoLevel = 0;
						temporaryTexture.filterMode = FilterMode.Bilinear;
						return temporaryTexture;
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
			    var rendertex = GetTemporaryTexture(640, 368);
				Graphics.Blit (src, rendertex, m_WaterColor.m_Mat, 0);
				var rendertex2 = GetTemporaryTexture(640, 368);
				Graphics.Blit(rendertex, rendertex2, m_WaterColor.m_Mat, 1);
				RenderTexture.ReleaseTemporary(rendertex);
				Graphics.Blit(rendertex2, dst, m_WaterColor.m_Mat, 1);
				RenderTexture.ReleaseTemporary(rendertex2);
		}
	}
}