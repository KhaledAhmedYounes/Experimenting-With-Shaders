// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34437,y:32833,varname:node_9361,prsc:2|custl-2876-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2005,x:32553,y:32556,varname:node_2005,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:2256,x:33279,y:33199,varname:node_2256,prsc:2|UVIN-2168-OUT;n:type:ShaderForge.SFN_Set,id:4063,x:32793,y:32498,varname:__screenPos,prsc:2|IN-2005-UVOUT;n:type:ShaderForge.SFN_Get,id:4682,x:32601,y:34151,varname:node_4682,prsc:2|IN-4063-OUT;n:type:ShaderForge.SFN_Slider,id:2010,x:32456,y:32733,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_2010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:0.05;n:type:ShaderForge.SFN_Set,id:2006,x:32793,y:32718,varname:__offset,prsc:2|IN-2010-OUT;n:type:ShaderForge.SFN_Get,id:8232,x:32591,y:34218,varname:node_8232,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:2828,x:32816,y:34151,varname:node_2828,prsc:2|A-4682-OUT,B-8232-OUT;n:type:ShaderForge.SFN_Set,id:1889,x:32823,y:32549,varname:__screenPosU,prsc:2|IN-2005-U;n:type:ShaderForge.SFN_Set,id:289,x:32840,y:32611,varname:__screenPosV,prsc:2|IN-2005-V;n:type:ShaderForge.SFN_Get,id:264,x:32547,y:33108,varname:node_264,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Get,id:9756,x:32562,y:33160,varname:node_9756,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:6262,x:32854,y:33097,varname:node_6262,prsc:2|A-264-OUT,B-9756-OUT;n:type:ShaderForge.SFN_Append,id:1960,x:33053,y:33071,varname:node_1960,prsc:2|A-6262-OUT,B-1489-OUT;n:type:ShaderForge.SFN_Get,id:1489,x:32833,y:33033,varname:node_1489,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:6917,x:32629,y:33367,varname:node_6917,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Get,id:37,x:32629,y:33423,varname:node_37,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Add,id:6516,x:32842,y:33367,varname:node_6516,prsc:2|A-6917-OUT,B-37-OUT;n:type:ShaderForge.SFN_Append,id:2168,x:33036,y:33345,varname:node_2168,prsc:2|A-3524-OUT,B-6516-OUT;n:type:ShaderForge.SFN_Get,id:3524,x:32821,y:33306,varname:node_3524,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_SceneColor,id:4246,x:33269,y:33012,varname:node_4246,prsc:2|UVIN-1960-OUT;n:type:ShaderForge.SFN_Add,id:9163,x:33614,y:33025,varname:node_9163,prsc:2|A-606-RGB,B-4246-RGB,C-2256-RGB,D-1620-RGB,E-3229-RGB;n:type:ShaderForge.SFN_Divide,id:2876,x:34183,y:33029,varname:node_2876,prsc:2|A-7870-OUT,B-8795-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8795,x:33903,y:33214,ptovrint:False,ptlb:DivideBy,ptin:_DivideBy,varname:node_8795,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:9;n:type:ShaderForge.SFN_SceneColor,id:606,x:33222,y:32815,varname:node_606,prsc:2|UVIN-5283-OUT;n:type:ShaderForge.SFN_Get,id:5283,x:32960,y:32815,varname:node_5283,prsc:2|IN-4063-OUT;n:type:ShaderForge.SFN_SceneColor,id:1620,x:33137,y:33551,varname:node_1620,prsc:2|UVIN-1601-OUT;n:type:ShaderForge.SFN_Get,id:467,x:32469,y:33835,varname:node_467,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Get,id:6108,x:32469,y:33906,varname:node_6108,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Append,id:6755,x:32879,y:33835,varname:node_6755,prsc:2|A-6948-OUT,B-5305-OUT;n:type:ShaderForge.SFN_Get,id:5305,x:32669,y:33822,varname:node_5305,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:9096,x:32486,y:33629,varname:node_9096,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:7953,x:32501,y:33694,varname:node_7953,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Append,id:1601,x:32908,y:33551,varname:node_1601,prsc:2|A-3498-OUT,B-5628-OUT;n:type:ShaderForge.SFN_Get,id:3498,x:32705,y:33551,varname:node_3498,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_SceneColor,id:3229,x:33084,y:33835,varname:node_3229,prsc:2|UVIN-6755-OUT;n:type:ShaderForge.SFN_Subtract,id:6948,x:32669,y:33870,varname:node_6948,prsc:2|A-467-OUT,B-6108-OUT;n:type:ShaderForge.SFN_Subtract,id:5628,x:32726,y:33629,varname:node_5628,prsc:2|A-9096-OUT,B-7953-OUT;n:type:ShaderForge.SFN_SceneColor,id:8118,x:33000,y:34151,varname:node_8118,prsc:2|UVIN-2828-OUT;n:type:ShaderForge.SFN_Add,id:1131,x:33669,y:33398,varname:node_1131,prsc:2|A-8118-RGB,B-5123-RGB,C-2151-RGB,D-2490-RGB;n:type:ShaderForge.SFN_Subtract,id:8471,x:32834,y:34314,varname:node_8471,prsc:2|A-4682-OUT,B-8232-OUT;n:type:ShaderForge.SFN_SceneColor,id:5123,x:33088,y:34314,varname:node_5123,prsc:2|UVIN-8471-OUT;n:type:ShaderForge.SFN_Get,id:2822,x:32672,y:34564,varname:node_2822,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Get,id:1141,x:32681,y:34705,varname:node_1141,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Add,id:6908,x:32908,y:34564,varname:node_6908,prsc:2|A-2822-OUT,B-3429-OUT;n:type:ShaderForge.SFN_Subtract,id:481,x:32895,y:34705,varname:node_481,prsc:2|A-1141-OUT,B-3429-OUT;n:type:ShaderForge.SFN_Get,id:3429,x:32672,y:34630,varname:node_3429,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Append,id:8562,x:33108,y:34601,varname:node_8562,prsc:2|A-6908-OUT,B-481-OUT;n:type:ShaderForge.SFN_SceneColor,id:2151,x:33267,y:34601,varname:node_2151,prsc:2|UVIN-8562-OUT;n:type:ShaderForge.SFN_Get,id:36,x:32633,y:34909,varname:node_36,prsc:2|IN-289-OUT;n:type:ShaderForge.SFN_Get,id:3116,x:32642,y:35050,varname:node_3116,prsc:2|IN-1889-OUT;n:type:ShaderForge.SFN_Add,id:4358,x:32869,y:34909,varname:node_4358,prsc:2|A-36-OUT,B-6829-OUT;n:type:ShaderForge.SFN_Subtract,id:9655,x:32856,y:35050,varname:node_9655,prsc:2|A-3116-OUT,B-6829-OUT;n:type:ShaderForge.SFN_Get,id:6829,x:32633,y:34975,varname:node_6829,prsc:2|IN-2006-OUT;n:type:ShaderForge.SFN_Append,id:4148,x:33069,y:34946,varname:node_4148,prsc:2|A-9655-OUT,B-4358-OUT;n:type:ShaderForge.SFN_SceneColor,id:2490,x:33280,y:34946,varname:node_2490,prsc:2|UVIN-4148-OUT;n:type:ShaderForge.SFN_Add,id:7870,x:33864,y:33065,varname:node_7870,prsc:2|A-9163-OUT,B-1131-OUT;proporder:2010-8795;pass:END;sub:END;*/

