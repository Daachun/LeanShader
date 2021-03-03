// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33102,y:32757,varname:node_3138,prsc:2|emission-8887-OUT;n:type:ShaderForge.SFN_LightVector,id:9033,x:31742,y:32700,varname:node_9033,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6159,x:31917,y:32757,varname:node_6159,prsc:2|A-9033-OUT,B-8222-OUT;n:type:ShaderForge.SFN_Vector1,id:8222,x:31742,y:32841,varname:node_8222,prsc:2,v1:-1;n:type:ShaderForge.SFN_Reflect,id:5386,x:32098,y:32809,varname:node_5386,prsc:2|A-6159-OUT,B-3150-OUT;n:type:ShaderForge.SFN_NormalVector,id:3150,x:31917,y:32926,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewVector,id:5839,x:32098,y:32961,varname:node_5839,prsc:2;n:type:ShaderForge.SFN_Dot,id:2731,x:32295,y:32873,varname:node_2731,prsc:2,dt:0|A-5386-OUT,B-5839-OUT;n:type:ShaderForge.SFN_Max,id:7238,x:32649,y:32934,varname:node_7238,prsc:2|A-2731-OUT,B-7731-OUT;n:type:ShaderForge.SFN_Vector1,id:7731,x:32486,y:33022,varname:node_7731,prsc:2,v1:0;n:type:ShaderForge.SFN_Power,id:8887,x:32891,y:32934,varname:node_8887,prsc:2|VAL-7238-OUT,EXP-4918-OUT;n:type:ShaderForge.SFN_Slider,id:4918,x:32549,y:33178,ptovrint:False,ptlb:slider,ptin:_slider,varname:node_4918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:6.417391,max:90;n:type:ShaderForge.SFN_ViewReflectionVector,id:8577,x:32393,y:32411,cmnt:视角方向可逆,varname:node_8577,prsc:2;n:type:ShaderForge.SFN_LightVector,id:7945,x:32393,y:32561,varname:node_7945,prsc:2;n:type:ShaderForge.SFN_Dot,id:7575,x:32563,y:32483,varname:node_7575,prsc:2,dt:0|A-8577-OUT,B-7945-OUT;proporder:4918;pass:END;sub:END;*/

Shader "Daachun/L03/Phone_SF" {
    Properties {
        _slider ("slider", Range(1, 90)) = 6.417391
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _slider)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float _slider_var = UNITY_ACCESS_INSTANCED_PROP( Props, _slider );
                float node_8887 = pow(max(dot(reflect((lightDirection*(-1.0)),i.normalDir),viewDirection),0.0),_slider_var);
                float3 emissive = float3(node_8887,node_8887,node_8887);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _slider)
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
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
