Shader "DropZone/Soldier" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
    	_Color ("Main Color", Color) = (1,1,1,1)
    	_HitColor ("Hit Color", Color) = (1,0,0,1)
    	_HitColorFade ("Hit Fade", Range (0.0, 1.0)) = 0.0
    	_HealColor ("Heal Color", Color) = (0,1,0,1)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MainTex;
		float4 _Color;
		float4 _HitColor;
		float _HitColorFade;
		float4 _HealColor;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;//lerp(c, _HitColor.rgb, _HitColor.a);
			o.Alpha = c.a;
			o.Emission = _HitColor.rgb * _HitColorFade;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
