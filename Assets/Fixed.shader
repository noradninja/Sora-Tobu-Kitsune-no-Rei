 // Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PS Vita/Clouds_Combined" {
	Properties {		 
		_CloudColor ("Color", Color) = (1, 1, 1, 0.5)
		_Density ("Density", Range(0.0, 2.0)) = 0.2
		_Speed ("Speed", Range(-1.0, 1.0)) = 0.1
		_CloudsMap ("Clouds Map: R(Scatter Map 1) G(Scatter Map 2) B(Density Map) A(Texture Map)", 2D) = "white" {}
	}

	SubShader {
		Tags { "Queue"="Transparent" "RenderType"="Transparent" }
		cull off
		zwrite off
		Blend SrcAlpha OneMinusSrcAlpha

		Pass {
			// indicate that our pass is the "base" pass in forward
            // rendering pipeline. It gets ambient and main directional
            // light data set up; light direction in _WorldSpaceLightPos0
            // and color in _LightColor0

		   Tags {"LightMode"="ForwardBase"}
        
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
			#pragma multi_compile_fwdbase
            #include "UnityCG.cginc" // for UnityObjectToWorldNormal
            #include "UnityLightingCommon.cginc" // for _LightColor0
 
		
			float4 _CloudColor;
			sampler2D _CloudsMap;
			float4 _CloudsMap_ST;
	
			float _Speed;
			float _Density;

			struct appdata {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 pos : SV_POSITION;
				fixed4 diff : COLOR0; // diffuse lighting color
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
			};

			v2f vert (appdata_base v) {
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv0.xy = TRANSFORM_TEX(v.texcoord, _CloudsMap)* float2(2, 2) + _Time.x * _Speed * float2(1.5, 1.0);
				o.uv0.zw = TRANSFORM_TEX(v.texcoord, _CloudsMap)* float2(2, 2) + _Time.x * _Speed * float2(1.0, 1.2);
				o.uv1.xy = TRANSFORM_TEX(v.texcoord, _CloudsMap) * float2(10, 10.5) + _Time.x * _Speed * float2(0.75, 0.5);
				o.uv1.zw = TRANSFORM_TEX(v.texcoord, _CloudsMap) * float2(10.6, 10) + _Time.x * _Speed * float2(0.5, 0.6);
				// get vertex normal in world space
				float3 worldNormal = UnityObjectToWorldNormal(v.normal);
				// dot product between normal and light direction for
				// standard diffuse (Lambert) lighting
				float nl = max(0, dot(worldNormal, -_WorldSpaceLightPos0.xyz));
				// factor in the light color
				o.diff = nl * _LightColor0;
				return o;
			}
			
			half4 frag (v2f i) : SV_Target {
                fixed4 col = 0;

				float4 n0 = tex2D(_CloudsMap, i.uv0.xy);
				float4 n1 = tex2D(_CloudsMap, i.uv0.zw);
				float4 n2 = tex2D(_CloudsMap, i.uv1.xy);
				float4 n3 = tex2D(_CloudsMap, i.uv1.zw);

				float4 fbm = saturate(n0.r + n1.g + n2.b + n3.a - _Density); //we grab the channels here
				col.a = saturate(fbm.xyz * _CloudColor.a * 2);
				col.rgb = _CloudColor.rgb * i.diff;
				return col;
			}
			ENDCG
		}
	}
}