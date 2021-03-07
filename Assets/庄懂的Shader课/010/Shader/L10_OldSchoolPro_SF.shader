// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34589,y:33003,varname:node_3138,prsc:2|emission-1200-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7112,x:33055,y:32354,cmnt:投影,varname:node_7112,prsc:2;n:type:ShaderForge.SFN_LightVector,id:8540,x:30432,y:32391,cmnt:lDir,varname:node_8540,prsc:2;n:type:ShaderForge.SFN_Dot,id:1098,x:31308,y:32531,cmnt:n dot l,varname:node_1098,prsc:2,dt:0|A-8540-OUT,B-366-XYZ;n:type:ShaderForge.SFN_Multiply,id:1193,x:32629,y:32354,cmnt:lambert,varname:node_1193,prsc:2|A-5940-OUT,B-1018-OUT;n:type:ShaderForge.SFN_Color,id:5469,x:32219,y:32455,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_5469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:5973,x:31414,y:33443,varname:node_5973,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-366-XYZ;n:type:ShaderForge.SFN_Max,id:8182,x:31590,y:33300,cmnt:上部遮罩,varname:node_8182,prsc:2|A-5973-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Vector1,id:3969,x:31414,y:33383,varname:node_3969,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:6522,x:31776,y:33521,cmnt:下部遮罩,varname:node_6522,prsc:2|A-4023-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Multiply,id:4023,x:31590,y:33521,varname:node_4023,prsc:2|A-5973-OUT,B-2259-OUT;n:type:ShaderForge.SFN_Vector1,id:2259,x:31414,y:33596,varname:node_2259,prsc:2,v1:-1;n:type:ShaderForge.SFN_OneMinus,id:8391,x:31776,y:33370,varname:node_8391,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Subtract,id:3411,x:31973,y:33370,cmnt:侧面遮罩,varname:node_3411,prsc:2|A-8391-OUT,B-6522-OUT;n:type:ShaderForge.SFN_Color,id:3907,x:32160,y:33262,ptovrint:False,ptlb:EnvUpCol,ptin:_EnvUpCol,cmnt:上部环境光颜色,varname:node_3907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6963,x:32166,y:33755,ptovrint:False,ptlb:EnvDownCol,ptin:_EnvDownCol,cmnt:下部环境光颜色,varname:_EnvUpCol_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9610,x:32166,y:33528,ptovrint:False,ptlb:EnvSideCol,ptin:_EnvSideCol,cmnt:侧面环境光颜色,varname:_EnvUpCol_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:665,x:32331,y:33398,varname:node_665,prsc:2|A-3907-RGB,B-8182-OUT;n:type:ShaderForge.SFN_Add,id:1037,x:32635,y:33509,cmnt:三部分颜色环境光遮罩,varname:node_1037,prsc:2|A-665-OUT,B-1492-OUT,C-8969-OUT;n:type:ShaderForge.SFN_Multiply,id:1492,x:32331,y:33528,varname:node_1492,prsc:2|A-3411-OUT,B-9610-RGB;n:type:ShaderForge.SFN_Multiply,id:8969,x:32331,y:33679,varname:node_8969,prsc:2|A-6522-OUT,B-6963-RGB;n:type:ShaderForge.SFN_Tex2d,id:1554,x:33691,y:33547,ptovrint:False,ptlb:Occolusion,ptin:_Occolusion,varname:node_1554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:1200,x:34121,y:33051,varname:node_1200,prsc:2|A-1446-OUT,B-5819-OUT;n:type:ShaderForge.SFN_Dot,id:1889,x:31308,y:32786,cmnt:r dot v,varname:node_1889,prsc:2,dt:0|A-9079-OUT,B-8419-OUT;n:type:ShaderForge.SFN_Slider,id:8016,x:32202,y:32912,ptovrint:False,ptlb:SepculurPower,ptin:_SepculurPower,varname:node_8016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:30,max:90;n:type:ShaderForge.SFN_Power,id:8626,x:32633,y:32753,cmnt:phong specular,varname:node_8626,prsc:2|VAL-3740-OUT,EXP-8016-OUT;n:type:ShaderForge.SFN_Add,id:9954,x:32852,y:32552,cmnt:lambertphong,varname:node_9954,prsc:2|A-1193-OUT,B-8626-OUT;n:type:ShaderForge.SFN_Color,id:7635,x:32852,y:32354,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_7635,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5940,x:31489,y:32531,varname:node_5940,prsc:2|IN-1098-OUT;n:type:ShaderForge.SFN_Multiply,id:1499,x:33055,y:32552,varname:node_1499,prsc:2|A-7635-RGB,B-9954-OUT;n:type:ShaderForge.SFN_Tex2d,id:3251,x:30279,y:32731,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,cmnt:nDirTS,varname:node_3251,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Transform,id:366,x:30432,y:32731,cmnt:nDirWS,varname:node_366,prsc:2,tffrom:2,tfto:0|IN-3251-RGB;n:type:ShaderForge.SFN_Tex2d,id:6052,x:32219,y:32645,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6052,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Cubemap,id:7098,x:32081,y:34214,ptovrint:False,ptlb:CubeMap,ptin:_CubeMap,varname:node_7098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0|DIR-9373-OUT,MIP-4406-OUT;n:type:ShaderForge.SFN_Slider,id:4406,x:31746,y:34285,ptovrint:False,ptlb:CubeMapMip,ptin:_CubeMapMip,varname:node_4406,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:7;n:type:ShaderForge.SFN_ViewVector,id:8419,x:30432,y:32920,cmnt:vDirws,varname:node_8419,prsc:2;n:type:ShaderForge.SFN_Reflect,id:9373,x:30805,y:32968,cmnt:vrDirWS,varname:node_9373,prsc:2|A-3595-OUT,B-366-XYZ;n:type:ShaderForge.SFN_Fresnel,id:4640,x:32081,y:34049,varname:node_4640,prsc:2|NRM-366-XYZ,EXP-6069-OUT;n:type:ShaderForge.SFN_Slider,id:6069,x:31746,y:34164,ptovrint:False,ptlb:FresnelPow,ptin:_FresnelPow,varname:node_6069,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:5819,x:33871,y:33475,cmnt:AO,varname:node_5819,prsc:2|A-5299-OUT,B-1554-RGB;n:type:ShaderForge.SFN_Multiply,id:3595,x:30619,y:32968,cmnt:-vDir,varname:node_3595,prsc:2|A-8419-OUT,B-6374-OUT;n:type:ShaderForge.SFN_Vector1,id:8682,x:30432,y:32519,varname:node_8682,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6861,x:30622,y:32391,varname:node_6861,prsc:2|A-8540-OUT,B-8682-OUT;n:type:ShaderForge.SFN_Reflect,id:9079,x:30798,y:32391,cmnt:rDirWS,varname:node_9079,prsc:2|A-6861-OUT,B-366-XYZ;n:type:ShaderForge.SFN_Vector1,id:6374,x:30432,y:33056,varname:node_6374,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:1018,x:32436,y:32566,varname:node_1018,prsc:2|A-5469-RGB,B-6052-RGB;n:type:ShaderForge.SFN_Multiply,id:1446,x:33251,y:32552,varname:node_1446,prsc:2|A-7112-OUT,B-1499-OUT;n:type:ShaderForge.SFN_Clamp01,id:3740,x:31489,y:32786,varname:node_3740,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Multiply,id:6603,x:32852,y:33509,cmnt:环境光强度,varname:node_6603,prsc:2|A-1037-OUT,B-1292-OUT;n:type:ShaderForge.SFN_Slider,id:1292,x:32531,y:33717,ptovrint:False,ptlb:EnvInt,ptin:_EnvInt,varname:node_1292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:8880,x:33038,y:33509,cmnt:3Col Env Diffuse,varname:node_8880,prsc:2|A-1018-OUT,B-6603-OUT;n:type:ShaderForge.SFN_Multiply,id:2736,x:32306,y:34049,varname:node_2736,prsc:2|A-4640-OUT,B-7098-RGB;n:type:ShaderForge.SFN_Slider,id:8171,x:32241,y:34293,ptovrint:False,ptlb:EnvSpecInt,ptin:_EnvSpecInt,varname:node_8171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:1631,x:33005,y:34087,cmnt:Cubemap Env Spec,varname:node_1631,prsc:2|A-2736-OUT,B-8171-OUT;n:type:ShaderForge.SFN_Add,id:5299,x:33401,y:33490,varname:node_5299,prsc:2|A-8880-OUT,B-1631-OUT;proporder:5469-6052-3251-1554-8016-7635-3907-9610-6963-1292-6069-7098-4406-8171;pass:END;sub:END;*/

