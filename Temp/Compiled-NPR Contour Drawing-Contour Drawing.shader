// Compiled shader for custom platforms

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "NPR Contour Drawing/Contour Drawing" {
Properties {
 _ContourColor ("Contour Color", Color) = (0.000000,0.000000,0.000000,0.000000)
 _ContourWidth ("Contour Width", Float) = 0.010000
 _Amplitude ("Amplitude", Float) = 0.010000
 _Speed ("Speed", Float) = 6.000000
 _MainTexture ("Main Texture", 2D) = "white" { }
 _Color ("Color Tint", Color) = (1.000000,1.000000,1.000000,1.000000)
}
SubShader { 
 Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }


 // Stats for Vertex shader:
 //         gles: 3 avg math (2..4), 1 texture
 Pass {
  Name "FORWARD"
  Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Vertex shader for "gles":
// Stats: 2 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp vec4 _MainTexture_ST;
uniform lowp vec4 _Color;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp float xlv_TEXCOORD2;
varying lowp vec4 xlv_COLOR;
void main ()
{
  lowp vec2 tmpvar_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_1 = ((_glesMultiTexCoord0.xy * _MainTexture_ST.xy) + _MainTexture_ST.zw);
  highp float tmpvar_4;
  tmpvar_4 = abs(((1.0 - 
    clamp ((-((
      (unity_MatrixV * unity_ObjectToWorld)
     * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_4;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD2 = tmpvar_2;
  xlv_COLOR = _Color;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTexture;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp float xlv_TEXCOORD2;
varying lowp vec4 xlv_COLOR;
void main ()
{
  lowp vec4 main_color_1;
  main_color_1.xyz = (xlv_COLOR.xyz * texture2D (_MainTexture, xlv_TEXCOORD0).xyz);
  main_color_1.w = (xlv_TEXCOORD2 * xlv_COLOR.w);
  gl_FragData[0] = main_color_1;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: FOG_LINEAR 
-- Vertex shader for "gles":
// Stats: 4 math, 1 textures
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec4 _glesMultiTexCoord0;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp vec4 _MainTexture_ST;
uniform lowp vec4 _Color;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp float xlv_TEXCOORD2;
varying lowp vec4 xlv_COLOR;
varying highp float xlv_TEXCOORD8;
void main ()
{
  lowp vec2 tmpvar_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  highp vec4 tmpvar_4;
  tmpvar_4.w = 1.0;
  tmpvar_4.xyz = _glesVertex.xyz;
  tmpvar_3 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_4));
  tmpvar_1 = ((_glesMultiTexCoord0.xy * _MainTexture_ST.xy) + _MainTexture_ST.zw);
  highp float tmpvar_5;
  tmpvar_5 = abs(((1.0 - 
    clamp ((-((
      (unity_MatrixV * unity_ObjectToWorld)
     * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_5;
  gl_Position = tmpvar_3;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD2 = tmpvar_2;
  xlv_COLOR = _Color;
  xlv_TEXCOORD8 = ((tmpvar_3.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTexture;
varying lowp vec2 xlv_TEXCOORD0;
varying lowp float xlv_TEXCOORD2;
varying lowp vec4 xlv_COLOR;
varying highp float xlv_TEXCOORD8;
void main ()
{
  lowp vec4 main_color_1;
  main_color_1.xyz = (xlv_COLOR.xyz * texture2D (_MainTexture, xlv_TEXCOORD0).xyz);
  main_color_1.w = (xlv_TEXCOORD2 * xlv_COLOR.w);
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD8, 0.0, 1.0);
  main_color_1.xyz = mix (unity_FogColor.xyz, main_color_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = main_color_1;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

 }


 // Stats for Vertex shader:
 //         gles: 2 math
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
  Cull Front
  Blend SrcAlpha OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Vertex shader for "gles":
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (1.234568e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = (_glesVertex + os_1).xyz;
  highp float tmpvar_12;
  tmpvar_12 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_12;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_11));
  xlv_TEXCOORD2 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _ContourColor;
void main ()
{
  gl_FragData[0] = _ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: FOG_LINEAR 
-- Vertex shader for "gles":
// Stats: 2 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
varying highp float xlv_TEXCOORD8;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (1.234568e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = (_glesVertex + os_1).xyz;
  tmpvar_11 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_12));
  highp float tmpvar_13;
  tmpvar_13 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_13;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD2 = tmpvar_2;
  xlv_TEXCOORD8 = ((tmpvar_11.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform lowp vec4 _ContourColor;
lowp vec4 xlat_mutable_ContourColor;
varying highp float xlv_TEXCOORD8;
void main ()
{
  xlat_mutable_ContourColor.w = _ContourColor.w;
  highp float tmpvar_1;
  tmpvar_1 = clamp (xlv_TEXCOORD8, 0.0, 1.0);
  xlat_mutable_ContourColor.xyz = mix (unity_FogColor.xyz, _ContourColor.xyz, vec3(tmpvar_1));
  gl_FragData[0] = xlat_mutable_ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

 }


 // Stats for Vertex shader:
 //         gles: 2 math
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
  Cull Front
  Blend SrcAlpha OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Vertex shader for "gles":
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (9.876543e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = (_glesVertex + os_1).xyz;
  highp float tmpvar_12;
  tmpvar_12 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_12;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_11));
  xlv_TEXCOORD2 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _ContourColor;
void main ()
{
  gl_FragData[0] = _ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: FOG_LINEAR 
-- Vertex shader for "gles":
// Stats: 2 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
varying highp float xlv_TEXCOORD8;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (9.876543e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = (_glesVertex + os_1).xyz;
  tmpvar_11 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_12));
  highp float tmpvar_13;
  tmpvar_13 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_13;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD2 = tmpvar_2;
  xlv_TEXCOORD8 = ((tmpvar_11.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform lowp vec4 _ContourColor;
lowp vec4 xlat_mutable_ContourColor;
varying highp float xlv_TEXCOORD8;
void main ()
{
  xlat_mutable_ContourColor.w = _ContourColor.w;
  highp float tmpvar_1;
  tmpvar_1 = clamp (xlv_TEXCOORD8, 0.0, 1.0);
  xlat_mutable_ContourColor.xyz = mix (unity_FogColor.xyz, _ContourColor.xyz, vec3(tmpvar_1));
  gl_FragData[0] = xlat_mutable_ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

 }


 // Stats for Vertex shader:
 //         gles: 2 math
 Pass {
  Tags { "QUEUE"="Geometry" "RenderType"="Opaque" }
  Cull Front
  Blend SrcAlpha OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
No keywords set in this variant.
-- Vertex shader for "gles":
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (9.182737e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  tmpvar_11.w = 1.0;
  tmpvar_11.xyz = (_glesVertex + os_1).xyz;
  highp float tmpvar_12;
  tmpvar_12 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_12;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_11));
  xlv_TEXCOORD2 = tmpvar_2;
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 _ContourColor;
void main ()
{
  gl_FragData[0] = _ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

//////////////////////////////////////////////////////
Keywords set in this variant: FOG_LINEAR 
-- Vertex shader for "gles":
// Stats: 2 math
Shader Disassembly:
#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
attribute vec3 _glesNormal;
attribute vec4 _glesMultiTexCoord0;
uniform highp vec4 _Time;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
highp mat4 unity_MatrixMV;
uniform mediump float _DepthFar;
uniform mediump float _DepthAperture;
uniform lowp float _ContourWidth;
uniform lowp float _Speed;
uniform lowp float _Amplitude;
varying lowp float xlv_TEXCOORD2;
varying highp float xlv_TEXCOORD8;
void main ()
{
  unity_MatrixMV = (unity_MatrixV * unity_ObjectToWorld);
  lowp vec4 os_1;
  lowp float tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 0.0;
  tmpvar_3.xyz = _glesNormal;
  highp float y_4;
  y_4 = (1e-07 + (256.0 * dot (
    (_glesMultiTexCoord0.xy + floor((_Time.y * _Speed)))
  , vec2(23.14069, 2.665144))));
  highp float tmpvar_5;
  tmpvar_5 = (9.182737e+08 / y_4);
  highp float tmpvar_6;
  tmpvar_6 = (fract(abs(tmpvar_5)) * y_4);
  highp float tmpvar_7;
  if ((tmpvar_5 >= 0.0)) {
    tmpvar_7 = tmpvar_6;
  } else {
    tmpvar_7 = -(tmpvar_6);
  };
  highp float tmpvar_8;
  tmpvar_8 = cos(tmpvar_7);
  lowp float tmpvar_9;
  tmpvar_9 = fract(tmpvar_8);
  highp vec4 tmpvar_10;
  tmpvar_10 = (tmpvar_3 * (_ContourWidth + (_Amplitude * 
    (tmpvar_9 - 0.5)
  )));
  os_1 = tmpvar_10;
  highp vec4 tmpvar_11;
  highp vec4 tmpvar_12;
  tmpvar_12.w = 1.0;
  tmpvar_12.xyz = (_glesVertex + os_1).xyz;
  tmpvar_11 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_12));
  highp float tmpvar_13;
  tmpvar_13 = abs(((1.0 - 
    clamp ((-((unity_MatrixMV * _glesVertex).z) / _DepthFar), 0.0, 2.0)
  ) * _DepthAperture));
  tmpvar_2 = tmpvar_13;
  gl_Position = tmpvar_11;
  xlv_TEXCOORD2 = tmpvar_2;
  xlv_TEXCOORD8 = ((tmpvar_11.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform lowp vec4 _ContourColor;
lowp vec4 xlat_mutable_ContourColor;
varying highp float xlv_TEXCOORD8;
void main ()
{
  xlat_mutable_ContourColor.w = _ContourColor.w;
  highp float tmpvar_1;
  tmpvar_1 = clamp (xlv_TEXCOORD8, 0.0, 1.0);
  xlat_mutable_ContourColor.xyz = mix (unity_FogColor.xyz, _ContourColor.xyz, vec3(tmpvar_1));
  gl_FragData[0] = xlat_mutable_ContourColor;
}


#endif


-- Fragment shader for "gles":
Shader Disassembly:
// All GLSL source is contained within the vertex program

 }
}
Fallback "Unlit/Diffuse"
}