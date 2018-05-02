// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33804,y:32806,varname:node_9361,prsc:2|custl-9163-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2005,x:32553,y:32556,varname:node_2005,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:2256,x:33279,y:33199,varname:node_2256,prsc:2|UVIN-2168-OUT;n:type:ShaderForge.SFN_Set,id:4063,x:32793,y:32498,varname:__screenPos,prsc:2|IN-2005-UVOUT;n:type:ShaderForge.SFN_Get,id:4682,x:32518,y:32859,varname:node_4682,prsc:2|IN-4063-OUT;n:type:ShaderForge.SFN_Slider,id:2010,x:32456,y:32733,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_2010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.05;n:type:ShaderForge.SFN_Set,id:2006,x:32793,y:32718,varname:__offset,prsc:2|IN-2010-OUT;n:type:ShaderForge.SFN_Get,id:8232,x:32505,y:32917,varname:node_8232,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:2828,x:32740,y:32839,varname:node_2828,prsc:2|A-4682-OUT,B-8232-OUT;n:type:ShaderForge.SFN_Set,id:1889,x:32823,y:32549,varname:__screenPosU,prsc:2|IN-2005-U;n:type:ShaderForge.SFN_Set,id:289,x:32840,y:32611,varname:__screenPosV,prsc:2|IN-2005-V;n:type:ShaderForge.SFN_Get,id:264,x:32632,y:33117,varname:node_264,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Get,id:9756,x:32619,y:33175,varname:node_9756,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:6262,x:32854,y:33097,varname:node_6262,prsc:2|A-264-OUT,B-9756-OUT;n:type:ShaderForge.SFN_Append,id:1960,x:33053,y:33071,varname:node_1960,prsc:2|A-6262-OUT,B-1489-OUT;n:type:ShaderForge.SFN_Get,id:1489,x:32833,y:33239,varname:node_1489,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:6917,x:32629,y:33367,varname:node_6917,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:37,x:32629,y:33423,varname:node_37,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:6516,x:32854,y:33423,varname:node_6516,prsc:2|A-6917-OUT,B-37-OUT;n:type:ShaderForge.SFN_Append,id:2168,x:33036,y:33345,varname:node_2168,prsc:2|A-3524-OUT,B-6516-OUT;n:type:ShaderForge.SFN_Get,id:3524,x:32833,y:33345,varname:node_3524,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_SceneColor,id:4246,x:33269,y:33012,varname:node_4246,prsc:2|UVIN-1960-OUT;n:type:ShaderForge.SFN_Add,id:9163,x:33493,y:32993,varname:node_9163,prsc:2|A-4246-RGB,B-2256-RGB;proporder:2010;pass:END;sub:END;*/

Shader "Shader Forge/BlurShaderSalah" {
    Properties {
        _Offset ("Offset", Range(0, 0.02)) = 0
        _SigmaSq ("SigmaSq", Range(0.01, 10)) = 2
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform float _Offset;
			uniform float _SigmaSq;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 projPos : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float __screenPosU = sceneUVs.r;
                float __offset = _Offset;
                float __screenPosV = sceneUVs.g;
				float pi=3.1415926535897932384626433832795;
				pi=pi*pi;

			float div= 1/(2*pi*_SigmaSq);
			float x11=div*exp(-(4+4.0f)/(2*pi*_SigmaSq)), x12=div*exp(-(1+4.0f)/(2*pi*_SigmaSq)),x13=div*exp(-(4.0f)/(2*pi*_SigmaSq)),x14=x12,x15=x11,
				  x21=x12, x22=div*exp(-(1+1.0f)/(2*pi*_SigmaSq)),x23=div*exp(-(1.0f)/(2*pi*_SigmaSq)),	x24=x22, x25=x21,
				  x31=x13, x32=x23,	x33=div, x34=x32, x35=x31,
				  x41=x14, x42=x24, x43=x34, x44=x42, x45=x41,
				  x51=x15, x52=x25, x53=x35 , x54=x45,	x55=x51;


                float3 finalColor = 
					  tex2D( _GrabTexture, float2(__screenPosU -2*_Offset,__screenPosV-2*_Offset)).rgb*x11
					+ tex2D( _GrabTexture, float2(__screenPosU -1*_Offset,__screenPosV-2*_Offset)).rgb*x12
					+ tex2D( _GrabTexture, float2(__screenPosU ,__screenPosV-2*_Offset)).rgb  *x13
					+ tex2D( _GrabTexture, float2(__screenPosU +1*_Offset,__screenPosV-2*_Offset)).rgb*x14
					+ tex2D( _GrabTexture, float2(__screenPosU +2*_Offset,__screenPosV-2*_Offset)).rgb*x15
					+ tex2D( _GrabTexture, float2(__screenPosU -2*_Offset,__screenPosV-1*_Offset)).rgb*x21
					+ tex2D( _GrabTexture, float2(__screenPosU -1*_Offset,__screenPosV-1*_Offset)).rgb*x22
					+ tex2D( _GrabTexture, float2(__screenPosU ,__screenPosV-1*_Offset)).rgb  *x23
					+ tex2D( _GrabTexture, float2(__screenPosU +1*_Offset,__screenPosV-1*_Offset)).rgb*x24
					+ tex2D( _GrabTexture, float2(__screenPosU +2*_Offset,__screenPosV-1*_Offset)).rgb*x25
					+ tex2D( _GrabTexture, float2(__screenPosU -2*_Offset,__screenPosV)).rgb  *x31
					+ tex2D( _GrabTexture, float2(__screenPosU -1*_Offset,__screenPosV)).rgb  *x32
					+ tex2D( _GrabTexture, float2(__screenPosU ,__screenPosV)).rgb    *x33
					+ tex2D( _GrabTexture, float2(__screenPosU +1*_Offset,__screenPosV)).rgb  *x34
					+ tex2D( _GrabTexture, float2(__screenPosU +2*_Offset,__screenPosV)).rgb  *x35
					+ tex2D( _GrabTexture, float2(__screenPosU -2*_Offset,__screenPosV+1*_Offset)).rgb*x41
					+ tex2D( _GrabTexture, float2(__screenPosU -1*_Offset,__screenPosV+1*_Offset)).rgb*x42
					+ tex2D( _GrabTexture, float2(__screenPosU ,__screenPosV+1*_Offset)).rgb  *x43
					+ tex2D( _GrabTexture, float2(__screenPosU +1*_Offset,__screenPosV+1*_Offset)).rgb*x44
					+ tex2D( _GrabTexture, float2(__screenPosU +2*_Offset,__screenPosV+1*_Offset)).rgb*x45
					+ tex2D( _GrabTexture, float2(__screenPosU -2*_Offset,__screenPosV+2*_Offset)).rgb*x51
					+ tex2D( _GrabTexture, float2(__screenPosU -1*_Offset,__screenPosV+2*_Offset)).rgb*x52
					+ tex2D( _GrabTexture, float2(__screenPosU ,__screenPosV+2*_Offset)).rgb  *x53
					+ tex2D( _GrabTexture, float2(__screenPosU +1*_Offset,__screenPosV+2*_Offset)).rgb*x54
					+ tex2D( _GrabTexture, float2(__screenPosU +2*_Offset,__screenPosV+2*_Offset)).rgb*x55;


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
