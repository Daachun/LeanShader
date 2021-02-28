Shader "Daachun/L03/FlatCol" {
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
                float4 vertex : POSITION;   // 顶点shader输入结构
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   //  顶点Shader输出结构
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                return fixed4(1.0,0.2,0.1,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}