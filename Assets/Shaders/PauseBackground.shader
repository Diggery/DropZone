Shader "DropZone/Pause_Background" {

	Properties {
 		_MainTex ("Main Texture", 2D) = "white" { }
   		_FillColor ("Fill Color", Color) = (1,1,1,1)
   		_FrameColor ("Frame Color", Color) = (1,1,1,1)
   		_HiliteColor ("Hilite Color", Color) = (1,1,1,1)
   		
  		_ScrollTex ("Scroll Texture", 2D) = "white" { }
   		_ScrollColor ("Scroll Color", Color) = (1,1,1,1)
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
			fixed4 _FillColor;
			fixed4 _FrameColor;
			fixed4 _HiliteColor;
			
			sampler2D _ScrollTex;
			fixed4 _ScrollColor;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    			float2 uv1 : TEXCOORD1;
    		 	float4 color : COLOR;
    		 	float4 scrPos;
			};
			
			float4 _MainTex_ST;
			float4 _ScrollTex_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.color = vertData.color;
    			output.scrPos = ComputeScreenPos(output.pos);
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 mainTexColor = tex2D (_MainTex, input.uv);
    			
    			half4 fillColor = _FillColor;
     			fillColor.a *= mainTexColor.r;
     			
   				half4 frameColor = _FrameColor;
      			frameColor.a *= mainTexColor.g;
   				
   				half4 hiliteColor = _HiliteColor;
      			hiliteColor.a *= mainTexColor.b;
    			
      			float2 scrollUV = (input.scrPos.xy/input.scrPos.w); 	
      			scrollUV.x += _Time * -0.25f;		 			
      			scrollUV.x += _Time * -0.1f;		 			
      			scrollUV = TRANSFORM_TEX (scrollUV, _ScrollTex);

    			half4 scrollTex = tex2D (_ScrollTex, scrollUV);
    			half4 scrollMask = tex2D (_ScrollTex, input.uv);
  				half4 scrollColor = _ScrollColor * scrollTex.g * scrollMask.r;
    			
    			
    			half4 fill_and_frame = lerp(fillColor, frameColor, frameColor.a);
    			half4 addHilite = lerp(fill_and_frame, hiliteColor, hiliteColor.a);
    		    half4 finalColor = addHilite + scrollColor;

    			return finalColor;
			}
			ENDCG
    	}
	}
} 