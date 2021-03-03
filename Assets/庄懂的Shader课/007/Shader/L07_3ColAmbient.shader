Shader "Daachun/L07_3ColAmbient"
{
    Properties
    {
        _Occlusion ("环境遮挡图", 2D) = "white" {}
        _EnvUpCol("朝上环境色",color) = (1.0,1.0,1.0,1.0)
        _EnvSideCol("侧面环境色",color) = (0.5,0.5,0.5,1.0)
        _EnvDownCol("朝下环境色",color) = (0.0,0.0,0.0,1.0)

    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float4 normal : NORMAL;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
                float3 nDirWS : TEXCOORD1;
            };

            uniform sampler2D _Occlusion;
            uniform float3 _EnvUpCol;
            uniform float3 _EnvSideCol;
            uniform float3 _EnvDownCol;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                o.nDirWS = UnityObjectToWorldNormal(v.normal);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float3 nDir = i.nDirWS;
                float upMask = max(0.0,nDir.y);
                float downMask = max(0.0,-nDir.y);
                float sideMask = 1.0 - upMask - downMask;
                float3 envCol = _EnvUpCol * upMask + _EnvSideCol * sideMask + _EnvDownCol * downMask;
                float occlusion = tex2D(_Occlusion, i.uv);  // tex2D采样，第一个参数是图，第二个参数是uv
                float3 envLighting = envCol * occlusion;
                return float4(envLighting,1.0);
            }
            ENDCG
        }
    }
}
