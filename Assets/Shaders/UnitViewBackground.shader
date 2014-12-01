Shader "DropZone/UnitView_Background" {

	Properties {
		_MainTex ("Texture", 2D) = "white" { }
    	_FrameColor ("Frame Color", Color) = (1,1,1,1)
    	_FillColor ("Fill Color", Color) = (1,1,1,1)
    	_HiLiteColor ("HiLite Color", Color) = (1,1,1,1)
	}

	SubShader {
		Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
		LOD 100
	
		ZWrite Off
		Blend SrcAlpha OneMinusSrcAlpha 
		
	    Pass {
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			
			sampler2D _MainTex;
			fixed4 _FrameColor;
			fixed4 _FillColor;
			fixed4 _HiLiteColor;
			
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
    			output.color = vertData.color;
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			
    			half4 frameColor = _FrameColor;
    			frameColor.a = frameColor.a * texColor.r;
    			
    			half4 fillColor = _FillColor;
    			fillColor.a =  fillColor.a * texColor.g;    			
    			
    			half4 hiLiteColor = _HiLiteColor;
    			hiLiteColor.a =  hiLiteColor.a * texColor.b;    			
    			    			
    			half4 fill_and_frame = lerp(fillColor, frameColor, frameColor.a);
    		    half4 finalColor = lerp(fill_and_frame, hiLiteColor, hiLiteColor.a);

    			return finalColor;
			}
			ENDCG
    	}
	}
} 