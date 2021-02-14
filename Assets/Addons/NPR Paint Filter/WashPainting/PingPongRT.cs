using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace NprPaintFilter
{
	public class PingPongRT
	{
		int m_ReadTex = 0;
		int m_WriteTex = 1;
		RenderTexture[] m_Buffers;

		public PingPongRT(int w, int h)
		{
			m_ReadTex  = 0;
			m_WriteTex = 1;
			m_Buffers = new RenderTexture[2];

			for (int i = 0; i < 2; i++)
			{
				m_Buffers[i] = new RenderTexture(w, h, 0, RenderTextureFormat.Default);
				m_Buffers[i].hideFlags  = HideFlags.DontSave;
				m_Buffers[i].filterMode = FilterMode.Point;
				m_Buffers[i].wrapMode   = TextureWrapMode.Repeat;
				m_Buffers[i].Create();
			}
			Clear();
		}
		public void Swap()
		{
			int tmp = m_ReadTex;
			m_ReadTex = m_WriteTex;
			m_WriteTex = tmp;
		}
		public void Clear()
		{
			for (int i = 0; i < m_Buffers.Length; i++)
			{
				RenderTexture.active = m_Buffers[i];
				GL.Clear(false, true, Color.black);
				RenderTexture.active = null;
			}
		}
		public void Delete()
		{
			if (m_Buffers != null)
			{
				for (int i = 0; i < m_Buffers.Length; i++)
				{
					m_Buffers[i].Release();
					m_Buffers[i].DiscardContents();
					m_Buffers[i] = null;
				}
			}
		}
		public RenderTexture GetReadTex()
		{
			return m_Buffers[m_ReadTex];
		}
		public RenderTexture GetWriteTex()
		{
			return m_Buffers[m_WriteTex];
		}
	}
}