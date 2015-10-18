Shader "DropZone/EvacBeam" {

	Properties {
    	_Color ("Main Color", Color) = (1,1,1,0.5)
		_MainTex ("Main Texture", 2D) = "white" { }
		_ScrollAmount ("Scroll Amount", Float) = 0

	}

	SubShader {
		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
		ZWrite Off
		Blend One One 
			
	    Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			
			fixed4 _Color;
			sampler2D _MainTex;
			float _ScrollAmount;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    		 	float4 color : COLOR;
			};
			
			float4 _MainTex_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.color = vertData.color * _Color;
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			half4 scrollColor1 = tex2D (_MainTex, input.uv + half2(0.0f, -_ScrollAmount));
    			half4 scrollColor2 = tex2D (_MainTex, input.uv + half2(_ScrollAmount * 0.10f, _ScrollAmount * -0.15f));
    			half4 scrollColor3 = tex2D (_MainTex, input.uv + half2(_ScrollAmount * -0.10f, -_ScrollAmount * 0.1f));
    			half4 white = half4(1, 1, 1, 1);
				half4 finalColor = (white * scrollColor1.r * scrollColor2.g + scrollColor3.b) * texColor.a;
    			return finalColor * _Color;
			}
			ENDCG
    	}
	}
} 