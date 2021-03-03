// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33608,y:32780,varname:node_3138,prsc:2|emission-1200-OUT;n:type:ShaderForge.SFN_NormalVector,id:7067,x:32041,y:32179,prsc:2,pt:False;n:type:ShaderForge.SFN_LightAttenuation,id:7112,x:32934,y:32257,cmnt:投影,varname:node_7112,prsc:2;n:type:ShaderForge.SFN_LightVector,id:8540,x:32040,y:32032,varname:node_8540,prsc:2;n:type:ShaderForge.SFN_Dot,id:1098,x:32214,y:32124,varname:node_1098,prsc:2,dt:0|A-8540-OUT,B-7067-OUT;n:type:ShaderForge.SFN_Multiply,id:1193,x:32709,y:32124,varname:node_1193,prsc:2|A-5940-OUT,B-5469-RGB;n:type:ShaderForge.SFN_Color,id:5469,x:32527,y:32228,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_5469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_NormalVector,id:1477,x:31851,y:33335,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:5973,x:32024,y:33335,varname:node_5973,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-1477-OUT;n:type:ShaderForge.SFN_Max,id:8182,x:32235,y:33335,cmnt:上部遮罩,varname:node_8182,prsc:2|A-5973-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Vector1,id:3969,x:32024,y:33484,varname:node_3969,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:6522,x:32404,y:33484,cmnt:下部遮罩,varname:node_6522,prsc:2|A-4023-OUT,B-3969-OUT;n:type:ShaderForge.SFN_Multiply,id:4023,x:32235,y:33484,varname:node_4023,prsc:2|A-5973-OUT,B-2259-OUT;n:type:ShaderForge.SFN_Vector1,id:2259,x:32024,y:33545,varname:node_2259,prsc:2,v1:-1;n:type:ShaderForge.SFN_OneMinus,id:8391,x:32404,y:33335,varname:node_8391,prsc:2|IN-8182-OUT;n:type:ShaderForge.SFN_Subtract,id:3411,x:32584,y:33335,cmnt:侧面遮罩,varname:node_3411,prsc:2|A-8391-OUT,B-6522-OUT;n:type:ShaderForge.SFN_Color,id:3907,x:32235,y:33143,ptovrint:False,ptlb:EnvUpCol,ptin:_EnvUpCol,varname:node_3907,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6963,x:32404,y:33652,ptovrint:False,ptlb:EnvDownCol,ptin:_EnvDownCol,varname:_EnvUpCol_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:9610,x:32584,y:33484,ptovrint:False,ptlb:EnvSideCol,ptin:_EnvSideCol,varname:_EnvUpCol_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:665,x:32404,y:33143,varname:node_665,prsc:2|A-3907-RGB,B-8182-OUT;n:type:ShaderForge.SFN_Add,id:1037,x:32973,y:33313,cmnt:三部分颜色环境光遮罩,varname:node_1037,prsc:2|A-665-OUT,B-1492-OUT,C-8969-OUT;n:type:ShaderForge.SFN_Multiply,id:1492,x:32745,y:33335,varname:node_1492,prsc:2|A-3411-OUT,B-9610-RGB;n:type:ShaderForge.SFN_Multiply,id:8969,x:32584,y:33633,varname:node_8969,prsc:2|A-6522-OUT,B-6963-RGB;n:type:ShaderForge.SFN_Tex2d,id:1554,x:32973,y:33512,ptovrint:False,ptlb:Occolusion,ptin:_Occolusion,varname:node_1554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7444,x:33171,y:33418,varname:node_7444,prsc:2|A-1037-OUT,B-1554-RGB,C-5469-RGB;n:type:ShaderForge.SFN_Add,id:1200,x:33402,y:32890,varname:node_1200,prsc:2|A-1499-OUT,B-7444-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:7055,x:32108,y:32590,varname:node_7055,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6473,x:32108,y:32762,varname:node_6473,prsc:2;n:type:ShaderForge.SFN_Dot,id:1889,x:32311,y:32674,varname:node_1889,prsc:2,dt:0|A-7055-OUT,B-6473-OUT;n:type:ShaderForge.SFN_Max,id:5684,x:32483,y:32684,varname:node_5684,prsc:2|A-1889-OUT,B-9902-OUT;n:type:ShaderForge.SFN_Vector1,id:9902,x:32311,y:32832,varname:node_9902,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:8016,x:32300,y:32923,ptovrint:False,ptlb:SepculurPower,ptin:_SepculurPower,varname:node_8016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:30,max:90;n:type:ShaderForge.SFN_Power,id:8626,x:32670,y:32684,cmnt:phong specular,varname:node_8626,prsc:2|VAL-5684-OUT,EXP-8016-OUT;n:type:ShaderForge.SFN_Add,id:9954,x:32934,y:32417,varname:node_9954,prsc:2|A-1193-OUT,B-8626-OUT;n:type:ShaderForge.SFN_Color,id:7635,x:32934,y:32572,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_7635,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:5940,x:32395,y:32124,varname:node_5940,prsc:2|IN-1098-OUT;n:type:ShaderForge.SFN_Multiply,id:1499,x:33230,y:32464,varname:node_1499,prsc:2|A-7112-OUT,B-9954-OUT,C-7635-RGB;proporder:5469-3907-9610-6963-1554-8016-7635;pass:END;sub:END;*/

Shader "Daachun/L07_OldSchoolPlus_SF" {
    Properties {
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _EnvUpCol ("EnvUpCol", Color) = (1,1,1,1)
        _EnvSideCol ("EnvSideCol", Color) = (0.5,0.5,0.5,1)
        _EnvDownCol ("EnvDownCol", Color) = (0,0,0,1)
        _Occolusion ("Occolusion", 2D) = "white" {}
        _SepculurPower ("SepculurPower", Range(1, 90)) = 30
        _LightColor ("LightColor", Color) = (1,1,1,1)
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
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvUpCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvDownCol)
                UNITY_DEFINE_INSTANCED_PROP( float4, _EnvSideCol)
                UNITY_DEFINE_INSTANCED_PROP( float, _SepculurPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightColor)
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _MainColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainColor );
                float _SepculurPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SepculurPower );
                float4 _LightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightColor );
                float4 _EnvUpCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvUpCol );
                float node_5973 = i.normalDir.g;
                float node_3969 = 0.0;
                float node_8182 = max(node_5973,node_3969); // 上部遮罩
                float node_6522 = max((node_5973*(-1.0)),node_3969); // 下部遮罩
                float4 _EnvSideCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvSideCol );
                float4 _EnvDownCol_var = UNITY_ACCESS_INSTANCED_PROP( Props, _EnvDownCol );
                float4 _Occolusion_var = tex2D(_Occolusion,TRANSFORM_TEX(i.uv0, _Occolusion));
                float3 emissive = ((attenuation*((saturate(dot(lightDirection,i.normalDir))*_MainColor_var.rgb)+pow(max(dot(viewReflectDirection,lightDirection),0.0),_SepculurPower_var))*_LightColor_var.rgb)+(((_EnvUpCol_var.rgb*node_8182)+(((1.0 - node_8182)-node_6522)*_EnvSideCol_var.rgb)+(node_6522*_EnvDownCol_var.rgb))*_Occolusion_var.rgb*_MainColor_var.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
