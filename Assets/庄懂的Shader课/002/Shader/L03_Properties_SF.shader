// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6220,x:33186,y:32787,varname:node_6220,prsc:2|emission-546-OUT;n:type:ShaderForge.SFN_Tex2d,id:8684,x:32459,y:33098,ptovrint:False,ptlb:OneTexture：一个贴图,ptin:_OneTexture,cmnt:贴图采样,varname:node_8684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5a296b6d09babdd40b2b76ca29a97179,ntxv:0,isnm:False|UVIN-2819-UVOUT;n:type:ShaderForge.SFN_Vector4Property,id:8534,x:31949,y:32477,ptovrint:False,ptlb:lightDir：伪造光方向,ptin:_lightDir,varname:node_8534,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:1;n:type:ShaderForge.SFN_Normalize,id:2218,x:32124,y:32477,varname:node_2218,prsc:2|IN-8534-XYZ;n:type:ShaderForge.SFN_Dot,id:599,x:32292,y:32546,varname:node_599,prsc:2,dt:0|A-2218-OUT,B-7846-OUT;n:type:ShaderForge.SFN_NormalVector,id:7846,x:32096,y:32650,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRange,id:6885,x:32461,y:32546,cmnt:HalfLambert,varname:node_6885,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-599-OUT;n:type:ShaderForge.SFN_Multiply,id:181,x:32280,y:32791,varname:node_181,prsc:2|A-6885-OUT,B-7434-RGB;n:type:ShaderForge.SFN_Slider,id:9477,x:32134,y:33010,ptovrint:False,ptlb:lightSlider：伪造光强度,ptin:_lightSlider,varname:node_9477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:9502,x:32459,y:32863,varname:node_9502,prsc:2|A-181-OUT,B-9477-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:546,x:32946,y:33038,ptovrint:False,ptlb:ligthSwitch：伪造光开关,ptin:_ligthSwitch,varname:node_546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-8684-RGB,B-1784-OUT;n:type:ShaderForge.SFN_TexCoord,id:2819,x:32291,y:33098,cmnt:读取UV1,varname:node_2819,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1784,x:32744,y:32932,varname:node_1784,prsc:2|A-9502-OUT,B-8684-RGB;n:type:ShaderForge.SFN_Color,id:7434,x:32063,y:32834,ptovrint:False,ptlb:lightColor：伪造光颜色,ptin:_lightColor,varname:node_7434,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:8684-546-8534-9477-7434;pass:END;sub:END;*/

Shader "Daachun/L03/Properties_SF" {
    Properties {
        _OneTexture ("OneTexture：一个贴图", 2D) = "white" {}
        [MaterialToggle] _ligthSwitch ("ligthSwitch：伪造光开关", Float ) = 0
        _lightDir ("lightDir：伪造光方向", Vector) = (0,1,0,1)
        _lightSlider ("lightSlider：伪造光强度", Range(0, 2)) = 1
        _lightColor ("lightColor：伪造光颜色", Color) = (0.5,0.5,0.5,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _OneTexture; uniform float4 _OneTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _lightDir)
                UNITY_DEFINE_INSTANCED_PROP( float, _lightSlider)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ligthSwitch)
                UNITY_DEFINE_INSTANCED_PROP( float4, _lightColor)
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
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _OneTexture_var = tex2D(_OneTexture,TRANSFORM_TEX(i.uv0, _OneTexture)); // 贴图采样
                float4 _lightDir_var = UNITY_ACCESS_INSTANCED_PROP( Props, _lightDir );
                float4 _lightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _lightColor );
                float _lightSlider_var = UNITY_ACCESS_INSTANCED_PROP( Props, _lightSlider );
                float3 _ligthSwitch_var = lerp( _OneTexture_var.rgb, ((((dot(normalize(_lightDir_var.rgb),i.normalDir)*0.5+0.5)*_lightColor_var.rgb)*_lightSlider_var)*_OneTexture_var.rgb), UNITY_ACCESS_INSTANCED_PROP( Props, _ligthSwitch ) );
                float3 emissive = _ligthSwitch_var;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
