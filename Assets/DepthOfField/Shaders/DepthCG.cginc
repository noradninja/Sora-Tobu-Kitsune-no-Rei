#ifndef DEPTH_INCLUDED
#define DEPTH_INCLUDED

#include "UnityCG.cginc"

uniform half _DepthFar;
uniform half _DepthAperture;

inline half CalculateDepth(half4 vertex) {
  half z = mul(UNITY_MATRIX_MV, vertex).z;
  z = clamp(-z / _DepthFar, 0, 2);
  z = (1 - z) * _DepthAperture;
  return abs(z);
}
#endif