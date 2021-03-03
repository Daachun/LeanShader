Shader "Daachun/L07/Shadow" {
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

            #include "AutoLight.cginc"  // 使用unity投影必须包含这个库文件
            #include "Lighting.cginc"   // 使用unity投影必须包含这个库文件

            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;   // 顶点shader输入结构
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   //  顶点Shader输出结构
                LIGHTING_COORDS(0,1)       // 投影用坐标信息Unity已经封装，直接拿到就行
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                float shadow = LIGHT_ATTENUATION(i);
                return fixed4(shadow,shadow,shadow,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}