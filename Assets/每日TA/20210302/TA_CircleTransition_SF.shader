// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:1,cusa:True,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:True,atwp:True,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1873,x:33624,y:32573,varname:node_1873,prsc:2|emission-7018-OUT,alpha-603-OUT;n:type:ShaderForge.SFN_Tex2d,id:4805,x:32210,y:32578,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:True,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1086,x:32472,y:32663,cmnt:RGB,varname:node_1086,prsc:2|A-4805-RGB,B-5983-RGB,C-5376-RGB;n:type:ShaderForge.SFN_Color,id:5983,x:32210,y:32764,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_VertexColor,id:5376,x:32210,y:32928,varname:node_5376,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1749,x:32857,y:32661,cmnt:Premultiply Alpha,varname:node_1749,prsc:2|A-1086-OUT,B-603-OUT;n:type:ShaderForge.SFN_Multiply,id:603,x:32627,y:32832,cmnt:A,varname:node_603,prsc:2|A-4805-A,B-5983-A,C-5376-A,D-3616-OUT;n:type:ShaderForge.SFN_Slider,id:5595,x:32329,y:33838,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:node_5595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3090491,max:1;n:type:ShaderForge.SFN_ScreenPos,id:6827,x:32281,y:33241,varname:node_6827,prsc:2,sctp:0;n:type:ShaderForge.SFN_Distance,id:9650,x:32911,y:33374,varname:node_9650,prsc:2|A-6577-OUT,B-2226-OUT;n:type:ShaderForge.SFN_Step,id:3616,x:33095,y:33374,varname:node_3616,prsc:2|A-6661-OUT,B-9650-OUT;n:type:ShaderForge.SFN_ScreenParameters,id:1845,x:32281,y:33396,varname:node_1845,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8447,x:32486,y:33241,varname:node_8447,prsc:2|A-6827-U,B-1845-PXW;n:type:ShaderForge.SFN_Multiply,id:9731,x:32486,y:33374,varname:node_9731,prsc:2|A-6827-V,B-1845-PXH;n:type:ShaderForge.SFN_Append,id:6577,x:32730,y:33241,varname:node_6577,prsc:2|A-8447-OUT,B-9731-OUT;n:type:ShaderForge.SFN_Multiply,id:6661,x:32911,y:33523,varname:node_6661,prsc:2|A-6102-OUT,B-6813-OUT;n:type:ShaderForge.SFN_Max,id:6102,x:32730,y:33523,varname:node_6102,prsc:2|A-1845-PXW,B-1845-PXH;n:type:ShaderForge.SFN_Multiply,id:9905,x:32486,y:33523,varname:node_9905,prsc:2|A-1845-PXW,B-9387-OUT;n:type:ShaderForge.SFN_Slider,id:9387,x:32124,y:33546,ptovrint:False,ptlb:PosX,ptin:_PosX,varname:node_9387,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.5057272,max:1;n:type:ShaderForge.SFN_Multiply,id:4658,x:32486,y:33666,varname:node_4658,prsc:2|A-1845-PXH,B-9093-OUT;n:type:ShaderForge.SFN_Slider,id:9093,x:32124,y:33668,ptovrint:False,ptlb:PosY,ptin:_PosY,varname:_PosX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.4697353,max:1;n:type:ShaderForge.SFN_Append,id:2226,x:32730,y:33374,varname:node_2226,prsc:2|A-9905-OUT,B-4658-OUT;n:type:ShaderForge.SFN_RemapRange,id:6813,x:32730,y:33666,varname:node_6813,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1.5|IN-5595-OUT;n:type:ShaderForge.SFN_Color,id:7843,x:28822,y:32980,ptovrint:False,ptlb:node_7843,ptin:_node_7843,varname:node_7843,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:8874,x:32830,y:32894,ptovrint:False,ptlb:MaskColor,ptin:_MaskColor,varname:node_8874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.05660379,c2:0.05660379,c3:0.05660379,c4:1;n:type:ShaderForge.SFN_Add,id:7018,x:33186,y:32664,varname:node_7018,prsc:2|A-1749-OUT,B-5949-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5949,x:33019,y:32986,ptovrint:False,ptlb:UseTexture,ptin:_UseTexture,varname:node_5949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8874-RGB,B-532-RGB;n:type:ShaderForge.SFN_Tex2d,id:532,x:32830,y:33066,ptovrint:False,ptlb:MaskTexture,ptin:_MaskTexture,varname:node_532,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4615-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:4615,x:32627,y:33066,varname:node_4615,prsc:2,sctp:1;proporder:4805-5983-5595-9387-9093-8874-5949-532;pass:END;sub:END;*/

Shader "Shader Forge/TA_CircleTransition_SF" {
    Properties {
        [PerRendererData]_MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _Radius ("Radius", Range(0, 1)) = 0.3090491
        _PosX ("PosX", Range(-1, 1)) = 0.5057272
        _PosY ("PosY", Range(-1, 1)) = 0.4697353
        _MaskColor ("MaskColor", Color) = (0.05660379,0.05660379,0.05660379,1)
        [MaterialToggle] _UseTexture ("UseTexture", Float ) = 0.05660379
        _MaskTexture ("MaskTexture", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
        _Stencil ("Stencil ID", Float) = 0
        _StencilReadMask ("Stencil Read Mask", Float) = 255
        _StencilWriteMask ("Stencil Write Mask", Float) = 255
        _StencilComp ("Stencil Comparison", Float) = 8
        _StencilOp ("Stencil Operation", Float) = 0
        _StencilOpFail ("Stencil Fail Operation", Float) = 0
        _StencilOpZFail ("Stencil Z-Fail Operation", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "CanUseSpriteAtlas"="True"
            "PreviewType"="Plane"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            Stencil {
                Ref [_Stencil]
                ReadMask [_StencilReadMask]
                WriteMask [_StencilWriteMask]
                Comp [_StencilComp]
                Pass [_StencilOp]
                Fail [_StencilOpFail]
                ZFail [_StencilOpZFail]
            }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MaskTexture; uniform float4 _MaskTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Radius)
                UNITY_DEFINE_INSTANCED_PROP( float, _PosX)
                UNITY_DEFINE_INSTANCED_PROP( float, _PosY)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MaskColor)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseTexture)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _Radius_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Radius );
                float _PosX_var = UNITY_ACCESS_INSTANCED_PROP( Props, _PosX );
                float _PosY_var = UNITY_ACCESS_INSTANCED_PROP( Props, _PosY );
                float node_603 = (_MainTex_var.a*_Color_var.a*i.vertexColor.a*step((max(_ScreenParams.r,_ScreenParams.g)*(_Radius_var*1.5+0.0)),distance(float2(((sceneUVs * 2 - 1).r*_ScreenParams.r),((sceneUVs * 2 - 1).g*_ScreenParams.g)),float2((_ScreenParams.r*_PosX_var),(_ScreenParams.g*_PosY_var))))); // A
                float4 _MaskColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MaskColor );
                float4 _MaskTexture_var = tex2D(_MaskTexture,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _MaskTexture));
                float3 _UseTexture_var = lerp( _MaskColor_var.rgb, _MaskTexture_var.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _UseTexture ) );
                float3 emissive = (((_MainTex_var.rgb*_Color_var.rgb*i.vertexColor.rgb)*node_603)+_UseTexture_var);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_603);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
