using UnityEngine;
using UnityEngine.UI;
using UnityEngine.PSVita;

public class VitaRenderTexturePlayback : MonoBehaviour
{
    public string m_MoviePath;
    public RenderTexture m_RenderTexture;
    public RawImage m_Skin;

    void Start()
    {
        //this.m_Skin = this.GetComponent<RawImage>();
        PSVitaVideoPlayer.Init(m_RenderTexture);
        PSVitaVideoPlayer.Play(m_MoviePath, PSVitaVideoPlayer.Looping.Continuous, PSVitaVideoPlayer.Mode.RenderToTexture);
        m_Skin.texture = m_RenderTexture;
    }

    void OnPreRender()
    {
        
    }

    void Update()
    {
        PSVitaVideoPlayer.Update();
        
    }
}
