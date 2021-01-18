using UnityEngine;
using System.Collections;

namespace NPRContourDrawing.MultiPass
{
	public class Demo : MonoBehaviour
	{
		public bool m_EnableContour = true;
		public GameObject m_MainCamera;
		ContourDrawing[] m_Objs;

		void Start ()
		{
			m_Objs = GameObject.FindObjectsOfType<ContourDrawing> ();
			for (int i = 0; i < m_Objs.Length; i++){
				m_Objs[i].Initialize ();
				m_Objs[i].FxEnable ();
				m_Objs[i].UpdateSelfParameters ();
			}
		}
		
		void Update ()
		{
			
		}
	}
}
