Shader "DropZone/UnitView_Image" {

	Properties {
    	_Color ("Main Color", Color) = (1,1,1,0.5)
		_MainTex ("Texture", 2D) = "white" { }
		_MaskTex ("Mask", 2D) = "white" { }
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
			
			fixed4 _Color;
			sampler2D _MainTex;
			sampler2D _MaskTex;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    		 	float4 color : COLOR;
			};
			
			float4 _MainTex_ST;
			float4 _MaskTex_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.color = vertData.color;
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			half4 maskColor = tex2D (_MaskTex, input.uv);
    			float2 scrollUV = input.uv; 	
      			scrollUV.y += _Time * -1.0f;
    			half4 interlaceColor = tex2D (_MaskTex, scrollUV);
    			
    			texColor.a = texColor.a * maskColor.g * _Color.a * clamp(interlaceColor.a + maskColor.r, 0, 1);
    			
    			return texColor;
			}
			ENDCG
    	}
	}
} 