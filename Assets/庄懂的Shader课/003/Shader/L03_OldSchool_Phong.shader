Shader "Daachun/L05/OldSchool_Phong"
{
    Properties {    // 材质面板参数
        _MainCol        ("颜色",color)                  = (1.0,1.0,1.0,1.0)
        _SpecularPow    ("高光次幂",range(1,90))        = 30

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
            uniform float3 _MainCol;
            uniform float _SpecularPow;
            struct VertexInput {
                float4 vertex : POSITION;   // 模型顶点信息
                float3 normal : NORMAL;     // 模型法线信息
            };
            struct VertexOutput {
                float4 posCS : SV_POSITION;   // 裁剪空间顶点位置
                float4 posWS : TEXCOORD0;        // 世界空间顶点位置
                float3 nDirWS : TEXCOORD1;      // 世界空间法线方向
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.posCS = UnityObjectToClipPos( v.vertex );
                o.posWS = mul(unity_ObjectToWorld, v.vertex );
                o.nDirWS = UnityObjectToWorldNormal( v.normal );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                float3 nDir = i.nDirWS;
                float3 lDir = _WorldSpaceLightPos0.xyz;
                float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS);
                float3 hDir = normalize(vDir + lDir);
                // 准备点积结果
                float ndotl = dot(nDir,lDir);
                float ndoth = dot(nDir,hDir);
                // 光照模型
                float lambert = max(0.0,ndotl);
                float Phone = pow(max(0, dot(reflect(-lDir,nDir),vDir)),_SpecularPow);
                float3 finalRGB = _MainCol * lambert + Phone;  // 用三维的乘一维的
                return float4(finalRGB, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
