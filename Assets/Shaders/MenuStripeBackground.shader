Shader "DropZone/Pause_Background" {

	Properties {
 		_MainTex ("Texture", 2D) = "white" { }
   		_FillColor ("Frame Color", Color) = (1,1,1,1)
    	_StripeColor ("Stripe Color", Color) = (1,1,1,1)
 		_StripeTex ("Stripe", 2D) = "white" { }
  		_Scroll ("Scroll Amount", Range (0.0, 1.0)) = 1.0
   		
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
			sampler2D _StripeTex;
			fixed4 _FrameColor;
			fixed4 _StripeColor;
			fixed4 _Scroll;
			
			struct vertex2fragment {
   			 	float4 pos : SV_POSITION;
    			float2 uv : TEXCOORD0;
    			float2 uv1 : TEXCOORD1;
    		 	float4 color : COLOR;
    		 	float4 scrPos;
			};
			
			float4 _MainTex_ST;
			float4 _StripeTex_ST;
			
			vertex2fragment vert (appdata_full vertData) {
			    vertex2fragment output;
    			output.pos = mul (UNITY_MATRIX_MVP, vertData.vertex);
    			output.uv = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.uv1 = TRANSFORM_TEX (vertData.texcoord, _MainTex);
    			output.color = vertData.color;
    			output.scrPos = ComputeScreenPos(output.pos);
   			    return output;
			}
			
			half4 frag (vertex2fragment input) : COLOR {
    			half4 texColor = tex2D (_MainTex, input.uv);
    			
    			half4 frameColor = _FrameColor;
    			frameColor.a = frameColor.a * texColor.r;
    			
      			float2 uv2 = (input.scrPos.xy/input.scrPos.w); 	
      			uv2.x += _Time * -0.25f;		 			
      			uv2 = TRANSFORM_TEX (uv2, _StripeTex);

    			half4 stripeTex = tex2D (_StripeTex, uv2);
  				half4 stripeColor = _StripeColor;
    			stripeColor.a *= stripeTex.r * texColor.b;   
    			
    			    			
    			half4 fill_and_frame = lerp(stripeColor, frameColor, frameColor.a);
    		    half4 finalColor = fill_and_frame;

    			return finalColor;
			}
			ENDCG
    	}
	}
} 