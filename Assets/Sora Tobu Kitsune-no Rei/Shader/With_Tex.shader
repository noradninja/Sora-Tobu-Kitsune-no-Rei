Shader "NPR Contour Drawing/Contour Drawing w/Texture" {
    Properties {
		_ContourColor ("Contour Color", Color) = (0, 0, 0, 0)
		_ContourWidth ("Contour Width", Float) = 0.01
		_Amplitude ("Amplitude", Float) = 0.01
		_Speed ("Speed", Float) = 6.0
        _MainTexture ("Main Texture", 2D) = "white" {}
		_ContourTex ("Contour Texture", 2D) = "white" {}
		
	
	}
	 SubShader {
	   Tags {
        	//"Queue"="Transparent"
            //"RenderType" = "TransparentCutout"
            }
			ZWrite On
		 Pass {
            Name "FORWARD"
          
            Cull Back
            Lighting Off
            //Blend Zero One          
            CGPROGRAM
            #pragma vertex vert
			#pragma fragment frag
           	#pragma multi_compile_fog 
            #include "UnityCG.cginc"
			#include "Shared.cginc"
			#pragma only_renderers psp2 d3d11
           
            uniform fixed4 main_color;
            uniform sampler2D _MainTexture; uniform fixed4 _MainTexture_ST;
            struct v2f {
				float4 position : SV_POSITION;
				float2 uv : TEXCOORD0;
				float depth : TEXCOORD2; // Define depth float to pass to `frag`
				UNITY_FOG_COORDS(8)
     		 };
            v2f vert(appdata_base i) {
        v2f o;
        o.position = UnityObjectToClipPos(i.vertex);
        o.uv = TRANSFORM_TEX(i.texcoord, _MainTexture);
		UNITY_TRANSFER_FOG(o,o.position);

        // Calculate depth and place in output
        o.depth = CalculateDepth(i.vertex);
        return o;
      }

      fixed4 frag(v2f i) : COLOR {
        fixed4 main_color = tex2D(_MainTexture, i.uv);
		
        // The magic
        // clip(main_color.a + 0.1f);
        // Place `vert` depth calculation into alpha channel
        main_color.a = i.depth;
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
		#pragma multi_compile_fog 
		//#define UNITY_PASS_FORWARDBASE
		#define SHADER_API_VITA
		#include "UnityCG.cginc"
		#include "Shared.cginc"
		#pragma only_renderers psp2 d3d11
		uniform fixed4 main_color;
            uniform sampler2D _ContourTex; uniform fixed4 _ContourTex_ST;
		//#pragma multi_compile_fwdbase
		//#pragma target 3.0
			struct v2f2
		{
			float4 pos : SV_POSITION;
			float4 scrpos : TEXCOORD0;
			float depth : TEXCOORD2; // Define depth float to pass to `frag`
			float2 uv : TEXCOORD3;
			UNITY_FOG_COORDS(8)
		};

		fixed4 _ContourColor;
		fixed _ContourWidth, _Speed, _Amplitude;
		fixed4 frag (v2f2 IN) : COLOR {
			// The magic
      // clip(_ContourColor.a - 0.5f);

        // Place `vert` depth calculation into alpha channel
       // _ContourColor.a = IN.depth;
	   fixed4 main_color = tex2D(_ContourTex, IN.uv);
	   	UNITY_APPLY_FOG(IN.fogCoord,_ContourColor);
		   main_color.a = (_ContourColor.a * main_color.a);
			return (main_color);
		}
		float hash(float2 seed)
		{
		// We need irrationals for pseudo randomness.
		// Most (all?) known transcendental numbers will (generally) work.
		const float2 r = float2(
			23.1406926327792690,  // e^pi (Gelfond's constant)
			2.6651441426902251); // 2^sqrt(2) (Gelfond–Schneider constant)
		return frac( cos( fmod( 123456789., 1e-7 + 256. * dot(seed, r) ) ) );  
		}

				v2f2 vert (appdata_base v)
				{
					v2f2 o;

					fixed4 os = fixed4(v.normal, 0) * (_ContourWidth + _Amplitude * (hash(v.texcoord.xy + floor(_Time.y * _Speed)) - 0.5));
					o.pos = UnityObjectToClipPos(v.vertex + os);
					//o.uv = UnityObjectToViewPos (v.vertex + os);
					o.uv = TRANSFORM_TEX(v.vertex - os, _ContourTex);
					o.scrpos = o.pos;
					o.depth = CalculateDepth(v.vertex);
					UNITY_TRANSFER_FOG(o,o.pos);
					return o;
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
		#pragma multi_compile_fog 
		//#define UNITY_PASS_FORWARDBASE
		#define SHADER_API_VITA
		#include "UnityCG.cginc"
		#include "Shared.cginc"
		#pragma only_renderers psp2 d3d11
			uniform fixed4 main_color;
            uniform sampler2D _ContourTex; uniform fixed4 _ContourTex_ST;
		//#pragma multi_compile_fwdbase
		//#pragma target 3.0
			struct v2f3
		{
			float4 pos : SV_POSITION;
			float4 scrpos : TEXCOORD0;
			float depth : TEXCOORD2; // Define depth float to pass to `frag`
			float2 uv : TEXCOORD3;
			UNITY_FOG_COORDS(8)
		};
		fixed4 _ContourColor;
		fixed _ContourWidth, _Speed, _Amplitude;
		fixed4 frag (v2f3 IN) : COLOR {
 		fixed4 main_color = tex2D(_ContourTex, IN.uv);
	   	UNITY_APPLY_FOG(IN.fogCoord,_ContourColor);
		   main_color.a = (_ContourColor.a * main_color.a);
			return (main_color);
		}
		float hash(float2 seed)
		{
		// We need irrationals for pseudo randomness.
		// Most (all?) known transcendental numbers will (generally) work.
		const float2 r = float2(
			23.1406926327792690,  // e^pi (Gelfond's constant)
			2.6651441426902251); // 2^sqrt(2) (Gelfond–Schneider constant)
		return frac( cos( fmod( 987654321., 1e-7 + 256. * dot(seed, r) ) ) );  
		}

				v2f3 vert (appdata_base v)
				{
				v2f3 o;

					fixed4 os = fixed4(v.normal, 0) * (_ContourWidth + _Amplitude * (hash(v.texcoord.xy + floor(_Time.y * _Speed)) - 0.5));
					o.pos = UnityObjectToClipPos(v.vertex + os);
					//o.uv = UnityObjectToViewPos (v.vertex + os);
					o.uv = TRANSFORM_TEX(v.vertex - os, _ContourTex);
					o.scrpos = o.pos;
					o.depth = CalculateDepth(v.vertex);
					UNITY_TRANSFER_FOG(o,o.pos);
					return o;
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
		#pragma multi_compile_fog 
		//#define UNITY_PASS_FORWARDBASE
		#define SHADER_API_VITA
		#include "UnityCG.cginc"
		#include "Shared.cginc"
		#pragma only_renderers psp2 d3d11
			uniform fixed4 main_color;
            uniform sampler2D _ContourTex; uniform fixed4 _ContourTex_ST;
		//#pragma multi_compile_fwdbase
		//#pragma target 3.0
			struct v2f4
		{
			float4 pos : SV_POSITION;
			float4 scrpos : TEXCOORD0;
			float depth : TEXCOORD2; // Define depth float to pass to `frag`
			float2 uv : TEXCOORD3;
			UNITY_FOG_COORDS(8)
		};
		fixed4 _ContourColor;
		fixed _ContourWidth, _Speed, _Amplitude;
		fixed4 frag (v2f4 IN) : COLOR {
 fixed4 main_color = tex2D(_ContourTex, IN.uv);
	   	UNITY_APPLY_FOG(IN.fogCoord,_ContourColor);
		   main_color.a = (_ContourColor.a * main_color.a);
			return (main_color);
		}
		float hash(float2 seed)
		{
		// We need irrationals for pseudo randomness.
		// Most (all?) known transcendental numbers will (generally) work.
		const float2 r = float2(
			23.1406926327792690,  // e^pi (Gelfond's constant)
			2.6651441426902251); // 2^sqrt(2) (Gelfond–Schneider constant)
		return frac( cos( fmod( 123498765., 1e-7 + 256. * dot(seed, r) ) ) );  
		}

				v2f4 vert (appdata_base v)
				{
					v2f4 o;

					fixed4 os = fixed4(v.normal, 0) * (_ContourWidth + _Amplitude * (hash(v.texcoord.xy + floor(_Time.y * _Speed)) - 0.5));
					o.pos = UnityObjectToClipPos(v.vertex + os);
					//o.uv = UnityObjectToViewPos (v.vertex + os);
					o.uv = TRANSFORM_TEX(v.vertex - os, _ContourTex);
					o.scrpos = o.pos;
					o.depth = CalculateDepth(v.vertex);
					UNITY_TRANSFER_FOG(o,o.pos);
					return o;
				}
			ENDCG
		}
	// 		Pass {

	// 		Cull Front
	// 		Lighting Off
	// 		Blend SrcAlpha OneMinusSrcAlpha
	// 		CGPROGRAM
	// 	#pragma vertex vert
	// 	#pragma fragment frag
	// 	#pragma multi_compile_fog 
	// 	//#define UNITY_PASS_FORWARDBASE
	// 	#define SHADER_API_VITA
	// 	#include "UnityCG.cginc"
	// 	#include "Shared.cginc"
	// 	#pragma only_renderers psp2 d3d11
	// 	//#pragma multi_compile_fwdbase
	// 	//#pragma target 3.0
	// 		struct v2f5
	// 	{
	// 		float4 pos : SV_POSITION;
	// 		float4 scrpos : TEXCOORD0;
	// 		float depth : TEXCOORD2; // Define depth float to pass to `frag`
	// 		UNITY_FOG_COORDS(8)
	// 	};
	// 	fixed4 _ContourColor;
	// 	fixed _ContourWidth, _Speed, _Amplitude;
	// 	fixed4 frag (v2f5 IN) : COLOR {
	// 		// The magic
    //   // clip(_ContourColor.a - 0.5f);

    //     // Place `vert` depth calculation into alpha channel
    //    // _ContourColor.a = IN.depth;
	//    	UNITY_APPLY_FOG(IN.fogCoord,_ContourColor);
	// 		return _ContourColor;
	// 	}
	// 		float hash (half2 seed)
	// 	{
	// 		return frac(tan(dot(seed.xy, float2(15.9898, 70.233))) * 43758.5453);
	// 	}

	// 			v2f5 vert (appdata_base v)
	// 			{
	// 				v2f5 o;
	// 				fixed4 os = fixed4(v.normal, 0) * (_ContourWidth + _Amplitude * (hash(v.texcoord.xy + floor(_Time.y * _Speed)) - 0.5));
	// 				o.pos = UnityObjectToClipPos(v.vertex + os);
	// 				o.scrpos = o.pos;
	// 				o.depth = CalculateDepth(v.vertex);
	// 				UNITY_TRANSFER_FOG(o,o.pos);
	// 				return o;
	// 			}
	// 		ENDCG
	// 	}
	}
	Fallback "Unlit/Diffuse"
} 
