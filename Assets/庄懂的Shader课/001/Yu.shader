// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:1,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6358,x:33642,y:33088,varname:node_6358,prsc:2|emission-3530-OUT;n:type:ShaderForge.SFN_Dot,id:8555,x:32237,y:32666,varname:node_8555,prsc:2,dt:0|A-2930-OUT,B-7410-OUT;n:type:ShaderForge.SFN_NormalVector,id:2930,x:32050,y:32602,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7410,x:32050,y:32749,varname:node_7410,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4329,x:32433,y:32676,varname:node_4329,prsc:2|A-8555-OUT,B-6245-OUT;n:type:ShaderForge.SFN_Vector1,id:6245,x:32237,y:32602,varname:node_6245,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2920,x:32622,y:32641,varname:node_2920,prsc:2|A-6245-OUT,B-4329-OUT;n:type:ShaderForge.SFN_Tex2d,id:1209,x:33004,y:32792,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1209,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2930c9be8b78ea048ad2c73966b6b91c,ntxv:0,isnm:False|UVIN-612-OUT;n:type:ShaderForge.SFN_Append,id:612,x:32798,y:32747,varname:node_612,prsc:2|A-2920-OUT,B-6245-OUT;n:type:ShaderForge.SFN_Dot,id:8348,x:32466,y:33041,varname:node_8348,prsc:2,dt:0|A-5554-OUT,B-5950-OUT;n:type:ShaderForge.SFN_NormalVector,id:5554,x:31769,y:33151,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7355,x:31769,y:33366,varname:node_7355,prsc:2;n:type:ShaderForge.SFN_Add,id:2708,x:32123,y:33162,varname:node_2708,prsc:2|A-7355-OUT,B-9979-XYZ;n:type:ShaderForge.SFN_Fresnel,id:9433,x:33189,y:33441,varname:node_9433,prsc:2|EXP-1811-OUT;n:type:ShaderForge.SFN_Vector1,id:1811,x:33000,y:33538,varname:node_1811,prsc:2,v1:3;n:type:ShaderForge.SFN_Step,id:4213,x:32638,y:32982,varname:node_4213,prsc:2|A-11-OUT,B-8348-OUT;n:type:ShaderForge.SFN_Normalize,id:5950,x:32291,y:33162,varname:node_5950,prsc:2|IN-2708-OUT;n:type:ShaderForge.SFN_Dot,id:6583,x:32449,y:33444,varname:node_6583,prsc:2,dt:0|A-5554-OUT,B-1630-OUT;n:type:ShaderForge.SFN_Add,id:8770,x:32107,y:33514,varname:node_8770,prsc:2|A-7355-OUT,B-8327-XYZ;n:type:ShaderForge.SFN_Step,id:4602,x:32625,y:33382,varname:node_4602,prsc:2|A-6693-OUT,B-6583-OUT;n:type:ShaderForge.SFN_Normalize,id:1630,x:32274,y:33514,varname:node_1630,prsc:2|IN-8770-OUT;n:type:ShaderForge.SFN_Max,id:9204,x:32835,y:33211,varname:node_9204,prsc:2|A-4213-OUT,B-4602-OUT;n:type:ShaderForge.SFN_Clamp01,id:2391,x:33015,y:33211,varname:node_2391,prsc:2|IN-9204-OUT;n:type:ShaderForge.SFN_Lerp,id:2367,x:33248,y:33101,varname:node_2367,prsc:2|A-1209-RGB,B-6763-RGB,T-2391-OUT;n:type:ShaderForge.SFN_Color,id:6763,x:33015,y:33067,ptovrint:False,ptlb:GrossColor,ptin:_GrossColor,varname:node_6763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9921296,c2:1,c3:0.9386792,c4:1;n:type:ShaderForge.SFN_Blend,id:3530,x:33438,y:33284,varname:node_3530,prsc:2,blmd:6,clmp:True|SRC-2367-OUT,DST-7320-OUT;n:type:ShaderForge.SFN_Multiply,id:7320,x:33410,y:33547,varname:node_7320,prsc:2|A-9433-OUT,B-365-RGB;n:type:ShaderForge.SFN_Color,id:365,x:33208,y:33619,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_365,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7646767,c2:0.990566,c3:0.7616144,c4:1;n:type:ShaderForge.SFN_Vector4Property,id:8327,x:31887,y:33607,ptovrint:False,ptlb:HighlightOffset2,ptin:_HighlightOffset2,varname:node_8327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3,v2:0.1,v3:-0.2,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:9979,x:31880,y:33001,ptovrint:False,ptlb:HighlightOffset1,ptin:_HighlightOffset1,varname:_HighlightOffset3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1,v2:0.2,v3:0.1,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:11,x:32433,y:32951,ptovrint:False,ptlb:HighlightWidth1,ptin:_HighlightWidth1,varname:node_11,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.995;n:type:ShaderForge.SFN_ValueProperty,id:6693,x:32417,y:33353,ptovrint:False,ptlb:HighlightWidth2,ptin:_HighlightWidth2,varname:_HighlightWidth2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.999;proporder:1209-6763-365-8327-9979-11-6693;pass:END;sub:END;*/

Shader "Unlit/Yu" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _GrossColor ("GrossColor", Color) = (0.9921296,1,0.9386792,1)
        _FresnelColor ("FresnelColor", Color) = (0.7646767,0.990566,0.7616144,1)
        _HighlightOffset2 ("HighlightOffset2", Vector) = (0.3,0.1,-0.2,0)
        _HighlightOffset1 ("HighlightOffset1", Vector) = (0.1,0.2,0.1,0)
        _HighlightWidth1 ("HighlightWidth1", Float ) = 0.995
        _HighlightWidth2 ("HighlightWidth2", Float ) = 0.999
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            Offset 1, 0
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _GrossColor;
            uniform float4 _FresnelColor;
            uniform float4 _HighlightOffset2;
            uniform float4 _HighlightOffset1;
            uniform float _HighlightWidth1;
            uniform float _HighlightWidth2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_6245 = 0.5;
                float2 node_612 = float2((node_6245+(dot(i.normalDir,lightDirection)*node_6245)),node_6245);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_612, _Texture));
                float3 emissive = saturate((1.0-(1.0-lerp(_Texture_var.rgb,_GrossColor.rgb,saturate(max(step(_HighlightWidth1,dot(i.normalDir,normalize((lightDirection+_HighlightOffset1.rgb)))),step(_HighlightWidth2,dot(i.normalDir,normalize((lightDirection+_HighlightOffset2.rgb))))))))*(1.0-(pow(1.0-max(0,dot(normalDirection, viewDirection)),3.0)*_FresnelColor.rgb))));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            Offset 1, 0
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _GrossColor;
            uniform float4 _FresnelColor;
            uniform float4 _HighlightOffset2;
            uniform float4 _HighlightOffset1;
            uniform float _HighlightWidth1;
            uniform float _HighlightWidth2;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
