Shader "Unlit/PD_Style_Water"
{
    Properties
    {
        _MainTex ("_MainTexture", 2D) = "white" {}
        _RotationDegrees ("Rotation Degrees", Float) = 0.0
        _Scaling ("Scale Factor", FLoat) = 1.0
        _DistortionTex ("Normal Map", 2D) = "white" {}
		_Strength ("Strength", Range(0,1) ) = 0.1
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100
 
        //ZWrite Off
       // Blend One OneMinusSrcAlpha
 
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_fog 
            #include "DepthCG.cginc"
            #include "UnityCG.cginc"
            #pragma only_renderers psp2 d3d11
 
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float2 uv2 : TEXCOORD2;
            };
 
            struct v2f {
                float2 uv : TEXCOORD0;
                fixed depth : TEXCOORD2; // Define depth float to pass to `frag`
                fixed4 screenPos : TEXCOORD3;
                float2 uv2 : TEXCOORD4;
                float4 vertex : SV_POSITION;
            };
            sampler2D _DistortionTex;
            sampler2D _MainTex;
            float4 _MainTex_ST;
            float4 _DistortionTex_ST;
           
            struct Input {
                float2 uv_MainTex;
                float2 uv2_DistortionTex;
            };
            float _RotationDegrees;
            float _Scaling;
            float _Strength;
           
            v2f vert (appdata v) {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.uv2 = TRANSFORM_TEX(v.uv2, _DistortionTex);
                o.screenPos = ComputeScreenPos(o.vertex);
                o.depth = CalculateDepth(v.vertex);
                //UNITY_TRANSFER_FOG(o,o.vertex);
                v.uv2.xy -=0.5;
                const float divisor = 57.32484076433121; //this constant lets us use degree values in the inspector; eg 0, 90, 180, etc.
                float s = sin ( _RotationDegrees/divisor);
                float c = cos ( _RotationDegrees/divisor);
                float2x2 rotationMatrix = float2x2( c, -s, s, c);
                rotationMatrix *= (0.5 * _Scaling); //correct texture scaling in the rotation matrix so texture is applied across surface by n times where n = _Scaling
                rotationMatrix +=0.5; //fix orientation in rotation matrix so rotation point lies in the center 
                rotationMatrix = rotationMatrix * 2-1; //correct skew for perspective
                float nY = o.uv2.y;
                float nX = o.uv2.x;
                o.uv2.xy = mul ( float2(nX, nY), rotationMatrix ); //apply rotation matrix to texture UV's
                o.uv2.xy += 0.5; //correct texture scaling post rotation
                return o;
            }
           
            fixed4 frag (v2f i) : COLOR {
                float scale = _Strength;
                float2 textureCoordinate = i.screenPos.xy / i.screenPos.w;
                textureCoordinate = TRANSFORM_TEX(textureCoordinate, _MainTex); //project main texture in screen coords
                // sample the texture
                fixed4 color = tex2D(_MainTex, textureCoordinate + (UnpackNormal(tex2D(_DistortionTex, i.uv2))) * scale); //overlay our unpacked normal map on top of main texture for distortion
                color.a = i.depth * color.a; //apply depth calculation
                return color;
            }
       
            ENDCG
        }
    }
}