Shader "Shader Forge/BlurShader" {
    Properties {
        _Offset ("Offset", Range(0, 0.05)) = 0.05
        _DivideBy ("DivideBy", Float ) = 9
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
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Offset;
            uniform float _DivideBy;
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
                float2 __screenPos = sceneUVs.rg;
                float __screenPosU = sceneUVs.r;
                float __offset = _Offset;
                float __screenPosV = sceneUVs.g;
                float2 node_4682 = __screenPos;
                float node_8232 = __offset;
                float node_3429 = __offset;
                float node_6829 = __offset;
                float3 finalColor = (((tex2D( _GrabTexture, __screenPos).rgb+tex2D( _GrabTexture, float2((__screenPosU+__offset),__screenPosV)).rgb+tex2D( _GrabTexture, float2(__screenPosV,(__screenPosU+__offset))).rgb+tex2D( _GrabTexture, float2(__screenPosU,(__screenPosV-__offset))).rgb+tex2D( _GrabTexture, float2((__screenPosU-__offset),__screenPosV)).rgb)+(tex2D( _GrabTexture, (node_4682+node_8232)).rgb+tex2D( _GrabTexture, (node_4682-node_8232)).rgb+tex2D( _GrabTexture, float2((__screenPosU+node_3429),(__screenPosV-node_3429))).rgb+tex2D( _GrabTexture, float2((__screenPosU-node_6829),(__screenPosV+node_6829))).rgb))/_DivideBy);
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
