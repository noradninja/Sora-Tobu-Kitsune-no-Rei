Shader "NPR Paint Filter/Water Color" {
	Properties {
		_MainTex      ("Main", 2D) = "white" {}
		_WobbleTex	  ("Wobble", 2D) = "white" {}
		_WobbleScale	("Wobble Scale", Float) = 1
		_WobblePower	("Wobble Power", FLoat) = 1
		_EdgeSize     ("Edge Size", Float) = 1
		_EdgePower    ("Edge Power", Float) = 1

	}
	SubShader {
		Cull Off ZWrite Off ZTest Always
		CGINCLUDE
			#include "UnityCG.cginc"
			#pragma fragmentoption ARB_precision_hint_fastest

			struct v2f
			{
				half4 pos : SV_POSITION;
				half2 uv0 : TEXCOORD0;
				half2 uv1 : TEXCOORD1;
			};

			sampler2D _MainTex;
			half4 _MainTex_TexelSize;
			half4 ColorBlend (half4 c, half d)  { return c - (c - c * c) * (d - 1); }
		ENDCG
		Pass {   // pass 0, wobble pass
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			sampler2D _WobbleTex;
			float _WobbleScale, _WobblePower;

			v2f vert (appdata_base v)
			{
				half aspect = _ScreenParams.x / _ScreenParams.y;
				v2f o;
				o.pos = UnityObjectToClipPos(v.vertex);
				o.uv0 = v.texcoord;
				o.uv1 = v.texcoord * half2(aspect, 1) * _WobbleScale;
				return o;
			}
			half4 frag (v2f i) : COLOR
			{
				half2 wobb = tex2D(_WobbleTex, i.uv1).wy * 2 - 1;
				return tex2D(_MainTex, i.uv0 + wobb * _WobblePower);
			}
			ENDCG
		}
		Pass {   // pass 1, edge darkening pass
			CGPROGRAM
			#pragma vertex vert_img
			#pragma fragment frag
			#pragma fragmentoption ARB_precision_hint_fastest
			float _EdgeSize, _EdgePower;

			half4 frag (v2f_img i) : COLOR
			{
				half2 offset = _MainTex_TexelSize.xy * _EdgeSize;
				half4 l = tex2D(_MainTex, i.uv + half2(-offset.x, 0));
				half4 r = tex2D(_MainTex, i.uv + half2(+offset.x, 0));
				half4 b = tex2D(_MainTex, i.uv + half2(           0, -offset.y));
				half4 t = tex2D(_MainTex, i.uv + half2(           0, +offset.y));
				half4 c = tex2D(_MainTex, i.uv);

				half4 grad = abs(r - l) + abs(b - t);
				half intens = saturate(0.666 * (grad.x + grad.y + grad.z));
				half d = _EdgePower * intens + 1;
				return ColorBlend(c, d);
			}
			ENDCG
		}
	}
	Fallback Off
}
