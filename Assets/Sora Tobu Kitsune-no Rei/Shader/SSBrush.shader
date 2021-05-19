Shader "Unlit/SSBrush"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
// Upgrade NOTE: excluded shader from DX11; has structs without semantics (struct appdata members ratio)
#pragma exclude_renderers d3d11
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				
			};
			

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			const float PI_3 = 1.0471975512;
			uniform float ratio, time;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				float v = 0.004f;
				float2 d = float2(v / ratio, v);

				#define hexa(k) float2(cos(PI_3 * k), sin(PI_3 * k))
				float2 deltas[6] = float2[6](
				hexa(0.), hexa(1.), hexa(2.), 
					hexa(3.), hexa(4.), hexa(5.) 
				);
				#undef hexa

				float2 xy = float2(uv.x, 1.0f - uv.y);
				float4 col = TRANSFORM_TEX(_MainTex,  xy);

				for (int i = 0; i < 6; ++i) {
					float4 col2 = TRANSFORM_TEX(_MainTex,  xy + deltas[i] * d);
					float4 t = max(sign(col2 - col), 0.);
					col += (col2 - col) * t;
				}

				col.a = 1.0;
				col.rgb = col.rgb;
				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}

