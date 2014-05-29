


Shader "Unlit/ShieldEffect" {

	Properties {
    	_Color ("Main Color", Color) = (1,1,1,0.5)
    	_Flash ("Flash Color", Color) = (0,0,0,0)
		_MainTex ("Base Texture", 2D) = "white" { }
		_TilePattern ("Tile Pattern", 2D) = "white" { }
		_Overlay ("Overlay Texture", 2D) = "white" { }
	}

	SubShader {
		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
		LOD 100
	
		ZWrite Off
		Blend One One 
		cull off
		
	    Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			
			fixed4 _Color;
			fixed4 _Flash;
			sampler2D _MainTex;
			sampler2D _TilePattern;
			sampler2D _Overlay;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    			float2 uv1 : TEXCOORD1;
    			float2 uv2 : TEXCOORD2;
    		 	float4 color : COLOR;
			};
			
			float4 _MainTex_ST;
			float4 _TilePattern_ST;
			float4 _Overlay_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.uv1 = TRANSFORM_TEX (vertData.texcoord1, _TilePattern);
    			output.uv2 = TRANSFORM_TEX (vertData.texcoord, _Overlay);
    			
    			output.color = vertData.color;
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			half4 overlayColor = tex2D (_Overlay, input.uv2);
    			float time = _Time;
    			float sinTime = _SinTime;
    			half2 scrollAmount = half2(input.uv1.x + (sinTime * 0.5), (input.uv1.y - (time * 3)) * (0.5 + sinTime * 0.2));
    			half4 tileColor = tex2D (_TilePattern, scrollAmount);
    			half4 baseColor = (input.color * (texColor + tileColor) * texColor.a) + (texColor.a * _Flash);
    			
    			half4 finalColor = lerp(baseColor, overlayColor, overlayColor.a);
    			return finalColor * _Color;
			}
			ENDCG
    	}
	}
} 