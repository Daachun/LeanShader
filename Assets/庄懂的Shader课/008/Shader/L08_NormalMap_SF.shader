// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33289,y:32783,varname:node_3138,prsc:2|emission-2882-OUT;n:type:ShaderForge.SFN_Tangent,id:6561,x:32026,y:32487,varname:node_6561,prsc:2;n:type:ShaderForge.SFN_Bitangent,id:8136,x:32026,y:32609,varname:node_8136,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4122,x:32026,y:32735,prsc:2,pt:False;n:type:ShaderForge.SFN_Code,id:2554,x:32314,y:32728,varname:node_2554,prsc:2,code:ZgBsAG8AYQB0ADMAIABuAEQAaQByAFQAUwAgAD0AIABVAG4AcABhAGMAawBOAG8AcgBtAGEAbAAoAHQAZQB4ADIARAAoAG4AbwByAG0AYQBsAE0AYQBwACwAdQB2ACkAKQA7AAoAZgBsAG8AYQB0ADMAeAAzACAAVABCAE4AIAA9ACAAZgBsAG8AYQB0ADMAeAAzACgAdABEAGkAcgAsAGIARABpAHIALABuAEQAaQByACkAOwAKAGYAbABvAGEAdAAzACAAbgBEAGkAcgBXAFMAIAA9ACAAbgBvAHIAbQBhAGwAaQB6AGUAKABtAHUAbAAoAG4ARABpAHIAVABTACwAIABUAEIATgApACkAOwAKAHIAZQB0AHUAcgBuACAAbgBEAGkAcgBXAFMAOwA=,output:2,fname:NormalMapSampler,width:399,height:148,input:2,input:2,input:2,input:12,input:1,input_1_label:tDir,input_2_label:bDir,input_3_label:nDir,input_4_label:normalMap,input_5_label:uv|A-6561-OUT,B-8136-OUT,C-4122-OUT,D-3426-TEX,E-2102-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2102,x:32026,y:33070,varname:node_2102,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3426,x:32026,y:32908,ptovrint:False,ptlb:normalMap,ptin:_normalMap,varname:node_3426,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Dot,id:6744,x:32932,y:32871,varname:node_6744,prsc:2,dt:0|A-2554-OUT,B-8742-OUT;n:type:ShaderForge.SFN_LightVector,id:8742,x:32754,y:33090,varname:node_8742,prsc:2;n:type:ShaderForge.SFN_Max,id:2882,x:33096,y:32881,varname:node_2882,prsc:2|A-6744-OUT,B-7391-OUT;n:type:ShaderForge.SFN_Vector1,id:7391,x:32932,y:33027,varname:node_7391,prsc:2,v1:0;proporder:3426;pass:END;sub:END;*/

Shader "Daachun/L08_NormalMap_SF" {
    Properties {
        _normalMap ("normalMap", 2D) = "bump" {}
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            float3 NormalMapSampler( float3 tDir , float3 bDir , float3 nDir , sampler2D normalMap , float2 uv ){
            float3 nDirTS = UnpackNormal(tex2D(normalMap,uv));
            float3x3 TBN = float3x3(tDir,bDir,nDir);
            float3 nDirWS = normalize(mul(nDirTS, TBN));
            return nDirWS;
            }
            
            uniform sampler2D _normalMap; uniform float4 _normalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_2882 = max(dot(NormalMapSampler( i.tangentDir , i.bitangentDir , i.normalDir , _normalMap , i.uv0 ),lightDirection),0.0);
                float3 emissive = float3(node_2882,node_2882,node_2882);
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
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            float3 NormalMapSampler( float3 tDir , float3 bDir , float3 nDir , sampler2D normalMap , float2 uv ){
            float3 nDirTS = UnpackNormal(tex2D(normalMap,uv));
            float3x3 TBN = float3x3(tDir,bDir,nDir);
            float3 nDirWS = normalize(mul(nDirTS, TBN));
            return nDirWS;
            }
            
            uniform sampler2D _normalMap; uniform float4 _normalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
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
