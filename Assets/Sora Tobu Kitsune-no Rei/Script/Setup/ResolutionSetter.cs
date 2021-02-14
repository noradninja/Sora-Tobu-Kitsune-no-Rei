using UnityEngine;

// Render the screen in lower resolution

[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
public class ResolutionSetter : MonoBehaviour
{    
    [Range(0.5f, 1)]
    public float scale = 1;

    public FilterMode filterMode = FilterMode.Point;

    public RenderTexture rt;

    
    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        // set our filtering mode and blit to the screen
        src.filterMode = filterMode;
        
        Graphics.Blit(src, dest);
        
        //RenderTexture.ReleaseTemporary(rt);
    }
    
}