Shader "HelmetGlass" {
    Properties {
      	_MainTex ("Texture", 2D) = "white" {}
    	_Color ("Main Color", Color) = (1,1,1,1)
    	_SpecColor ("Specular Color", Color) = (0.5, 0.5, 0.5, 1)
    	_Shininess ("Shininess", Range (0.03, 1)) = 0.078125
     	_RimColor ("Rim Color", Color) = (0.5, 0.5, 0.5, 1)
   		_RimPower ("Rim Power", Range (0.1, 32)) = 1.0
    }
    
    SubShader {
		Tags {"Queue"="Transparent" "RenderType"="Transparent"}
		ZWrite Off
		Blend SrcAlpha OneMinusSrcAlpha 
		//Cull off		

		
		CGPROGRAM
		#pragma surface surf BlinnPhong
      
		struct Input {
		  	float2 uv_MainTex;
			float3 viewDir;
		};
      
		sampler2D _MainTex;
		float4 _Color;
		float _Shininess;
		float4 _RimColor;
		float _RimPower;
		
		void surf (Input IN, inout SurfaceOutput o) {
			float4 texColor = tex2D (_MainTex, IN.uv_MainTex);
		 	o.Albedo = texColor * _Color.rgb;
		  	half rim = 1.0 - saturate(dot (normalize(IN.viewDir), o.Normal));
			o.Specular = _Shininess;
		  	o.Emission = texColor.rgb * _Color.rgb * pow (rim, _RimPower);
		  	o.Alpha = rim + texColor.a;
		}
      	ENDCG
	} 
    Fallback "Diffuse"
  }
  