using UnityEngine;

[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class ResolutionSetter : MonoBehaviour
{   
   
    [Range (0,2)]
    public int bufferedFrames = 0;
    [Range(1.0f, 2.0f)]
    public float divisor = 1; //1= full (960x544) resolution, 1.334 = mid (720x408), 1.5 = low (640x363) 2= very low (PSP, 480x272) resolution. 
    public int hResolution;
    public int vResolution;
    void Start(){
        QualitySettings.maxQueuedFrames = bufferedFrames;
        int defaultHResolution = 960;
        int defaultVResolution = 544;
        hResolution = Mathf.RoundToInt(defaultHResolution/divisor);
        vResolution = Mathf.RoundToInt(defaultVResolution/divisor);  
        Screen.SetResolution(hResolution, vResolution, true); 
    } 
}