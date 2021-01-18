using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResolutionSetter : MonoBehaviour {

public int screenWidth = 960;
public int screenHeight = 544;

/*I have found that some downscaling is useful if you want to enable 4xAA and maintain a high FPS, particularly if you have a lot of shader effects. 
If you do that, the AA compensates for the lowered resolution and can actually make your image appear cleaner in some cases.

Common Vita divisionFactors used in retail games:
1.0 (Minimum)- 960x544, full resolution 
1.3325- 720x408, used by Metal Gear Solid HD, Uncharted: Golden Abyss, Gravity Rush, LBP
2.0 (Maximum)- 480x272, this matches the PSP's resolution (could be useful if you want to do a retro styled game on the Vita)

You will want to make sure that any UI Canvas objects you have have the Canvas Scaler set to the following for your UI to properly scale to the new resolution:

UI Scale Render Mode- Scale with Screen Size
Reference Resolution- 960 x 544
Screen Match Mode- Shrink

----OR----

Figure out your scaling factor first, and then use Photoshop to resize your UI elements to the correct resolution- this will result in a sharper UI
*/

[Range (1.0f, 2.0f)]
public float divisionFactor;

// Use this for initialization
	void Awake () {
	
		//use the divisionFactor to set the resolution to render the screen at
		screenWidth = Mathf.RoundToInt(screenWidth/divisionFactor);
		screenHeight = Mathf.RoundToInt(screenHeight/divisionFactor);
		//apply the resolution settings. We are always fullscreen on the Vita, changing the true boolean below to false will make no difference in output
		Screen.SetResolution(screenWidth, screenHeight, true);
	}
	void Update () {
		
	}
}
