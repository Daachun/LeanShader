// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32865,y:32736,varname:node_3138,prsc:2|emission-6815-OUT;n:type:ShaderForge.SFN_Cubemap,id:658,x:32291,y:32540,ptovrint:False,ptlb:Cubemap,ptin:_Cubemap,varname:node_658,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:b70128b17806b8a4c82cf16689f75e2f,pvfc:0|DIR-7307-OUT,MIP-3097-OUT;n:type:ShaderForge.SFN_Slider,id:3097,x:31973,y:32615,ptovrint:False,ptlb:CubeMapMip,ptin:_CubeMapMip,varname:node_3097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:7;n:type:ShaderForge.SFN_Tex2d,id:5744,x:31348,y:32560,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_5744,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Transform,id:8288,x:31541,y:32560,cmnt:nDirWS,varname:node_8288,prsc:2,tffrom:2,tfto:0|IN-5744-RGB;n:type:ShaderForge.SFN_ViewVector,id:7920,x:31358,y:32301,varname:node_7920,prsc:2;n:type:ShaderForge.SFN_Vector1,id:3815,x:31348,y:32448,varname:node_3815,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:2156,x:31541,y:32338,cmnt:-vDir,varname:node_2156,prsc:2|A-7920-OUT,B-3815-OUT;n:type:ShaderForge.SFN_Reflect,id:7307,x:31789,y:32451,cmnt:vrDir,varname:node_7307,prsc:2|A-2156-OUT,B-8288-XYZ;n:type:ShaderForge.SFN_Fresnel,id:8022,x:32291,y:32734,varname:node_8022,prsc:2|NRM-8288-XYZ,EXP-5359-OUT;n:type:ShaderForge.SFN_Slider,id:5359,x:31973,y:32789,ptovrint:False,ptlb:FresnelPow,ptin:_FresnelPow,varname:node_5359,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:6815,x:32525,y:32661,varname:node_6815,prsc:2|A-658-RGB,B-8022-OUT,C-8050-OUT;n:type:ShaderForge.SFN_Slider,id:8050,x:32158,y:32933,ptovrint:False,ptlb:EnvSpecInt,ptin:_EnvSpecInt,varname:node_8050,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:5;proporder:658-3097-5744-5359-8050;pass:END;sub:END;*/

Shader "Daachun/L09_CubeMap_SF" {
    Properties {
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
        _CubeMapMip ("CubeMapMip", Range(0, 7)) = 0
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _FresnelPow ("FresnelPow", Range(0, 10)) = 1
        _EnvSpecInt ("EnvSpecInt", Range(0, 5)) = 0.2
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
            uniform samplerCUBE _Cubemap;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _CubeMapMip)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelPow)
                UNITY_DEFINE_INSTANCED_PROP( float, _EnvSpecInt)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 node_8288 = mul( _NormalMap_var.rgb, tangentTransform ).xyz; // nDirWS
                float _CubeMapMip_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CubeMapMip );
                float _FresnelPow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelPow );
                float _EnvSpecInt_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvSpecInt );
                float3 emissive = (texCUBElod(_Cubemap,float4(reflect((viewDirection*(-1.0)),node_8288.rgb),_CubeMapMip_var)).rgb*pow(1.0-max(0,dot(node_8288.rgb, viewDirection)),_FresnelPow_var)*_EnvSpecInt_var);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
