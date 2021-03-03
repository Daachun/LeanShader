// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7512,x:33145,y:32481,varname:node_7512,prsc:2|emission-5752-OUT,olwid-8590-OUT,olcol-2151-RGB;n:type:ShaderForge.SFN_Dot,id:4134,x:32128,y:32761,cmnt:明暗,varname:node_4134,prsc:2,dt:0|A-9980-OUT,B-4479-OUT;n:type:ShaderForge.SFN_NormalVector,id:9980,x:31884,y:32677,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:4479,x:31884,y:32837,varname:node_4479,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:8139,x:31746,y:32299,varname:node_8139,prsc:2,sctp:1;n:type:ShaderForge.SFN_Depth,id:420,x:31746,y:32494,varname:node_420,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:2746,x:32070,y:32396,ptovrint:False,ptlb:lineTex,ptin:_lineTex,cmnt:排线,varname:node_2746,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c2a6ddbfafb705c4aa0afb9828d9cc59,ntxv:0,isnm:False|UVIN-6657-OUT;n:type:ShaderForge.SFN_Multiply,id:6657,x:31905,y:32396,varname:node_6657,prsc:2|A-8139-UVOUT,B-420-OUT;n:type:ShaderForge.SFN_Step,id:3641,x:32334,y:32642,cmnt:阴影线,varname:node_3641,prsc:2|A-2746-R,B-4134-OUT;n:type:ShaderForge.SFN_Color,id:5712,x:32128,y:32977,ptovrint:False,ptlb:multiply color,ptin:_multiplycolor,varname:node_5712,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6531,x:32334,y:32891,varname:node_6531,prsc:2|A-4134-OUT,B-5712-RGB;n:type:ShaderForge.SFN_Color,id:5665,x:32282,y:32129,ptovrint:False,ptlb:dark,ptin:_dark,varname:node_5665,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4839356,c2:0.8207547,c3:0.7077659,c4:1;n:type:ShaderForge.SFN_Color,id:3868,x:32282,y:32309,ptovrint:False,ptlb:light,ptin:_light,varname:_dark_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:3161,x:32514,y:32395,varname:node_3161,prsc:2|A-5665-RGB,B-3868-RGB,T-3641-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8590,x:32832,y:32767,ptovrint:False,ptlb:outlineWidth,ptin:_outlineWidth,varname:node_8590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.01;n:type:ShaderForge.SFN_Color,id:2151,x:32832,y:32867,ptovrint:False,ptlb:outlineColor,ptin:_outlineColor,varname:node_2151,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6792453,c2:0.466722,c3:0.259523,c4:1;n:type:ShaderForge.SFN_Add,id:5752,x:32754,y:32605,varname:node_5752,prsc:2|A-3161-OUT,B-6531-OUT;proporder:2746-5665-3868-5712-8590-2151;pass:END;sub:END;*/

Shader "Unlit/Paixian" {
    Properties {
        _lineTex ("lineTex", 2D) = "white" {}
        _dark ("dark", Color) = (0.4839356,0.8207547,0.7077659,1)
        _light ("light", Color) = (1,1,1,1)
        _multiplycolor ("multiply color", Color) = (1,1,1,1)
        _outlineWidth ("outlineWidth", Float ) = 0.01
        _outlineColor ("outlineColor", Color) = (0.6792453,0.466722,0.259523,1)
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
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _outlineWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _outlineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _outlineWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _outlineWidth );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_outlineWidth_var,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _outlineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _outlineColor );
                return fixed4(_outlineColor_var.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _lineTex; uniform float4 _lineTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _multiplycolor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _dark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _light)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float4 _dark_var = UNITY_ACCESS_INSTANCED_PROP( Props, _dark );
                float4 _light_var = UNITY_ACCESS_INSTANCED_PROP( Props, _light );
                float2 node_6657 = (float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*partZ);
                float4 _lineTex_var = tex2D(_lineTex,TRANSFORM_TEX(node_6657, _lineTex)); // 排线
                float node_4134 = dot(i.normalDir,lightDirection); // 明暗
                float4 _multiplycolor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _multiplycolor );
                float3 emissive = (lerp(_dark_var.rgb,_light_var.rgb,step(_lineTex_var.r,node_4134))+(node_4134*_multiplycolor_var.rgb));
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _lineTex; uniform float4 _lineTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _multiplycolor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _dark)
                UNITY_DEFINE_INSTANCED_PROP( float4, _light)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
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
