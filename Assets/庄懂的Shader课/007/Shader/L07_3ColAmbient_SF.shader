// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33671,y:32745,varname:node_3138,prsc:2|emission-4806-OUT;n:type:ShaderForge.SFN_NormalVector,id:6285,x:32004,y:32862,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:9090,x:32180,y:32862,varname:node_9090,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6285-OUT;n:type:ShaderForge.SFN_Multiply,id:457,x:32362,y:33039,varname:node_457,prsc:2|A-9090-OUT,B-612-OUT;n:type:ShaderForge.SFN_Vector1,id:612,x:32180,y:33073,varname:node_612,prsc:2,v1:-1;n:type:ShaderForge.SFN_Max,id:8664,x:32536,y:33039,cmnt:向下部分遮罩,varname:node_8664,prsc:2|A-3800-OUT,B-457-OUT;n:type:ShaderForge.SFN_OneMinus,id:4093,x:32536,y:32862,varname:node_4093,prsc:2|IN-1009-OUT;n:type:ShaderForge.SFN_Subtract,id:8504,x:32716,y:32862,cmnt:侧面部分遮罩,varname:node_8504,prsc:2|A-4093-OUT,B-8664-OUT;n:type:ShaderForge.SFN_Multiply,id:7092,x:32970,y:32673,varname:node_7092,prsc:2|A-5104-RGB,B-1009-OUT;n:type:ShaderForge.SFN_Multiply,id:9396,x:32973,y:32847,varname:node_9396,prsc:2|A-3832-RGB,B-8504-OUT;n:type:ShaderForge.SFN_Multiply,id:8331,x:32973,y:33025,varname:node_8331,prsc:2|A-4710-RGB,B-8664-OUT;n:type:ShaderForge.SFN_Add,id:5276,x:33156,y:32847,varname:node_5276,prsc:2|A-7092-OUT,B-9396-OUT,C-8331-OUT;n:type:ShaderForge.SFN_Color,id:5104,x:32617,y:32290,ptovrint:False,ptlb:EvtUpCol,ptin:_EvtUpCol,varname:node_5104,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3820755,c3:0.3820755,c4:1;n:type:ShaderForge.SFN_Color,id:3832,x:32617,y:32472,ptovrint:False,ptlb:EvtSideCol,ptin:_EvtSideCol,varname:_UpAo_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07075471,c2:0.08331877,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4710,x:32617,y:32650,ptovrint:False,ptlb:EvtDownCol,ptin:_EvtDownCol,varname:_UpAo_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8556143,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7781,x:33156,y:32612,ptovrint:False,ptlb:Occlusion,ptin:_Occlusion,varname:node_7781,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4806,x:33346,y:32847,varname:node_4806,prsc:2|A-7781-RGB,B-5276-OUT;n:type:ShaderForge.SFN_Vector1,id:3800,x:32180,y:33014,varname:node_3800,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:1009,x:32362,y:32862,cmnt:向上部分遮罩,varname:node_1009,prsc:2|A-9090-OUT,B-3800-OUT;proporder:5104-3832-4710-7781;pass:END;sub:END;*/

Shader "Shader Forge/L07_3ColAmbient_SF" {
    Properties {
        _EvtUpCol ("EvtUpCol", Color) = (1,0.3820755,0.3820755,1)
        _EvtSideCol ("EvtSideCol", Color) = (0.07075471,0.08331877,1,1)
        _EvtDownCol ("EvtDownCol", Color) = (0.8556143,1,0,1)
        _Occlusion ("Occlusion", 2D) = "white" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Occlusion; uniform float4 _Occlusion_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _EvtUpCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EvtSideCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EvtDownCol)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Occlusion_var = tex2D(_Occlusion,TRANSFORM_TEX(i.uv0, _Occlusion));
                float4 _EvtUpCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EvtUpCol );
                float node_9090 = i.normalDir.g;
                float node_3800 = 0.0;
                float node_1009 = max(node_9090,node_3800); // 向上部分遮罩
                float4 _EvtSideCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EvtSideCol );
                float node_8664 = max(node_3800,(node_9090*(-1.0))); // 向下部分遮罩
                float4 _EvtDownCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EvtDownCol );
                float3 emissive = (_Occlusion_var.rgb*((_EvtUpCol_var.rgb*node_1009)+(_EvtSideCol_var.rgb*((1.0 - node_1009)-node_8664))+(_EvtDownCol_var.rgb*node_8664)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
