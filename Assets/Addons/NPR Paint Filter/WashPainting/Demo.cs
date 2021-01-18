using UnityEngine;
using System.Collections;

namespace NprPaintFilter
{
	[RequireComponent (typeof (Camera))]
	public class Demo : MonoBehaviour
	{
		public Material m_Mat;
		public Texture2D m_Paper;
		[Range(0f, 1f)] public float m_Alpha = 1f;
		[Range(0f, 0.005f)] public float m_Evaporation = 0.0001f;
		[Range(0, 10)] public int m_Iterations = 4;
		public int m_Size = 1024;
		PingPongRT m_PPRT;
		bool m_Dragging = false;
		Vector2 m_PrevMouse;

		void Start()
		{
			m_PPRT = new PingPongRT(m_Size, m_Size);
			m_Mat.SetTexture("_PaperTex", m_Paper);
			Initialize();
		}
		void Update()
		{
			Vector3 mousePos = Input.mousePosition;
			Vector2 current = new Vector2(mousePos.x / Screen.width, mousePos.y / Screen.height);
			m_Mat.SetVector("_Prev", m_PrevMouse);

			if (m_Dragging)
				m_Mat.SetVector("_Brush", new Vector3(current.x, current.y, 0.015f));
			else
				m_Mat.SetVector("_Brush", new Vector3(0, 0, 0));

			if (Input.GetMouseButtonDown(0))
				m_Dragging = true;
			else if (Input.GetMouseButtonUp(0))
				m_Dragging = false;

			m_PrevMouse = current;

			m_Mat.SetFloat("_Alpha", m_Alpha);
			m_Mat.SetFloat("_Evaporation", m_Evaporation);

			for (int i = 0; i < m_Iterations; i++)
			{
				Graphics.Blit(m_PPRT.GetReadTex(), m_PPRT.GetWriteTex(), m_Mat, 1);
				m_PPRT.Swap();
			}
		}
		void Initialize()
		{
			Graphics.Blit(m_PPRT.GetReadTex(), m_PPRT.GetWriteTex(), m_Mat, 0);
			m_PPRT.Swap();
		}
		void OnRenderImage(RenderTexture src, RenderTexture dst)
		{
			Graphics.Blit(m_PPRT.GetReadTex(), dst, m_Mat, 2);
		}
		void OnGUI()
		{
			if (GUI.Button(new Rect(10, 10, 100, 30), "Reset"))
				Initialize();
		}
	}
}