Shader "Daachun/L10_OldSchoolPro_SF" {
    Properties {
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _NormalMap ("NormalMap", 2D) = "bump" {}
        _Occolusion ("Occolusion", 2D) = "white" {}
        _SepculurPower ("SepculurPower", Range(1, 90)) = 30
        _LightColor ("LightColor", Color) = (1,1,1,1)
        _EnvUpCol ("EnvUpCol", Color) = (1,1,1,1)
        _EnvSideCol ("EnvSideCol", Color) = (0.5,0.5,0.5,1)
        _EnvDownCol ("EnvDownCol", Color) = (0,0,0,1)
        _EnvInt ("EnvInt", Range(0, 1)) = 0.1
        _FresnelPow ("FresnelPow", Range(0, 10)) = 1
        _CubeMap ("CubeMap", Cube) = "_Skybox" {}
        _CubeMapMip ("CubeMapMip", Range(0, 7)) = 0
        _EnvSpecInt ("EnvSpecInt", Range(0, 1)) = 0.1
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Occolusion; uniform float4 _Occolusion_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform samplerCUBE _CubeMap;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvUpCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvDownCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvSideCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _SepculurPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _CubeMapMip)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelPow)
                UNITY_DEFINE_INSTANCED_PROP( float, _EnvInt)
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
                LIGHTING_COORDS(5,6)
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
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _LightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColor );
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap))); // nDirTS
                float3 node_366 = mul( _NormalMap_var.rgb, tangentTransform ).xyz; // nDirWS
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_1018 = (_MainColor_var.rgb*_MainTex_var.rgb);
                float _SepculurPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SepculurPower );
                float4 _EnvUpCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvUpCol ); // 上部环境光颜色
                float node_5973 = node_366.rgb.g;
                float node_3969 = 0.0;
                float node_8182 = max(node_5973,node_3969); // 上部遮罩
                float node_6522 = max((node_5973*(-1.0)),node_3969); // 下部遮罩
                float4 _EnvSideCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvSideCol ); // 侧面环境光颜色
                float4 _EnvDownCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvDownCol ); // 下部环境光颜色
                float _EnvInt_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvInt );
                float _FresnelPow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelPow );
                float _CubeMapMip_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CubeMapMip );
                float _EnvSpecInt_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvSpecInt );
                float4 _Occolusion_var = tex2D(_Occolusion,TRANSFORM_TEX(i.uv0, _Occolusion));
                float3 emissive = ((attenuation*(_LightColor_var.rgb*((saturate(dot(lightDirection,node_366.rgb))*node_1018)+pow(saturate(dot(reflect((lightDirection*(-1.0)),node_366.rgb),viewDirection)),_SepculurPower_var))))+(((node_1018*(((_EnvUpCol_var.rgb*node_8182)+(((1.0 - node_8182)-node_6522)*_EnvSideCol_var.rgb)+(node_6522*_EnvDownCol_var.rgb))*_EnvInt_var))+((pow(1.0-max(0,dot(node_366.rgb, viewDirection)),_FresnelPow_var)*texCUBElod(_CubeMap,float4(reflect((viewDirection*(-1.0)),node_366.rgb),_CubeMapMip_var)).rgb)*_EnvSpecInt_var))*_Occolusion_var.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
