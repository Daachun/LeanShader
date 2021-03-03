// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:84,x:33142,y:32701,varname:node_84,prsc:2|emission-1705-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2364,x:31843,y:32463,varname:node_2364,prsc:2,sctp:1;n:type:ShaderForge.SFN_Slider,id:1776,x:31686,y:32638,ptovrint:False,ptlb:DotSize,ptin:_DotSize,varname:node_1776,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:10,max:100;n:type:ShaderForge.SFN_Multiply,id:863,x:32018,y:32531,varname:node_863,prsc:2|A-2364-UVOUT,B-1776-OUT,C-5331-OUT;n:type:ShaderForge.SFN_Frac,id:6103,x:32217,y:32531,cmnt:取余相当于将uv重复,varname:node_6103,prsc:2|IN-863-OUT;n:type:ShaderForge.SFN_RemapRange,id:1841,x:32400,y:32531,cmnt:重映射到-0.50.5,varname:node_1841,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-6103-OUT;n:type:ShaderForge.SFN_Length,id:7721,x:32567,y:32531,cmnt:取长度变为圆点相当于勾股定理,varname:node_7721,prsc:2|IN-1841-OUT;n:type:ShaderForge.SFN_LightVector,id:7667,x:31941,y:32936,varname:node_7667,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2614,x:31941,y:33083,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3941,x:32132,y:32996,varname:node_3941,prsc:2,dt:1|A-7667-OUT,B-2614-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9647,x:32132,y:33155,varname:node_9647,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4137,x:32320,y:33064,varname:node_4137,prsc:2|A-3941-OUT,B-9647-OUT;n:type:ShaderForge.SFN_Power,id:2605,x:32770,y:32808,cmnt:exp次方,varname:node_2605,prsc:2|VAL-7721-OUT,EXP-5806-OUT;n:type:ShaderForge.SFN_Round,id:1705,x:32942,y:32808,cmnt:四舍五入,varname:node_1705,prsc:2|IN-2605-OUT;n:type:ShaderForge.SFN_Depth,id:5331,x:31843,y:32715,varname:node_5331,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:5806,x:32509,y:33064,varname:node_5806,prsc:2,frmn:1,frmx:0,tomn:-0.5,tomx:2|IN-4137-OUT;proporder:1776;pass:END;sub:END;*/

Shader "Unlit/HalfToon" {
    Properties {
        _DotSize ("DotSize", Range(10, 100)) = 10
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DotSize)
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
////// Emissive:
                float _DotSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DotSize );
                float node_4137 = (max(0,dot(lightDirection,i.normalDir))*attenuation);
                float node_1705 = round(pow(length((frac((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*_DotSize_var*partZ))*1.0+-0.5)),(node_4137*-2.5+2.0))); // 四舍五入
                float3 emissive = float3(node_1705,node_1705,node_1705);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _DotSize)
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
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
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
