Shader "Hidden/FXAA3_11_ConsoleEffect" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_EdgeThresholdMin ("Edge threshold minimum",float) = 0.125
		_EdgeThreshold("Edge Threshold", float) = 0.25
		_EdgeSharpness("Edge sharpness",float) = 4.0
	}
	SubShader {
		Pass {
			ZTest Always Cull Off ZWrite Off
			Fog { Mode off }
		
		CGPROGRAM
		#pragma vertex vert_img
		#pragma fragment frag
		#pragma glsl
		#pragma fragmentoption ARB_precision_hint_fastest
		#pragma target 3.0
		#include "UnityCG.cginc"

		uniform sampler2D _MainTex;
		uniform float4 _MainTex_TexelSize;
		uniform fixed _EdgeThresholdMin;
		uniform fixed _EdgeThreshold;
		uniform fixed _EdgeSharpness;

		//
		// FXAA3 PC Console version by Timothy Lottes for nVidia
		/*
		------------------------------------------------------------------------------                       
		COPYRIGHT (C) 2010, 2011 NVIDIA CORPORATION. ALL RIGHTS RESERVED.
		------------------------------------------------------------------------------                       
		TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, THIS SOFTWARE IS PROVIDED 
		*AS IS* AND NVIDIA AND ITS SUPPLIERS DISCLAIM ALL WARRANTIES, EITHER EXPRESS 
		OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF 
		MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL NVIDIA 
		OR ITS SUPPLIERS BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT, OR 
		CONSEQUENTIAL DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, DAMAGES FOR 
		LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, 
		OR ANY OTHER PECUNIARY LOSS) ARISING OUT OF THE USE OF OR INABILITY TO USE 
		THIS SOFTWARE, EVEN IF NVIDIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH 
		DAMAGES.
		*/

		#define TEX2D(sampler,uvs)	tex2Dlod( sampler , float4( uvs , 0.0f , 0.0f) )

		inline fixed TexLuminance( float2 uv )
		{
			fixed3 pix = TEX2D( _MainTex, uv ).rgb;
			return (fixed)Luminance(pix);
		}

		fixed3 FXAA3_11_Console( float2 pos , float4 extents , float4 dimensionFrame )
		{
			// get pixels around the point
			fixed lumaNW = TexLuminance( extents.xy );
			fixed lumaSW = TexLuminance( extents.xw );
			fixed lumaNE = TexLuminance( extents.zy );
			fixed lumaSE = TexLuminance( extents.zw );
			
			// get the target pixel
			fixed3 centre = TEX2D( _MainTex, pos ).rgb;
			fixed lumaCentre = (fixed)Luminance( centre );
			
			// now calculate limits
			fixed lumaMaxNWSW = max( lumaNW , lumaSW );
			lumaNE += 1.0h / 384.0h;
			fixed lumaMinNWSW = min( lumaNW , lumaSW );
			fixed lumaMaxNESE = max( lumaNE , lumaSE );
			fixed lumaMinNESE = min( lumaNE , lumaSE );
			
			fixed lumaMax = max( lumaMaxNWSW , lumaMaxNESE );
			fixed lumaMin = min( lumaMinNWSW , lumaMinNESE );
			
			fixed lumaMaxScaled = lumaMax * _EdgeThreshold;
			
			// relative to the centre pixel
			fixed lumaMinCentre = min( lumaMin , lumaCentre );
			fixed lumaMaxScaledClamped = max( _EdgeThresholdMin , lumaMaxScaled );
			fixed lumaMaxCentre = max( lumaMax , lumaCentre );
			fixed dirSWMinusNE = lumaSW - lumaNE;
			fixed lumaMaxCMinusMinC = lumaMaxCentre - lumaMinCentre;
			fixed dirSEMinusNW = lumaSE - lumaNW;
			
			// fall through if not an edge
			if( lumaMaxCMinusMinC < lumaMaxScaledClamped )
			{
				return centre;
			}
			
			// get AA direction
			fixed2 dir;
			dir.x = dirSWMinusNE + dirSEMinusNW;
			dir.y = dirSWMinusNE - dirSEMinusNW;
			dir = normalize( dir );
			
			// get the mix colours
			fixed3 col1 = TEX2D( _MainTex , pos.xy - dir * dimensionFrame.zw ).rgb;
			fixed3 col2 = TEX2D( _MainTex , pos.xy + dir * dimensionFrame.zw ).rgb;
			
			// and the second direction
			fixed dirAbsMinTimesC = min( abs( dir.x ) , abs( dir.y ) ) * _EdgeSharpness;
			dir = clamp( dir.xy / dirAbsMinTimesC , -2.0 , 2.0 );
			
			// get the mix colours
			fixed3 col3 = TEX2D( _MainTex , pos.xy - dir * dimensionFrame.zw ).rgb;
			fixed3 col4 = TEX2D( _MainTex , pos.xy + dir * dimensionFrame.zw ).rgb;
			
			// and mix!
			fixed3 colA = col1 + col2;
			fixed3 colB = ( ( col3 + col4 ) * 0.25 ) + (colA * 0.25 );
			
			if( ((fixed)Luminance( colA ) < lumaMin ) || ((fixed)Luminance( colB ) < lumaMax ) )
			{
				return colA * 0.5h;
			}else{
				return colB;
			}
		}



		fixed4 frag (v2f_img i) : COLOR
		{
			// get the constants for this pixel
			
			// calculate extents
			float4 extents;
			float2 offset = ( _MainTex_TexelSize.xy ) * 0.5f;
			extents.xy = i.uv - offset;
			extents.zw = i.uv + offset;

			// and the dimension frame
			float4 dimensionFrame;
			dimensionFrame.xy = _MainTex_TexelSize.xy * 2.0f;
			dimensionFrame.zw = _MainTex_TexelSize.xy * 0.5f;
		
			fixed3 color = FXAA3_11_Console( i.uv , extents , dimensionFrame);
			
			return fixed4(color,1.0f);
		}
		
		ENDCG
		}
	} 
	FallBack "Diffuse"
}

