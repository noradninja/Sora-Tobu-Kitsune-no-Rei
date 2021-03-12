using UnityEngine;
using UnityEditor;
// Render the screen in lower resolution
[SelectionBase]
[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class ResolutionSetter : MonoBehaviour
{   
   
    [Range (0,2)]
    public int bufferedFrames = 0;
    [Range(1.0f, 2.0f)]
    public float divisor = 1; //1= full (960x544) resolution, 1.334 = mid (720x408), 2= half (PSP, 480x272) resolution. Other values may not work on device 
    public int hResolution;
    public int vResolution;
   // public FilterMode filterMode = FilterMode.Point;

    //public RenderTexture rt;
    void Start(){
        QualitySettings.maxQueuedFrames = bufferedFrames;
        int defaultHResolution = 960;
        int defaultVResolution = 544;
        hResolution = Mathf.RoundToInt(defaultHResolution/divisor);
        vResolution = Mathf.RoundToInt(defaultVResolution/divisor);  
        Screen.SetResolution(hResolution, vResolution, true); 
    }
    // void OnRenderImage(RenderTexture src, RenderTexture dest)
    // {
    //     // set our filtering mode and blit to the screen
    //     src.filterMode = filterMode;
        
    //     Graphics.Blit(src, dest);
        
    //     //RenderTexture.ReleaseTemporary(rt);
    // }
    
}