﻿using UnityEngine;
//using UnityEditor;
using System.Collections;
using System.Collections.Generic;

public class ContourDrawing : MonoBehaviour
{
	[Header("Parameters")]
	public bool m_TexturedContour = false;
	public Texture2D m_ContourTex;
	public Color m_ContourColor = Color.black;
	[Range(0f, 10.0f)] public float m_ContourWidth = 0.01f;
	[Range(0f, 64f)] public float m_AnimSpeed = 6f;
	[Range(0f, 10.0f)] public float m_AnimAmplitude = 0.01f;
	[Header("Internal")]
	public Renderer m_Rd;
	public Shader m_SdrStandard;
	public Shader m_SdrContourDrawing;
	
	public void Initialize ()
	{
		m_Rd = GetComponent<Renderer> ();
		m_SdrStandard = Shader.Find ("Standard");
		m_SdrContourDrawing = Shader.Find ("NPR Contour Drawing/Contour Drawing");
	}
	public void UpdateSelfParameters ()
	{
		Material[] mats = m_Rd.materials;
		for (int i = 0; i < mats.Length; i++)
		{
			if (m_TexturedContour)
				mats[i].EnableKeyword ("NPR_CONTOUR_TEX");
			else
				mats[i].DisableKeyword ("NPR_CONTOUR_TEX");
			mats[i].SetTexture ("_ContourTex", m_ContourTex);
			mats[i].SetFloat ("_Amplitude", m_AnimAmplitude);
			mats[i].SetFloat ("_Speed", m_AnimSpeed);
			mats[i].SetColor ("_ContourColor", m_ContourColor);
			mats[i].SetFloat ("_ContourWidth", m_ContourWidth);
		}
	}
	public void FxEnable ()
	{
		Material[] mats = m_Rd.materials;
		for (int i = 0; i < mats.Length; i++)
			mats[i].shader = m_SdrContourDrawing;
	}
	public void FxDisable ()
	{
		Material[] mats = m_Rd.materials;
		for (int i = 0; i < mats.Length; i++)
			mats[i].shader = m_SdrStandard;
	}
}