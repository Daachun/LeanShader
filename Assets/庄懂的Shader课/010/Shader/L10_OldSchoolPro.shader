Shader "Daachun/L10/OldShcoolPro" {
    Properties {    // 材质面板参数
        [Header(Texture)]
            _MainTex        ("RGB:基础颜色 A:环境遮罩", 2D)         = "white"{}
            _NormTex        ("RGB:法线贴图", 2D)                    = "bump"{}
            _SpecTex        ("RGB:高光颜色 A:高光次幂", 2D)         = "gray"{}
            _EmitTex        ("RGB:环境贴图", 2D)                    = "black"{}
            _Cubemap        ("RGB:环境贴图", Cube)                  = "_Skybox"{}
        [Header(Diffuse)]
            _MainCol        ("基本色",Color)                        = (0.5, 0.5, 0.5, 1.0)
            _EnvDiffInt     ("环境漫反射强度", Range(0,1))          = 0.2
            _EnvUpCol       ("环境色天顶颜色", Color)               = (1.0, 1.0, 1.0, 1.0)
            _EnvSideCol     ("环境色水平颜色", Color)               = (0.5, 0.5, 0.5, 1.0)
            _EnvDownCol     ("环境色地表颜色", Color)               = (0.0, 0.0, 0.0, 1.0)
        [Header(Specular)]
            _SpecPow        ("高光次幂", Range(1, 90))              = 30
            _EnvSpecInt     ("环境镜面反射强度", Range(0, 5))       = 0.2
            _FresnelPow     ("菲涅尔次幂", Range(0, 5))             = 1
            _CubemapMip     ("环境球Mip", Range(1, 7))              = 1
        [Header(Emission)]
            _EmitInt        ("自发光强度", Range(1, 10))            = 1

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
            // 追加投影相关文件
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0

            // 输入参数
            // Texture
            uniform sampler2D _MainTex;
            uniform sampler2D _NormTex;
            uniform sampler2D _SpecTex;
            uniform sampler2D _EmitTex;
            uniform samplerCUBE _Cubemap;
            // Diffuse
            uniform float3 _MainCol;
            uniform float _EnvDiffInt;
            uniform float3 _EnvUpCol;
            uniform float3 _EnvSideCol;
            uniform float3 _EnvDownCol;
            // Specular
            uniform float _SpecPow;
            uniform float _FresnelPow;
            uniform float _EnvSpecInt;
            uniform float _CubemapMip;
            // Emission
            uniform float _EmitInt;

            struct VertexInput {
                float4 vertex : POSITION;   // 顶点信息
                float3 uv0 : TEXCOORD0;     // UV信息
                float4 normal : NORMAL;     // 法线信息
                float4 tangent : TANGENT;   // 切线信息

            };
            struct VertexOutput {
                float4 pos : SV_POSITION;   // 顶点Shader输出结构
                float2 uv0 : TEXCOORD0;     // UV0
                float4 posWS : TEXCOORD1;   // 世界空间顶点位置
                float3 nDirWS : TEXCOORD2;  // 世界空间法线方向
                float3 tDirWS : TEXCOORD3;  // 世界空间切线方向
                float3 bDirWS : TEXCOORD4;  // 世界空间副切线方向
                LIGHTING_COORDS(5,6)        // 投影相关

            };
            VertexOutput vert (VertexInput v) { // 顶点Shader
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );           // 顶点位置
                o.uv0 = v.uv0;                                      // 传递UV信息
                o.posWS = mul(unity_ObjectToWorld, v.vertex);       // 顶点位置
                o.nDirWS = UnityObjectToWorldNormal(v.normal);      // 法线方向
                o.tDirWS = normalize(mul(unity_ObjectToWorld, float4(v.tangent.xyz,0.0)).xyz);  // 切线方向
                o.bDirWS = normalize(cross(o.nDirWS, o.tDirWS) * v.tangent.w);  // 副切线方向
                TRANSFER_VERTEX_TO_FRAGMENT(o)                      // 投影相关 
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {   // 片元Shader 输出rgba
                // 向量准备
                float3 nDirTS = UnpackNormal(tex2D(_NormTex,i.uv0)).rgb;    // 切线空间法线方向
                float3x3 TBN = float3x3(i.tDirWS, i.bDirWS, i.nDirWS);      // TBN矩阵，用于将法线从切线空间转到世界空间
                float3 nDirWS = normalize(mul(nDirTS, TBN));                // 世界空间法线方向
                float3 vDirWS = normalize(_WorldSpaceCameraPos.xyz - i.posWS.xyz);  // 世界空间视线方向
                float3 vrDirWS = reflect(-vDirWS, nDirWS);                  // 视线反射方向
                float3 lDirWS = _WorldSpaceLightPos0.xyz;                   // 光方向
                float3 lrDirWS = reflect(-lDirWS, nDirWS);                  // 光方向的反射方向
                // 中间量准备
                float ndotl = dot(nDirWS, lDirWS);
                float vdotr = dot(vDirWS, lrDirWS);
                float vdotn = dot(vDirWS, nDirWS);
                // 纹理采样
                float4 var_MainTex = tex2D(_MainTex, i.uv0);
                float4 var_SpecTex = tex2D(_SpecTex, i.uv0);
                float3 var_EmitTex = tex2D(_EmitTex, i.uv0).rgb;
                float cubemapMip = lerp(_CubemapMip, 1.0, var_SpecTex.a);                   // 高光次幂贴图越亮越光滑
                float3 var_Cubemap = texCUBElod(_Cubemap, float4(vrDirWS, cubemapMip)).rgb;
                // 光照模型
                /// 直接光照
                float3 baseCol = var_MainTex.rgb * _MainCol;
                float lambert = max(0.0, ndotl);
                float specCol = var_SpecTex.rgb;
                float specPow = lerp(1, _SpecPow, var_SpecTex.a);
                float phong = pow(max(0.0, vdotr), specPow);
                float shadow = LIGHT_ATTENUATION(i);
                float3 dirLighting = (baseCol * lambert + specCol * phong) * _LightColor0 * shadow;
                /// 环境光照
                float upMask = max(0.0, nDirWS.y);      // 取得向上部分遮罩
                float downMask = max(0.0, -nDirWS.y);   // 取得向下部分遮罩
                float sideMask = 1.0-upMask-downMask;     // 侧面部分遮罩
                float3 envCol = _EnvUpCol * upMask +
                                _EnvSideCol * sideMask +
                                _EnvDownCol * downMask;
                float3 envDiff = baseCol * envCol * _EnvDiffInt;
                float fresnel = pow(max(0.0, 1.0 - vdotn), _FresnelPow);   // 菲涅尔
                float3 envSpec = var_Cubemap * fresnel * _EnvSpecInt;
                float occlusion = var_MainTex.a;
                float3 envLighting = (envDiff + envSpec) * occlusion;
                /// 自发光
                float3 emission = var_EmitTex * _EmitInt;
                // 返回值
                float3 finalRGB = dirLighting + envLighting + emission;
                return fixed4(finalRGB, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}