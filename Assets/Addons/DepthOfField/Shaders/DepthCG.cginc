#ifndef DEPTH_INCLUDED
#define DEPTH_INCLUDED

#include "UnityCG.cginc"

uniform half _DepthFar;
uniform half _DepthAperture;

inline float CalculateDepth(float4 vertex) {
  float z = mul(UnityObjectToViewPos, vertex).z;
  z = clamp(-z / _DepthFar, 0, 2);
  z = (1 - z) * _DepthAperture;
  return abs(z);
}
#endif 