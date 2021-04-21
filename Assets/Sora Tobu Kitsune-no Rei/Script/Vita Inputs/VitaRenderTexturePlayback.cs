using UnityEngine;
using UnityEngine.UI;
using UnityEngine.PSVita;

public class VitaRenderTexturePlayback : MonoBehaviour
{
    public string m_MoviePath;
    public RenderTexture m_RenderTexture;
    public GameObject m_Skin;
    public bool isPlaying;

    void Start()
    {
       // m_RenderTexture = new RenderTexture(512,512,0,RenderTextureFormat.Default);
        PSVitaVideoPlayer.Init(m_RenderTexture);
        PSVitaVideoPlayer.Play(m_MoviePath, PSVitaVideoPlayer.Looping.Continuous, PSVitaVideoPlayer.Mode.RenderToTexture);
        OnMovieEvent(1);
        //m_Skin.GetComponent<Material>().SetTexture("_AlphaTex", m_RenderTexture);
        m_Skin.GetComponent<RawImage>().texture = m_RenderTexture;
    
    }

    void OnPreRender()
    {
        
    }
    void OnMovieEvent(int eventID)
{
    PSVitaVideoPlayer.MovieEvent movieEvent = (PSVitaVideoPlayer.MovieEvent)eventID;
    switch (movieEvent)
    {
        case PSVitaVideoPlayer.MovieEvent.PLAY:
            isPlaying = true;
            DebugVita.Log("Video playing from " + m_MoviePath + " on level " + SetScenes.currentScene);
            break;

        case PSVitaVideoPlayer.MovieEvent.STOP:
            isPlaying = false;
            DebugVita.Log("Video not playing!");
            break;
    }
}
    void Update()
    {
        PSVitaVideoPlayer.Update();
        
    }
}
