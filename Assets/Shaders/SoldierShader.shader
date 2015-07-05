Shader "DropZone/Soldier" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
    	_Color ("Main Color", Color) = (1,1,1,1)
    	_FlashColor ("Flash Color", Color) = (1,0,0,1)
    	_HitPosition ("Hit Position", Vector) = (0,0,0)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MainTex;
		float4 _Color;
		float4 _FlashColor;
		float3 _HitPosition;
		
		struct Input {
			float2 uv_MainTex;
			float3 worldPos;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
			float falloff = 1 -  length(IN.worldPos - _HitPosition);
			falloff *= 3.0f + c.a;
			falloff += -1.1f ;
			o.Emission = (_FlashColor.rgb * clamp (falloff, 0, 1));
			
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
