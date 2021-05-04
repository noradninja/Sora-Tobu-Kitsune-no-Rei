Shader "NPR Contour Drawing/Contour Drawing" {
    Properties {
		_ContourColor ("Contour Color", Color) = (0, 0, 0, 0)
		_ContourWidth ("Contour Width", Float) = 0.01
		_Amplitude ("Amplitude", Float) = 0.01
		_Speed ("Speed", Float) = 6.0
        _MainTexture ("Main Texture", 2D) = "white" {}
		_Color ("Color Tint", Color) = (1,1,1,1)
	
	}
	 SubShader {
	    Tags {
        	"Queue"="Geometry"
            "RenderType" = "Opaque"
            }
			ZWrite On
		Pass {
            Name "FORWARD"
          
            Cull Back
            Lighting Off
            //Blend SrcAlpha OneMinusSrcAlpha          
            CGPROGRAM
            #pragma vertex vert
			#pragma fragment frag
           	#pragma multi_compile_fog 
            #include "UnityCG.cginc"
			#include "DepthCG.cginc"
			#pragma only_renderers psp2 d3d11
			#pragma multi_compile_instancing
			#define UNITY_HARDWARE_TIER1
    	
            struct v2f {
				fixed4 position : SV_POSITION;
				fixed2 uv : TEXCOORD0;
				fixed depth : TEXCOORD2; // Define depth float to pass to `frag`
				fixed4 color : COLOR;
				UNITY_FOG_COORDS(8)
				UNITY_VERTEX_INPUT_INSTANCE_ID
     		 };
			
			uniform sampler2D _MainTexture;
			fixed4 _MainTexture_ST;
			UNITY_INSTANCING_BUFFER_START(Props)
                UNITY_DEFINE_INSTANCED_PROP(fixed4, _Color)
            UNITY_INSTANCING_BUFFER_END(Props)

            v2f vert(appdata_base i) {
				v2f o;
				UNITY_SETUP_INSTANCE_ID(i);
                UNITY_TRANSFER_INSTANCE_ID(i, o);
				o.position = UnityObjectToClipPos(i.vertex);
				o.uv = TRANSFORM_TEX(i.texcoord, _MainTexture);
				UNITY_TRANSFER_FOG(o,o.position);
				o.color = UNITY_ACCESS_INSTANCED_PROP(Props, _Color);
				// Calculate depth and place in output
				o.depth = CalculateDepth(i.vertex);
				return o;
     		 }

			fixed4 frag(v2f i) : COLOR {
				UNITY_SETUP_INSTANCE_ID(i);
				fixed4 color = UNITY_ACCESS_INSTANCED_PROP(Props, _Color);
				fixed4 main_color = tex2D(_MainTexture, i.uv);
				

				main_color.rgb = i.color.rgb*main_color.rgb;
				main_color.a = i.depth * i.color.a;
				UNITY_APPLY_FOG(i.fogCoord, main_color);
				return main_color;
			}
            ENDCG
        }
		Pass {

			Cull Front
			Lighting Off
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#include "DepthCG.cginc"
			#pragma only_renderers psp2 d3d11
			#pragma fragmentoption ARB_precision_hint_fastest
			#define UNITY_HARDWARE_TIER1

			struct v2f2 {
				fixed4 pos : SV_POSITION;
			
				fixed depth : TEXCOORD2; // Define depth float to pass to `frag`
				UNITY_FOG_COORDS(8)
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			fixed hash(float2 seed) {
			// We need irrationals for pseudo randomness.
			// Most (all?) known transcendental numbers will (generally) work.
			const float2 r = float2 (
				23.1406926327792690,  // e^pi (Gelfond's constant)
				2.6651441426902251 
				); // 2^sqrt(2) (Gelfond–Schneider constant)
			return frac( cos( fmod( 123456789., 1e-7 + 256. * dot(seed, r) ) ) );  
			}

			UNITY_INSTANCING_BUFFER_START(Props)
				UNITY_DEFINE_INSTANCED_PROP(fixed4, _ContourColor)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _ContourWidth)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Speed)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Amplitude)
			UNITY_INSTANCING_BUFFER_END(Props)
			
			v2f2 vert (appdata_base v) {
				v2f2 o;
				fixed4 os = fixed4(v.normal, 0) * (UNITY_ACCESS_INSTANCED_PROP(Props,_ContourWidth) + UNITY_ACCESS_INSTANCED_PROP(Props, _Amplitude) * (hash(v.texcoord.xy + floor(_Time.y * UNITY_ACCESS_INSTANCED_PROP(Props,_Speed))) - 0.5));
				o.pos = UnityObjectToClipPos(v.vertex + os);
				
				o.depth = CalculateDepth(v.vertex);
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag (v2f2 IN) : COLOR {
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_APPLY_FOG(IN.fogCoord, UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor));
				return UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor);
			}
			ENDCG
		}
			Pass {

			Cull Front
			Lighting Off
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
//#pragma multi_compile_fog 
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#include "DepthCG.cginc"
			#pragma only_renderers psp2 d3d11
			#pragma fragmentoption ARB_precision_hint_fastest
			#define UNITY_HARDWARE_TIER1

			struct v2f3 {
				fixed4 pos : SV_POSITION;
			
				fixed depth : TEXCOORD2; // Define depth float to pass to `frag`
				UNITY_FOG_COORDS(8)
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			fixed hash(float2 seed) {
			// We need irrationals for pseudo randomness.
			// Most (all?) known transcendental numbers will (generally) work.
			const float2 r = float2 (
				23.1406926327792690,  // e^pi (Gelfond's constant)
				2.6651441426902251 
				); // 2^sqrt(2) (Gelfond–Schneider constant)
			return frac( cos( fmod( 987654321., 1e-7 + 256. * dot(seed, r) ) ) );  
			}

			UNITY_INSTANCING_BUFFER_START(Props)
				UNITY_DEFINE_INSTANCED_PROP(fixed4, _ContourColor)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _ContourWidth)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Speed)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Amplitude)
			UNITY_INSTANCING_BUFFER_END(Props)
			
			v2f3 vert (appdata_base v) {
				v2f3 o;
				fixed4 os = fixed4(v.normal, 0) * (UNITY_ACCESS_INSTANCED_PROP(Props,_ContourWidth) + UNITY_ACCESS_INSTANCED_PROP(Props, _Amplitude) * (hash(v.texcoord.xy + floor(_Time.y * UNITY_ACCESS_INSTANCED_PROP(Props,_Speed))) - 0.5));
				o.pos = UnityObjectToClipPos(v.vertex + os);
				
				o.depth = CalculateDepth(v.vertex);
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag (v2f3 IN) : COLOR {
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_APPLY_FOG(IN.fogCoord, UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor));
				return UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor);
			}
			ENDCG
		}
		Pass {

			Cull Front
			Lighting Off
			Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
//#pragma multi_compile_fog 
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#include "DepthCG.cginc"
			#pragma only_renderers psp2 d3d11
			#pragma fragmentoption ARB_precision_hint_fastest
			#define UNITY_HARDWARE_TIER1

			struct v2f4 {
				fixed4 pos : SV_POSITION;
			
				fixed depth : TEXCOORD2; // Define depth float to pass to `frag`
				UNITY_FOG_COORDS(8)
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			fixed hash(float2 seed) {
			// We need irrationals for pseudo randomness.
			// Most (all?) known transcendental numbers will (generally) work.
			const float2 r = float2 (
				23.1406926327792690,  // e^pi (Gelfond's constant)
				2.6651441426902251 
				); // 2^sqrt(2) (Gelfond–Schneider constant)
			return frac( cos( fmod( 918273645., 1e-7 + 256. * dot(seed, r) ) ) );  
			}

			UNITY_INSTANCING_BUFFER_START(Props)
				UNITY_DEFINE_INSTANCED_PROP(fixed4, _ContourColor)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _ContourWidth)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Speed)
				UNITY_DEFINE_INSTANCED_PROP(fixed, _Amplitude)
			UNITY_INSTANCING_BUFFER_END(Props)
			
			v2f4 vert (appdata_base v) {
				v2f4 o;
				fixed4 os = fixed4(v.normal, 0) * (UNITY_ACCESS_INSTANCED_PROP(Props,_ContourWidth) + UNITY_ACCESS_INSTANCED_PROP(Props, _Amplitude) * (hash(v.texcoord.xy + floor(_Time.y * UNITY_ACCESS_INSTANCED_PROP(Props,_Speed))) - 0.5));
				o.pos = UnityObjectToClipPos(v.vertex + os);
				
				o.depth = CalculateDepth(v.vertex);
				UNITY_TRANSFER_FOG(o,o.pos);
				return o;
			}

			fixed4 frag (v2f4 IN) : COLOR {
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_APPLY_FOG(IN.fogCoord, UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor));
				return UNITY_ACCESS_INSTANCED_PROP(Props,_ContourColor);
			}
			ENDCG
		}
	}
	Fallback "Unlit/Diffuse"
} 