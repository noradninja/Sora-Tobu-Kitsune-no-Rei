using UnityEngine;

[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class ResolutionSetter : MonoBehaviour
{   
   
    [Range (0,2)]
    public int bufferedFrames = 0;
    [Range(1.0f, 2.0f)]
    [Tooltip ("1= full (960x544), 1.334 = mid (720x408), 1.5 = low (640x368) 2= very low (PSP, 480x272)")]
    public float divisor = 1; 
    private int hResolution;
    private int vResolution;
    void Start(){
        QualitySettings.maxQueuedFrames = bufferedFrames;
        int defaultHResolution = 960;
        int defaultVResolution = 544;
        hResolution = Mathf.RoundToInt(defaultHResolution/divisor);
        vResolution = Mathf.RoundToInt(defaultVResolution/divisor);  
        Screen.SetResolution(hResolution, vResolution, true); 
    } 
}