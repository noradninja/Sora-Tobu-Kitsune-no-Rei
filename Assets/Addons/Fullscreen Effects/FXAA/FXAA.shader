Shader "FXAA/FXAA"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
		_ContrastThreshold("Contrast Threshold", float) = 0.0312
		_RelativeThreshold("Relative Threshold", float) = 0.063
		_SubpixelBlending("Subpixel Blending", float) = 1
    }

    SubShader
    {
        Cull Off ZWrite Off ZTest Always

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
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }


			uniform sampler2D _MainTex;
			float4 _MainTex_TexelSize;

			fixed _ContrastThreshold;
			fixed _RelativeThreshold;
			fixed _SubpixelBlending;

			struct LuminanceData
			{
				fixed m, n, e, s, w;
				fixed ne, nw, se, sw;
				fixed highest, lowest, contrast;
			};

			struct EdgeData 
			{
				bool isHorizontal;
				fixed pixelStep;
				fixed oppositeLuminance, gradient;
			};


			fixed SampleLuminance(float2 uv)
			{
				return LinearRgbToLuminance(saturate(tex2D(_MainTex, uv).rgb));
			}


			LuminanceData SampleLuminanceNeighborhood(float2 uv)
			{
				LuminanceData l;
				l.m = SampleLuminance(uv);
				l.n = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(0, 1));
				l.s = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(0, -1));
				l.e = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(1, 0));
				l.w = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(-1, 0));
				l.ne = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(1, 1));
				l.nw = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(-1, 1));
				l.se = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(1, -1));
				l.sw = SampleLuminance(uv + _MainTex_TexelSize.xy * half2(-1, -1));
				l.highest = max(max(max(max(l.n, l.e), l.s), l.w), l.m);
				l.lowest = min(min(min(min(l.n, l.e), l.s), l.w), l.m);
				l.contrast = l.highest - l.lowest;
				return l;
			}


			bool ShouldSkipPixel(LuminanceData l)
			{
				fixed threshold = max(_ContrastThreshold, _RelativeThreshold * l.highest);
				return l.contrast < threshold;
			}


			fixed DeterminePixelBlendFactor(LuminanceData l)
			{
				fixed filter = 2 * (l.n + l.e + l.s + l.w);
				filter += l.ne + l.nw + l.se + l.sw;
				filter *= 1.0 / 12;
				filter = abs(filter - l.m);
				filter = saturate(filter / max(0.0001, l.contrast));
				fixed blendFactor = smoothstep(0, 1, filter);
				return blendFactor * blendFactor * _SubpixelBlending;
			}
			
			
			EdgeData DetermineEdge(LuminanceData l)
			{
				EdgeData e;
				fixed horizontal =
					abs(l.n + l.s - 2 * l.m) * 2 +
					abs(l.ne + l.se - 2 * l.e) +
					abs(l.nw + l.sw - 2 * l.w);
				fixed vertical =
					abs(l.e + l.w - 2 * l.m) * 2 +
					abs(l.ne + l.nw - 2 * l.n) +
					abs(l.se + l.sw - 2 * l.s);
				e.isHorizontal = horizontal >= vertical;
				e.pixelStep = e.isHorizontal ? _MainTex_TexelSize.y : _MainTex_TexelSize.x;

				fixed pLuminance = e.isHorizontal ? l.n : l.e;
				fixed nLuminance = e.isHorizontal ? l.s : l.w;
				fixed pGradient = abs(pLuminance - l.m);
				fixed nGradient = abs(nLuminance - l.m);
				if (pGradient < nGradient)
				{
					e.pixelStep = -e.pixelStep;
					e.oppositeLuminance = nLuminance;
					e.gradient = nGradient;
				}
				else
				{
					e.oppositeLuminance = pLuminance;
					e.gradient = pGradient;
				}
				return e;
			}


			#define EDGE_STEP_COUNT 10
			#define EDGE_STEPS 1, 1.5, 2, 2, 2, 2, 2, 2, 2, 4
			#define EDGE_GUESS 8
			static const fixed edgeSteps[EDGE_STEP_COUNT] = { EDGE_STEPS };

			fixed DetermineEdgeBlendFactor(LuminanceData l, EdgeData e, float2 uv) 
			{
				float2 uvEdge = uv;
				float2 edgeStep;
				if (e.isHorizontal) {
					uvEdge.y += e.pixelStep * 0.5;
					edgeStep = float2(_MainTex_TexelSize.x, 0);
				}
				else {
					uvEdge.x += e.pixelStep * 0.5;
					edgeStep = float2(0, _MainTex_TexelSize.y);
				}

				fixed edgeLuminance = (l.m + e.oppositeLuminance) * 0.5;
				fixed gradientThreshold = e.gradient * 0.25;

				float2 puv = uvEdge + edgeStep * edgeSteps[0];
				fixed pLuminanceDelta = SampleLuminance(puv) - edgeLuminance;
				bool pAtEnd = abs(pLuminanceDelta) >= gradientThreshold;
				UNITY_UNROLL
				for (int i = 1; i < EDGE_STEP_COUNT && !pAtEnd; i++)
				{
					puv += edgeStep * edgeSteps[i];
					pLuminanceDelta = SampleLuminance(puv) - edgeLuminance;
					pAtEnd = abs(pLuminanceDelta) >= gradientThreshold;
				}
				if (!pAtEnd) {
					puv += edgeStep * EDGE_GUESS;
				}

				float2 nuv = uvEdge - edgeStep * edgeSteps[0];
				fixed nLuminanceDelta = SampleLuminance(nuv) - edgeLuminance;
				bool nAtEnd = abs(nLuminanceDelta) >= gradientThreshold;
				UNITY_UNROLL
				for (int i = 1; i < EDGE_STEP_COUNT && !nAtEnd; i++) {
					nuv -= edgeStep * edgeSteps[i];
					nLuminanceDelta = SampleLuminance(nuv) - edgeLuminance;
					nAtEnd = abs(nLuminanceDelta) >= gradientThreshold;
				}
				if (!nAtEnd) {
					nuv -= edgeStep * EDGE_GUESS;
				}

				fixed pDistance, nDistance;
				if (e.isHorizontal) {
					pDistance = puv.x - uv.x;
					nDistance = uv.x - nuv.x;
				}
				else {
					pDistance = puv.y - uv.y;
					nDistance = uv.y - nuv.y;
				}

				fixed shortestDistance;
				bool deltaSign;
				if (pDistance <= nDistance) {
					shortestDistance = pDistance;
					deltaSign = pLuminanceDelta >= 0;
				}
				else {
					shortestDistance = nDistance;
					deltaSign = nLuminanceDelta >= 0;
				}

				if (deltaSign == (l.m - edgeLuminance >= 0)) {
					return 0;
				}

				return 0.5 - shortestDistance / (pDistance + nDistance);
			}


			float4 ApplyFXAA(float2 uv)
			{
				LuminanceData l = SampleLuminanceNeighborhood(uv);
				if (ShouldSkipPixel(l))
					return tex2D(_MainTex, uv);

				fixed pixelBlend = DeterminePixelBlendFactor(l);
				EdgeData e = DetermineEdge(l);
				fixed edgeBlend = DetermineEdgeBlendFactor(l, e, uv);
				fixed finalBlend = max(pixelBlend, edgeBlend);

				if (e.isHorizontal)
				{
					uv.y += e.pixelStep * finalBlend;
				}
				else
				{
					uv.x += e.pixelStep * finalBlend;
				}
				return tex2Dlod(_MainTex, float4(uv, 0, 0));
			}


            fixed4 frag (v2f i) : SV_Target
            {
                return ApplyFXAA(i.uv);
            }
            ENDCG
        }
    }
}
