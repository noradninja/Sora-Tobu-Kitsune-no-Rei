using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class ColorExtension{


	public static Color Slerp(this Color startColor, Color endColor, float time){
		
		var startVector = new Vector3 (startColor.r, startColor.g, startColor.b);
		var endVector = new Vector3 (endColor.r, endColor.g, endColor.b);
		var slerpValues = Vector3.Slerp(startVector, endVector, time);
		var alpha = Mathf.Lerp(startColor.a, endColor.a, time);
		var newColor = new Color();
		newColor.r = slerpValues.x;
		newColor.g = slerpValues.y;
		newColor.b = slerpValues.z;
		return new Color (newColor.r, newColor.b, newColor.g, alpha);
	}

}
