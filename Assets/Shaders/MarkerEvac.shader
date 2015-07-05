Shader "DropZone/MarkerEvac" {

	Properties {
    	_Color ("Main Color", Color) = (1,1,1,0.5)
		_MainTex ("Main Texture", 2D) = "white" { }
		_OverTex ("Overlay Texture", 2D) = "white" { }
		_ScrollTex ("Scroll Texture", 2D) = "white" { }
	}

	SubShader {
		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
		ZWrite Off
		Blend SrcAlpha OneMinusSrcAlpha 
			
	    Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			
			fixed4 _Color;
			sampler2D _MainTex;
			sampler2D _OverTex;
			sampler2D _ScrollTex;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    			float2 uv1 : TEXCOORD1;
    		 	float4 color : COLOR;
			};
			
			float4 _MainTex_ST;
			float4 _OverTex_ST;
			float4 _ScrollTex_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.uv1 = TRANSFORM_TEX (vertData.texcoord, _ScrollTex);
    			output.color = vertData.color * _Color;
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			half4 overColor = tex2D (_OverTex, input.uv);
    			half4 scrollColor = tex2D (_ScrollTex, input.uv1);
    			scrollColor.rgb *= input.color.rgb;
    			
    			half4 scrollframe = lerp(scrollColor, texColor, texColor.a);
    			half4 withOverlay = lerp(scrollframe, overColor, overColor.a * input.color.a);
    			
    			return withOverlay;
			}
			ENDCG
    	}
	}
} 