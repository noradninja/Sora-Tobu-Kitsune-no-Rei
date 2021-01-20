Shader "Unlit/SimpleMask"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_ContourWidth ("Contour Width", Float) = 0.01
		_Amplitude ("Amplitude", Float) = 0.01
		_Speed("speed",Float) = 1
	}
	SubShader
	{


		
		LOD 100
		Blend One OneMinusSrcAlpha
		Tags { "Queue" = "Geometry-1" }  // Write to the stencil buffer before drawing any geometry to the screen
ColorMask 0 // Don't write to any colour channels
ZWrite Off // Don't write to the Depth buffer
		// Write the value 1 to the stencil buffer
Stencil
{
    Ref 1
    Comp Always
    Pass Replace
}

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				 float4 ObjectSpace : TEXCOORD2;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed _ContourWidth, _Speed, _Amplitude;
			
				float hash(float2 seed)
		{
		// We need irrationals for pseudo randomness.
		// Most (all?) known transcendental numbers will (generally) work.
		const float2 r = float2(
			23.1406926327792690,  // e^pi (Gelfond's constant)
			2.6651441426902251); // 2^sqrt(2) (Gelfond–Schneider constant)
		return frac( cos( fmod( 123456789., 1e-7 + 256. * dot(seed, r) ) ) );  
		}

			v2f vert (appdata_base v)
			{
				v2f o;
				// This is to give the same kind of perturbation as the oulines
				fixed4 os = fixed4(v.normal, 0) * (_ContourWidth + _Amplitude * (hash(v.texcoord.xy + floor(_Time.y * _Speed)) - 0.5));
				o.vertex = UnityObjectToClipPos(v.vertex + os);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				return col;
			}
			ENDCG
		}	
	}
}