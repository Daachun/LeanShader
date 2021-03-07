Shader "Daachun/L07_OldSchoolPlus"
{
    Properties {    // 材质面板参数
        _MainCol("颜色",color)=(1.0,1.0,1.0,1.0)
        _LightCol("光照颜色",Color)=(1.0,1.0,1.0,1.0)
        _SpecularPow("高光次幂",range(1,90))=30
        _EnvPow("环境光强度",range(0,1))=1
        _EnvUpCol("顶部环境光",Color)=(1.0,1.0,1.0,1.0)
        _EnvSideCol("侧面环境光",Color)=(0.5,0.5,0.5,1.0)
        _EnvDownCol("底部环境光",Color)=(0.0,0.0,0.0,1.0)
        _Occlusion("AO贴图",2D) = "white"{}
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
            #include "AutoLight.cginc"  // 使用unity投影必须包含这个库文件
            #include "Lighting.cginc"   // 使用unity投影必须包含这个库文件
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            // 输入参数
            // 修饰字
                // unitform 共享于vert，frag
                // attribute 仅用于vert
                // varying 用于vert，frag传数据——顶点色插值？
            uniform float3 _MainCol;
            uniform float3 _LightCol;
            uniform float _SpecularPow;
            uniform float _EnvPow;
            uniform float3 _EnvUpCol;
            uniform float3 _EnvSideCol;
            uniform float3 _EnvDownCol;
            uniform sampler2D _Occlusion;

            struct VertexInput {
                float4 vertex : POSITION;   // 模型顶点信息
                float3 normal : NORMAL;     // 模型法线信息
                float2 uv : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;         // 裁剪空间顶点位置
                float4 posWS : TEXCOORD0;        // 世界空间顶点位置
                float3 nDirWS : TEXCOORD1;      // 世界空间法线方向
                float2 uv : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.posWS = mul(unity_ObjectToWorld, v.vertex );
                o.nDirWS = UnityObjectToWorldNormal( v.normal );
                TRANSFER_VERTEX_TO_FRAGMENT(o);
                o.uv = v.uv;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                float3 lDir = _WorldSpaceLightPos0.xyz;
                float3 lambert = max(0,dot(i.nDirWS, lDir)) * _MainCol; //兰伯特固有色
                float3 vDirWS = normalize(_WorldSpaceCameraPos.xyz - i.posWS);
                float3 viewReflect = reflect(vDirWS, i.nDirWS);
                float3 phongSpecular = pow(max(0,dot(viewReflect,-lDir)),_SpecularPow); //Phong高光
                float shadow = LIGHT_ATTENUATION(i);    // 投影
                float3 ambient = (phongSpecular + lambert) * _LightCol * shadow;    // 高光投影固有色

                float upMask = max(0,i.nDirWS.y);
                float downMask = max(0,-i.nDirWS.y);
                float sideMask = 1-upMask-downMask;
                float3 occ = tex2D(_Occlusion, i.uv);
                float3 env = (_EnvUpCol * upMask + _EnvSideCol * sideMask + _EnvDownCol * downMask) * occ * _MainCol * _EnvPow;

                return float4(ambient + env,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
