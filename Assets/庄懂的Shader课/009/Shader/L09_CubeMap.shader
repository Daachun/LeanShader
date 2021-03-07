Shader "Daachun/L09/CubeMap"
{
    Properties {    // 材质面板参数

        _NormalMap  ("法线贴图", 2D) = "bump" {}
        _CubeMap    ("环境球", Cube) = "_Skybox" {}
        _CubeMapMip ("环境球Mip", Range(0, 7)) = 0
        _FresnelPow ("菲涅尔次幂", Range(0, 10)) = 1
        _EnvSpecInt ("环境镜面反射强度", Range(0, 5)) = 0.2
        _Occlusion  ("AO图",2D) = "white"{}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull OFF

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            // 输入参数
            // 修饰字
                // unitform 共享于vert，frag
                // attribute 仅用于vert
                // varying 用于vert，frag传数据——顶点色插值？
            uniform sampler2D _NormalMap;
            uniform samplerCUBE _CubeMap;
            uniform float _CubeMapMip;
            uniform float _FresnelPow;
            uniform float _EnvSpecInt;
            uniform sampler2D _Occlusion;

            struct VertexInput {
                float4 vertex : POSITION;   // 模型顶点信息
                float2 uv0 : TEXCOORD0;
                float4 normal : NORMAL;     // 模型法线信息
                float4 tangent : TANGENT;   // 模型切线信息
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   // 裁剪空间顶点位置
                float2 uv0 : TEXCOORD0;
                float3 posWS : TEXCOORD1;
                float3 nDirWS : TEXCOORD2;      // 世界空间法线方向
                float3 tDirWS : TEXCOORD3;      // 世界空间切线信息
                float3 bDirWS : TEXCOORD4;      // 世界空间副切线
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv0 = v.uv0;
                o.posWS = mul(unity_ObjectToWorld, v.vertex);
                o.nDirWS = UnityObjectToWorldNormal( v.normal );    // 世界空间法线
                o.tDirWS = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz,0.0)).xyz);   // 世界空间切线
                o.bDirWS = normalize(cross(o.nDirWS, o.tDirWS) * v.tangent.w);   // 世界空间副切线 叉乘求垂直
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                // 向量准备
                float3 nDirTS = UnpackNormal(tex2D(_NormalMap,i.uv0)).rgb;
                float3x3 TBN = float3x3(i.tDirWS,i.bDirWS,i.nDirWS);
                float3 nDirWS = normalize(mul(nDirTS, TBN));    // 将切线空间通过TBN矩阵转化为世界空间
                float3 vDirWS = normalize(_WorldSpaceCameraPos.xyz - i.posWS.xyz);
                float3 vrDirWS = reflect(-vDirWS, nDirWS);  // 观察方向的反射反向

                // 中间量准备
                float nDotv = dot(nDirWS,vDirWS);
                // 光照模型
                float occlusion = tex2D(_Occlusion, i.uv0);
                float3 cubemap = texCUBElod(_CubeMap,float4(vrDirWS, _CubeMapMip));
                float fresnel = pow(1.0 - nDotv, _FresnelPow);
                float3 envSpecLighting = cubemap * fresnel * occlusion * _EnvSpecInt;
                // 返回值
                return float4(envSpecLighting, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
