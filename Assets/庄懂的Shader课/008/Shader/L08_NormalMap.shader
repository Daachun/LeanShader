Shader "Daachun/L08/NormalMap"
{
    Properties {    // 材质面板参数
        _NormalMap("法线贴图",2d) = "bump"{}

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

            struct VertexInput {
                float4 vertex : POSITION;   // 模型顶点信息
                float2 uv0 : TEXCOORD0;
                float4 normal : NORMAL;     // 模型法线信息
                float4 tangent : TANGENT;   // 模型切线信息
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   // 裁剪空间顶点位置
                float2 uv0 : TEXCOORD0;
                float3 nDirWS : TEXCOORD1;      // 世界空间法线方向
                float3 tDirWS : TEXCOORD2;      // 世界空间切线信息
                float3 bDirWS : TEXCOORD3;      // 世界空间副切线
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv0 = v.uv0;
                o.nDirWS = UnityObjectToWorldNormal( v.normal );    // 世界空间法线
                o.tDirWS = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz,0.0)).xyz);   // 世界空间切线
                o.bDirWS = normalize(cross(o.nDirWS, o.tDirWS) * v.tangent.w);   // 世界空间副切线 叉乘求垂直
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                // 获取nDir
                float3 var_NormalMap = UnpackNormal(tex2D(_NormalMap,i.uv0)).rgb;   // 采样法线纹理并解码，切线空间的nDir
                float3x3 TBN = float3x3(i.tDirWS,i.bDirWS,i.nDirWS);
                float3 nDir = normalize(mul(var_NormalMap, TBN));    // 将切线空间通过TBN矩阵转化为世界空间
                // lDir
                float3 lDir = _WorldSpaceLightPos0.xyz;
                // lambert
                float nDotl = dot(nDir, lDir);
                float lambert = max(0.0,nDotl);
                return float4(lambert,lambert,lambert, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
