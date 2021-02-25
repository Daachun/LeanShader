// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:1,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6358,x:33473,y:32781,varname:node_6358,prsc:2|emission-1209-RGB,olwid-7119-OUT,olcol-7600-RGB;n:type:ShaderForge.SFN_Dot,id:8555,x:32259,y:32900,varname:node_8555,prsc:2,dt:0|A-2930-OUT,B-7410-OUT;n:type:ShaderForge.SFN_NormalVector,id:2930,x:32053,y:32844,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:7410,x:32053,y:33010,varname:node_7410,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4329,x:32433,y:33092,varname:node_4329,prsc:2|A-8555-OUT,B-6245-OUT;n:type:ShaderForge.SFN_Vector1,id:6245,x:32207,y:33152,varname:node_6245,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2920,x:32637,y:32973,varname:node_2920,prsc:2|A-2771-OUT,B-4329-OUT;n:type:ShaderForge.SFN_Vector1,id:2771,x:32469,y:32944,varname:node_2771,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:1209,x:33082,y:32929,ptovrint:False,ptlb:node_1209,ptin:_node_1209,varname:node_1209,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7164b6c4a52ab264c80a615736814103,ntxv:0,isnm:False|UVIN-612-OUT;n:type:ShaderForge.SFN_Append,id:612,x:32904,y:32929,varname:node_612,prsc:2|A-2920-OUT,B-1104-OUT;n:type:ShaderForge.SFN_Vector1,id:1104,x:32736,y:33107,varname:node_1104,prsc:2,v1:0.1;n:type:ShaderForge.SFN_HalfVector,id:2813,x:31794,y:32632,varname:node_2813,prsc:2;n:type:ShaderForge.SFN_Dot,id:3161,x:31987,y:32541,varname:node_3161,prsc:2,dt:0|A-2417-OUT,B-2813-OUT;n:type:ShaderForge.SFN_NormalVector,id:2417,x:31794,y:32480,prsc:2,pt:False;n:type:ShaderForge.SFN_Vector1,id:2406,x:31983,y:32480,varname:node_2406,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Add,id:2180,x:32980,y:32315,varname:node_2180,prsc:2|A-2968-OUT,B-1209-RGB;n:type:ShaderForge.SFN_Lerp,id:2968,x:32654,y:32605,varname:node_2968,prsc:2|A-9103-OUT,B-4252-OUT,T-6481-OUT;n:type:ShaderForge.SFN_Smoothstep,id:6481,x:32454,y:32683,varname:node_6481,prsc:2|A-8913-OUT,B-1429-OUT,V-4731-OUT;n:type:ShaderForge.SFN_Vector1,id:9103,x:32454,y:32542,varname:node_9103,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:4252,x:32454,y:32605,varname:node_4252,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1429,x:32291,y:32650,varname:node_1429,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector1,id:8913,x:32291,y:32588,varname:node_8913,prsc:2,v1:-0.01;n:type:ShaderForge.SFN_Subtract,id:4731,x:32291,y:32721,varname:node_4731,prsc:2|A-3161-OUT,B-2406-OUT;n:type:ShaderForge.SFN_Vector1,id:7119,x:33219,y:33051,varname:node_7119,prsc:2,v1:0.015;n:type:ShaderForge.SFN_Color,id:7600,x:33219,y:33143,ptovrint:False,ptlb:node_7600,ptin:_node_7600,varname:node_7600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.254717,c2:0.2016727,c3:0.0516643,c4:0.4470588;n:type:ShaderForge.SFN_Step,id:5781,x:32180,y:32385,varname:node_5781,prsc:2|A-2406-OUT,B-3161-OUT;proporder:1209-7600;pass:END;sub:END;*/

Shader "Unlit/HalfLambert" {
    Properties {
        _node_1209 ("node_1209", 2D) = "white" {}
        _node_7600 ("node_7600", Color) = (0.254717,0.2016727,0.0516643,0.4470588)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            Offset 1, 0
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_7600;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*0.015,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(_node_7600.rgb,0);
            }
            ENDCG
        }
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
            uniform sampler2D _node_1209; uniform float4 _node_1209_ST;
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
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float2 node_612 = float2((0.5+(dot(i.normalDir,lightDirection)*0.5)),0.1);
                float4 _node_1209_var = tex2D(_node_1209,TRANSFORM_TEX(node_612, _node_1209));
                float3 emissive = _node_1209_var.rgb;
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
            uniform sampler2D _node_1209; uniform float4 _node_1209_ST;
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
