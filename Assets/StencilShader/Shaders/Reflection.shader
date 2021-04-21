Shader "Unlit/Reflection"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Color ("Color", Color) = (1,1,1,1)
		[Header(Hardware settings)]
		[Enum(UnityEngine.Rendering.CullMode)] HARDWARE_CullMode ("Cull faces", Float) = 2
		[Enum(UnityEngine.Rendering.BlendMode)] HARDWARE_BlendSrc ("Blend Source", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] HARDWARE_BlendDst ("Blend Destination", Float) = 0
		
		[Enum(On, 1, Off, 0)] HARDWARE_ZWrite ("Depth write", Float) = 1
		[Enum(UnityEngine.Rendering.CompareFunction)] HARDWARE_ZTest("Depth test", Float) = 4
		
		[Header(Hardware stencil)]
		HARDWARE_StencilRef ("Stencil REF", Range(0, 255)) = 0
		HARDWARE_ReadMask ("Stencil Read Mask", Range(0, 255)) = 255
		HARDWARE_WriteMask ("Stencil Write Mask", Range(0, 255)) = 255
		
		[Enum(UnityEngine.Rendering.CompareFunction)] HARDWARE_StencilComp ("Stencil comparison", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] HARDWARE_StencilPass ("Stencil Pass", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] HARDWARE_StencilFail ("Stencil Fail", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] HARDWARE_StencilZFail ("Stencil Z Fail", Float) = 0
	}
	SubShader
	{
		Tags { 
			"Queue"="Transparent"
            "RenderType" = "Transparent"
		}
		LOD 100

		Pass
		{
			Cull [HARDWARE_CullMode]
			ZWrite [HARDWARE_ZWrite]
			ZTest [HARDWARE_ZTest]
			Blend [HARDWARE_BlendSrc] [HARDWARE_BlendDst]
			
			Stencil
			{
				Ref [HARDWARE_StencilRef]
				Comp [HARDWARE_StencilComp]
				
				Pass [HARDWARE_StencilPass]
				Fail [HARDWARE_StencilFail]
				ZFail [HARDWARE_StencilZFail]
			}
			CGPROGRAM
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
				half4 color : COLOR;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			half4 _Color;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.color = _Color;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 color = color;
        		fixed4 main_color = tex2D(_MainTex, i.uv);
				color.rgb = i.color.rgb * main_color.rgb;
        		color.a = i.color.a * main_color.a;
				UNITY_APPLY_FOG(i.fogCoord, color);
				return color;
			}
			ENDCG
		}
	}
}
