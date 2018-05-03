Shader "Holistic/PackedPractice" {
  
  Properties {
       _myColour ("Example Colour", Color) = (1,1,1,1)
      //  _transparency ("Transparency", Range (0, 1)) = 1
  }
  
  SubShader {
    
    CGPROGRAM
      #pragma surface surf Lambert

      struct Input {
        float2 uvMainTex;
      };

      fixed4 _myColour;
      // fixed _transparency;
      
      void surf (Input IN, inout SurfaceOutput o){
          o.Albedo = _myColour.bgr;
          // o.Alpha = _transparency;
          // o.Alpha = _myColour.w;
      }
    
    ENDCG
  }
  
  FallBack "Diffuse"
}

