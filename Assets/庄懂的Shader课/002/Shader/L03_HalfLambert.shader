Shader "Daachun/L03/HalfLambert"
{
    Properties {    // 材质面板参数
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


            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;   // 模型顶点信息
                float3 normal : NORMAL;     // 模型法线信息
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   // 模型顶点信息转为顶点屏幕位置
                float3 nDirWS : TEXCOORD0;  // 世界空间发现信息
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.nDirWS = UnityObjectToWorldNormal(v.normal);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                float3 nDir = i.nDirWS;
                float3 lDir = normalize(_WorldSpaceLightPos0.xyz);
                float nDotl = dot(nDir,lDir);
                float lambert = max(0.0,nDotl);
                lambert = lambert * 0.5 + 0.5;
                return float4(lambert, lambert, lambert, 1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
